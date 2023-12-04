module lab7(
    input clk,
    input rst,        // BTNC: active high reset
    input _play,      // SW0: Play/Pause
    input _start,     // SW1: Start/Exit
    input _mute,      // SW14: Mute
    input _mode,      // SW15: Mode
    input _volUP,     // BTNU: Vol up
    input _volDOWN,   // BTND: Vol down
    inout PS2_DATA,   // Keyboard I/O
    inout PS2_CLK,    // Keyboard I/O
    output [15:0] _led,       // LED: [15:9] key & [4:0] volume
    output audio_mclk, // master clock
    output audio_lrck, // left-right clock
    output audio_sck,  // serial clock
    output audio_sdin, // serial audio data input
    output [6:0] DISPLAY,    
    output [3:0] DIGIT
    );        
    
    parameter LEN = 512; // 

    parameter [1:0] DEMONSTRATE = 2'b00;
    parameter [1:0] PIANO = 2'b01;
    parameter [1:0] HELPER = 2'b10;

    // Internal Signal
    wire [15:0] audio_in_left, audio_in_right;

    wire [11:0] ibeatNum;               // Beat counter
    wire [31:0] freqL, freqR;           // Raw frequency, produced by music module
    wire [31:0] freq_outL, freq_outR;   // Processed frequency
    wire [21:0] note_div_left, note_div_right;    // CNT_MAX, adapted to the clock rate of Basys3

    wire [2:0] volume; // volume of note

    wire [511:0] key_down;
    wire [8:0] last_change;
    wire been_ready;

    wire [31:0] key_freq;

    wire [7:0] score;
    wire [19:0] nums;

    wire [1:0] state;
    wire single_key_down; // whether only 1 key down in key_down[511:0]
    wire still_playing; // whether song's still playing

    assign still_playing = (ibeatNum < LEN) ? 1'b1 : 1'b0;
    assign single_key_down = (key_down == 512'b1 << last_change) ? 1'b1 : 1'b0;
    assign state = (_mode == 1'b1) ? DEMONSTRATE : 
                        (_start == 1'b1) ? HELPER : PIANO;

    // clkDiv22, clkDiv13
    wire clkDiv22, clkDiv13;
    clock_divider #(.n(22)) clock_22(.clk(clk), .clk_div(clkDiv22)); // for audio
    clock_divider #(.n(13)) clock_13(.clk(clk), .clk_div(clkDiv13)); // for debounce, one_pulse, 7-seg

    // calculate nums
    nums_calculator nums_calculator_00(
        .state(state),
        .score(score),
        .still_playing(still_playing),
        .single_key_down(single_key_down),
        .key_freq(key_freq),
        .freqR(freqR),
        .volume(volume),
        .led(_led),
        .nums(nums)
    );

    // SevenSegment
    SevenSegment SevenSegment_00(
        .display(DISPLAY),
        .digit(DIGIT),
        .nums(nums),
        .rst(rst),
        .clk(clk)
    );

    // KeyboardDecoder
    KeyboardDecoder KeyboardDecoder_00(
        .rst(rst),
        .clk(clk),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(been_ready)
    );

    // calculate frequency mapped to key
    // [in] key
    // [out] key_freq
    key_freq_calculator key_freq_calc_00(
        .key(last_change),
        .key_freq(key_freq)
    );

    // calculate score
    score_calculator score_calculator_00(
        .clk(clk),
        .rst(rst),
        .state(state),
        .been_ready(been_ready),
        .single_key_down(single_key_down),
        .still_playing(still_playing),
        .key_freq(key_freq),
        .freqR(freqR),
        .score(score)
    );

    // Player Control
    // [in]  reset, clock, _play, _slow, _music, and _mode, state
    // [out] beat number
    player_control #(.LEN(LEN)) playerCtrl_00 ( 
        .clk(clkDiv22),
        .reset(rst),
        ._play(_play), 
        .state(state),
        .ibeat_out(ibeatNum)
    );

    // Music module
    // [in]  ibeatNum, state, _play
    // [out] left & right raw frequency
    music_example music_00 (
        .ibeatNum(ibeatNum),
        .state(state),
        ._play(_play),
        .freqL(freqL),
        .freqR(freqR)
    );

    // volume controller
    // [in] clkDiv13, rst, mute, volUP, volDOWN
    // [out] volume
    volume_control volume_control_00(
        .clk(clkDiv13), 
        .rst(rst),
        .mute(_mute),
        .volUP(_volUP),
        .volDOWN(_volDOWN),
        .volume_out(volume)
    );

    // calculate freq_outL and freq_outR
    // [in] state, key_down, key_freq
    // [out] freq_outL, freq_outR
    freq_out_calculator freq_out_calculator_00(
        .state(state),
        .key_freq(key_freq),
        .still_playing(still_playing),
        .single_key_down(single_key_down),
        .freqL(freqL),
        .freqR(freqR),
        .freq_outL(freq_outL),
        .freq_outR(freq_outR)
    );

    assign note_div_left = 32'd50_000_000 / freq_outL;
    assign note_div_right = 32'd50_000_000 / freq_outR;

    // Note generation
    // [in]  processed frequency
    // [out] audio wave signal (using square wave here)
    note_gen noteGen_00(
        .clk(clk), 
        .rst(rst), 
        .volume(volume),
        .note_div_left(note_div_left), 
        .note_div_right(note_div_right), 
        .audio_left(audio_in_left),     // left sound audio
        .audio_right(audio_in_right)    // right sound audio
    );

    // Speaker controller
    speaker_control sc(
        .clk(clk), 
        .rst(rst), 
        .audio_in_left(audio_in_left),      // left channel audio data input
        .audio_in_right(audio_in_right),    // right channel audio data input
        .audio_mclk(audio_mclk),            // master clock
        .audio_lrck(audio_lrck),            // left-right clock
        .audio_sck(audio_sck),              // serial clock
        .audio_sdin(audio_sdin)             // serial audio data input
    );

endmodule
