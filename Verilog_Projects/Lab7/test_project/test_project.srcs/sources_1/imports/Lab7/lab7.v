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


module nums_calculator(
    input [1:0] state,
    input [7:0] score,
    input still_playing,
    input single_key_down,
    input [31:0] key_freq, // freq from keyboard
    input [31:0] freqR,    // freq from music melody part
    input [2:0] volume,
    output [15:0] led,
    output reg [19:0] nums
);

parameter [1:0] DEMONSTRATE = 2'b00;
parameter [1:0] PIANO = 2'b01;
parameter [1:0] HELPER = 2'b10;

parameter [31:0] c3 = 32'd131; 
parameter [31:0] d3 = 32'd147;   
parameter [31:0] e3 = 32'd165;   
parameter [31:0] f3 = 32'd174;   
parameter [31:0] g3 = 32'd196;   
parameter [31:0] a3 = 32'd220;
parameter [31:0] b3 = 32'd247;
parameter [31:0] SILENCE = 32'd50_000_000; // silence

parameter [4:0] A_NUM = 5'd10;
parameter [4:0] B_NUM = 5'd11;
parameter [4:0] C_NUM = 5'd12;
parameter [4:0] D_NUM = 5'd13;
parameter [4:0] E_NUM = 5'd14;
parameter [4:0] F_NUM = 5'd15;
parameter [4:0] G_NUM = 5'd16;
parameter [4:0] DASH_NUM = 5'd17;

reg [31:0] freq;
reg [4:0] freq_char, freq_num; // e.g., freq=G5, then freq_char=G_NUM, freq_num=5
reg [6:0] led_left; // led[15:9]
reg [4:0] led_right; // led[4:0]

assign led = {led_left, 4'b0000, led_right};

// comb: freq
always @(*) begin
    freq = SILENCE;

    case (state)
        DEMONSTRATE: begin
            freq = freqR;
        end
        PIANO: begin
            if (single_key_down) freq = key_freq;
            else freq = SILENCE;
        end
        HELPER: begin
            if (still_playing) freq = freqR;
            else freq = (c3 << 2); // Hardcoded last note: C5
        end
    endcase
end

// Comb.: freq_char, freq_num
always @(*) begin
    // display -- by default
    freq_char = DASH_NUM;
    freq_num = DASH_NUM;

    // freq_num
    if (freq >= c3 && freq <= b3) freq_num = 5'd3;
    else if (freq >= (c3 << 1) && freq <= (b3 << 1)) freq_num = 5'd4;
    else if (freq >= (c3 << 2) && freq <= (b3 << 2)) freq_num = 5'd5;

    // freq_char
    if (freq == c3 || freq == (c3 << 1) || freq == (c3 << 2)) freq_char = C_NUM;
    else if (freq == d3 || freq == (d3 << 1) || freq == (d3 << 2)) freq_char = D_NUM;
    else if (freq == e3 || freq == (e3 << 1) || freq == (e3 << 2)) freq_char = E_NUM;
    else if (freq == f3 || freq == (f3 << 1) || freq == (f3 << 2)) freq_char = F_NUM;
    else if (freq == g3 || freq == (g3 << 1) || freq == (g3 << 2)) freq_char = G_NUM;
    else if (freq == a3 || freq == (a3 << 1) || freq == (a3 << 2)) freq_char = A_NUM;
    else if (freq == b3 || freq == (b3 << 1) || freq == (b3 << 2)) freq_char = B_NUM;
end

// comb: led_left, nums
always @(*) begin
    nums = {DASH_NUM, DASH_NUM, DASH_NUM, DASH_NUM};
    led_left = 7'b0_000_000;

    case (state)
        DEMONSTRATE: begin
            nums = {DASH_NUM, DASH_NUM, freq_char, freq_num};
        end
        PIANO: begin
            nums = {DASH_NUM, DASH_NUM, freq_char, freq_num};
        end
        HELPER: begin
            nums[19:15] = score / 10;
            nums[14:10] = score % 10;
            nums[9:0] = {freq_char, freq_num};
            
            case (freq_char)
                C_NUM: led_left[6] = 1'b1;
                D_NUM: led_left[5] = 1'b1;
                E_NUM: led_left[4] = 1'b1;
                F_NUM: led_left[3] = 1'b1;
                G_NUM: led_left[2] = 1'b1;
                A_NUM: led_left[1] = 1'b1;
                B_NUM: led_left[0] = 1'b1;
            endcase
            if (!still_playing) led_left = 7'b1_111_111;
        end
    endcase
end

// comb: led_right
always @(*) begin
    led_right = 5'b00_000;
    case (volume)
        3'd1: led_right = 5'b00_001;
        3'd2: led_right = 5'b00_011;
        3'd3: led_right = 5'b00_111;
        3'd4: led_right = 5'b01_111;
        3'd5: led_right = 5'b11_111;
    endcase
end

endmodule


module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit,
	input wire [19:0] nums, // 4 5-bit nums
	input wire rst,
	input wire clk
);

    parameter [4:0] A_NUM = 5'd10;
    parameter [4:0] B_NUM = 5'd11;
    parameter [4:0] C_NUM = 5'd12;
    parameter [4:0] D_NUM = 5'd13;
    parameter [4:0] E_NUM = 5'd14;
    parameter [4:0] F_NUM = 5'd15;
    parameter [4:0] G_NUM = 5'd16;
    parameter [4:0] DASH_NUM = 5'd17;
    
    reg [15:0] clk_divider;
    reg [4:0] display_num;
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		clk_divider <= 15'b0;
    	end else begin
    		clk_divider <= clk_divider + 15'b1;
    	end
    end
    
    always @ (posedge clk_divider[15], posedge rst) begin
    	if (rst) begin
    		display_num <= 5'b00000;
    		digit <= 4'b1111;
    	end else begin
    		case (digit)
    			4'b1110 : begin
                    display_num <= nums[9:5];
                    digit <= 4'b1101;
                end
    			4'b1101 : begin
                    display_num <= nums[14:10];
                    digit <= 4'b1011;
                end
    			4'b1011 : begin
                    display_num <= nums[19:15];
                    digit <= 4'b0111;
                end
    			4'b0111 : begin
                    display_num <= nums[4:0];
                    digit <= 4'b1110;
                end
    			default : begin
                    display_num <= nums[4:0];
                    digit <= 4'b1110;
                end				
    		endcase
    	end
    end
    
    always @ (*) begin
    	case (display_num)
    		    0 : display = 7'b1000000;	// 0
				1 : display = 7'b1111001;   // 1
				2 : display = 7'b0100100;   // 2
				3 : display = 7'b0110000;   // 3                                          
				4 : display = 7'b0011001;   // 4                                               
				5 : display = 7'b0010010;   // 5                                              
				6 : display = 7'b0000010;   // 6
				7 : display = 7'b1111000;   // 7
				8 : display = 7'b0000000;   // 8
				9 : display = 7'b0010000;	// 9
				A_NUM: display = 7'b0_001_000; // A
				B_NUM: display = 7'b0_000_011; // b
				C_NUM: display = 7'b1_000_110; // C
				D_NUM: display = 7'b0_100_001; // d
				E_NUM: display = 7'b0_000_110; // E
				F_NUM: display = 7'b0_001_110; // F
				G_NUM: display = 7'b0_010_000; // g
				DASH_NUM: display = 7'b0_111_111; // Dash
				default : display = 7'b1111111;
    	endcase
    end
    
endmodule


module key_freq_calculator(
    input [8:0] key,
    output reg [31:0] key_freq
);
    parameter [31:0] c3 = 32'd131; 
    parameter [31:0] d3 = 32'd147;   
    parameter [31:0] e3 = 32'd165;   
    parameter [31:0] f3 = 32'd174;   
    parameter [31:0] g3 = 32'd196;   
    parameter [31:0] a3 = 32'd220;
    parameter [31:0] b3 = 32'd247;
    parameter [31:0] SILENCE = 32'd50_000_000; // silence
    parameter [8:0] KEY_CODES [0:20] = {
        9'b0_0001_0101,	// 0 => Q (15)
        9'b0_0001_1101,	// 1 => W (1D)
        9'b0_0010_0100,	// 2 => E (24)
        9'b0_0010_1101,	// 3 => R (2D)
        9'b0_0010_1100, // 4 => T (2C)
        9'b0_0011_0101, // 5 => Y (35)
        9'b0_0011_1100, // 6 => U (3C)

        9'b0_0001_1100,	// 7 => A (1C)
        9'b0_0001_1011,	// 8 => S (1B)
        9'b0_0010_0011, // 9 => D (23)
        9'b0_0010_1011, // 10 => F (2B)
        9'b0_0011_0100, // 11 => G (34)
        9'b0_0011_0011, // 12 => H (33)
        9'b0_0011_1011, // 13 => J (3B)
	
        9'b0_0001_1010, // 14 => Z (1A)
        9'b0_0010_0010, // 15 => X (22)
        9'b0_0010_0001, // 16 => C (21)
        9'b0_0010_1010, // 17 => V (2A)
        9'b0_0011_0010, // 18 => B (32)
        9'b0_0011_0001, // 19 => N (31)
        9'b0_0011_1010 // 20 => M (3A)
	};

	always @ (*) begin
		case (key)
            // 5
			KEY_CODES[00] : key_freq = c3 << 2;
			KEY_CODES[01] : key_freq = d3 << 2;
			KEY_CODES[02] : key_freq = e3 << 2;
			KEY_CODES[03] : key_freq = f3 << 2;
			KEY_CODES[04] : key_freq = g3 << 2;
			KEY_CODES[05] : key_freq = a3 << 2;
			KEY_CODES[06] : key_freq = b3 << 2;

            // 4
			KEY_CODES[07] : key_freq = c3 << 1;
			KEY_CODES[08] : key_freq = d3 << 1;
			KEY_CODES[09] : key_freq = e3 << 1;
			KEY_CODES[10] : key_freq = f3 << 1;
			KEY_CODES[11] : key_freq = g3 << 1;
			KEY_CODES[12] : key_freq = a3 << 1;
			KEY_CODES[13] : key_freq = b3 << 1;

            // 3
			KEY_CODES[14] : key_freq = c3;
			KEY_CODES[15] : key_freq = d3;
			KEY_CODES[16] : key_freq = e3;
			KEY_CODES[17] : key_freq = f3;
			KEY_CODES[18] : key_freq = g3;
			KEY_CODES[19] : key_freq = a3;
			KEY_CODES[20] : key_freq = b3;

			default : key_freq = SILENCE; // silence
		endcase
	end

endmodule


module score_calculator(
    input clk,
    input rst,
    input [1:0] state,
    input been_ready,
    input single_key_down,
    input still_playing,
    input [31:0] key_freq,
    input [31:0] freqR,
    output reg [7:0] score
);

parameter [1:0] DEMONSTRATE = 2'b00;
parameter [1:0] PIANO = 2'b01;
parameter [1:0] HELPER = 2'b10;

parameter [31:0] SILENCE = 32'd50_000_000; // silence

reg [7:0] next_score;

always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
        score <= 0;
    end
    else begin
        score <= next_score;
    end
end

always @(*) begin
    next_score = score;

    case (state)    
        DEMONSTRATE: begin
            next_score = 0;
        end
        PIANO: begin
            next_score = 0;
        end
        HELPER: begin
            if ((been_ready && single_key_down)
                && (key_freq != SILENCE && still_playing)
                && (key_freq == freqR))
                next_score = (score == 8'd99) ? 8'd99 : score + 1'b1;
        end
    endcase
end

endmodule


module player_control (
	input clk, // clkDiv22
	input reset, 
	input _play, 
	input [1:0] state,
	output reg [11:0] ibeat_out
);

	// per song: 8 measures
	// per measure: 4 beats
	// per beat: 16 ibeat
	// total: 8*4*16 = 2^9 = 512 ibeats
	parameter LEN = 4096; // we can change this to 512 in module instantiation

	parameter [1:0] DEMONSTRATE = 2'b00;
	parameter [1:0] PIANO = 2'b01;
	parameter [1:0] HELPER = 2'b10;

    reg [11:0] ibeat, next_ibeat; // for DEMONSTRATE
	reg [11:0] ibeat2, next_ibeat2; // for HELPER

	always @(posedge clk, posedge reset) begin
		if (reset) begin
			ibeat <= 0;
			ibeat2 <= 0;
		end else begin
			ibeat <= next_ibeat;
			ibeat2 <= next_ibeat2;
		end
	end

	always @* begin
		next_ibeat = ibeat;
		next_ibeat2 = ibeat2;

		case (state)
			DEMONSTRATE: begin
				if (_play == 'b1) next_ibeat = (ibeat + 1 < LEN) ? ibeat + 1 : 0; // repeat
				else next_ibeat = ibeat;
				next_ibeat2 = 0; // prepare for helper state
			end
			PIANO: begin
				next_ibeat2 = 0; // prepare for helper state
			end
			HELPER: begin
				// stops after last note (i.e., stops at LEN, so that we can detect song end)
				next_ibeat2 = (ibeat2 < LEN) ? ibeat2 + 1 : LEN;
			end
		endcase
	end

	always @(*) begin
		ibeat_out = 0;

		case (state)
			DEMONSTRATE: ibeat_out = ibeat;
			HELPER: ibeat_out = ibeat2;
		endcase
	end

endmodule


module music_example (
	input [11:0] ibeatNum,
    input [1:0] state,
    input _play,
	output reg [31:0] freqL,
    output reg [31:0] freqR
);
    // 4
    parameter [31:0] c  = 32'd262;
    parameter [31:0] d  = 32'd294;
    parameter [31:0] e  = 32'd330;
    parameter [31:0] f  = 32'd348;
    parameter [31:0] g  = 32'd392;   
    parameter [31:0] b  = 32'd494;   
    // 5
    parameter [31:0] hc = 32'd524;   
    parameter [31:0] hd = 32'd588;   
    parameter [31:0] he = 32'd660;   
    parameter [31:0] hf = 32'd696;   
    parameter [31:0] hg = 32'd784;   
    // silence
    parameter [31:0] sil = 32'd50_000_000; 

    parameter [1:0] DEMONSTRATE = 2'b00;
	parameter [1:0] PIANO = 2'b01;
	parameter [1:0] HELPER = 2'b10;

    reg [31:0] toneL; // accompany
    reg [31:0] toneR; // melody

    always @(*) begin
        // silence by default
        freqL = sil;
        freqR = sil;

        case (state)
            DEMONSTRATE: begin
                if (_play == 1'b1) begin
                    freqL = toneL;
                    freqR = toneR;
                end
            end
            HELPER: begin
                freqL = toneL;
                freqR = toneR;
            end
        endcase
    end

    always @* begin
        case(ibeatNum)
            // --- Measure 1 ---
            12'd0: toneR = hg;        12'd1: toneR = hg; // HG (half-beat)
            12'd2: toneR = hg;        12'd3: toneR = hg;
            12'd4: toneR = hg;        12'd5: toneR = hg;
            12'd6: toneR = hg;        12'd7: toneR = hg;
            12'd8: toneR = he;        12'd9: toneR = he; // HE (half-beat)
            12'd10: toneR = he;       12'd11: toneR = he;
            12'd12: toneR = he;       12'd13: toneR = he;
            12'd14: toneR = he;       12'd15: toneR = sil; // (Short break for repetitive notes)

            12'd16: toneR = he;       12'd17: toneR = he; // HE (one-beat)
            12'd18: toneR = he;       12'd19: toneR = he;
            12'd20: toneR = he;       12'd21: toneR = he;
            12'd22: toneR = he;       12'd23: toneR = he;
            12'd24: toneR = he;       12'd25: toneR = he;
            12'd26: toneR = he;       12'd27: toneR = he;
            12'd28: toneR = he;       12'd29: toneR = he;
            12'd30: toneR = he;       12'd31: toneR = he;

            12'd32: toneR = hf;       12'd33: toneR = hf; // HF (half-beat)
            12'd34: toneR = hf;       12'd35: toneR = hf;
            12'd36: toneR = hf;       12'd37: toneR = hf;
            12'd38: toneR = hf;       12'd39: toneR = hf;
            12'd40: toneR = hd;       12'd41: toneR = hd; // HD (half-beat)
            12'd42: toneR = hd;       12'd43: toneR = hd;
            12'd44: toneR = hd;       12'd45: toneR = hd;
            12'd46: toneR = hd;       12'd47: toneR = sil; // (Short break for repetitive notes)

            12'd48: toneR = hd;       12'd49: toneR = hd; // HD (one-beat)
            12'd50: toneR = hd;       12'd51: toneR = hd;
            12'd52: toneR = hd;       12'd53: toneR = hd;
            12'd54: toneR = hd;       12'd55: toneR = hd;
            12'd56: toneR = hd;       12'd57: toneR = hd;
            12'd58: toneR = hd;       12'd59: toneR = hd;
            12'd60: toneR = hd;       12'd61: toneR = hd;
            12'd62: toneR = hd;       12'd63: toneR = hd;

            // --- Measure 2 ---
            12'd64: toneR = hc;       12'd65: toneR = hc; // HC (half-beat)
            12'd66: toneR = hc;       12'd67: toneR = hc;
            12'd68: toneR = hc;       12'd69: toneR = hc;
            12'd70: toneR = hc;       12'd71: toneR = hc;
            12'd72: toneR = hd;       12'd73: toneR = hd; // HD (half-beat)
            12'd74: toneR = hd;       12'd75: toneR = hd;
            12'd76: toneR = hd;       12'd77: toneR = hd;
            12'd78: toneR = hd;       12'd79: toneR = hd;

            12'd80: toneR = he;       12'd81: toneR = he; // HE (half-beat)
            12'd82: toneR = he;       12'd83: toneR = he;
            12'd84: toneR = he;       12'd85: toneR = he;
            12'd86: toneR = he;       12'd87: toneR = he;
            12'd88: toneR = hf;       12'd89: toneR = hf; // HF (half-beat)
            12'd90: toneR = hf;       12'd91: toneR = hf;
            12'd92: toneR = hf;       12'd93: toneR = hf;
            12'd94: toneR = hf;       12'd95: toneR = hf;

            12'd96: toneR = hg;       12'd97: toneR = hg; // HG (half-beat)
            12'd98: toneR = hg;       12'd99: toneR = hg;
            12'd100: toneR = hg;      12'd101: toneR = hg;
            12'd102: toneR = hg;      12'd103: toneR = sil; // (Short break for repetitive notes)
            12'd104: toneR = hg;      12'd105: toneR = hg; // HG (half-beat)
            12'd106: toneR = hg;      12'd107: toneR = hg;
            12'd108: toneR = hg;      12'd109: toneR = hg;
            12'd110: toneR = hg;      12'd111: toneR = sil; // (Short break for repetitive notes)

            12'd112: toneR = hg;      12'd113: toneR = hg; // HG (one-beat)
            12'd114: toneR = hg;      12'd115: toneR = hg;
            12'd116: toneR = hg;      12'd117: toneR = hg;
            12'd118: toneR = hg;      12'd119: toneR = hg;
            12'd120: toneR = hg;      12'd121: toneR = hg;
            12'd122: toneR = hg;      12'd123: toneR = hg;
            12'd124: toneR = hg;      12'd125: toneR = hg;
            12'd126: toneR = hg;      12'd127: toneR = sil; // (Short break for repetitive notes)

            // --- Measure 3 ---
            12'd128: toneR = hg;      12'd129: toneR = hg; // HG (half-beat)
            12'd130: toneR = hg;      12'd131: toneR = hg;
            12'd132: toneR = hg;      12'd133: toneR = hg;
            12'd134: toneR = hg;      12'd135: toneR = hg;
            12'd136: toneR = he;      12'd137: toneR = he; // HE (half-beat)
            12'd138: toneR = he;      12'd139: toneR = he;
            12'd140: toneR = he;      12'd141: toneR = he;
            12'd142: toneR = he;      12'd143: toneR = sil; // (Short break for repetitive notes)

            12'd144: toneR = he;      12'd145: toneR = he; // HE (one-beat)
            12'd146: toneR = he;      12'd147: toneR = he;
            12'd148: toneR = he;      12'd149: toneR = he;
            12'd150: toneR = he;      12'd151: toneR = he;
            12'd152: toneR = he;      12'd153: toneR = he;
            12'd154: toneR = he;      12'd155: toneR = he;
            12'd156: toneR = he;      12'd157: toneR = he;
            12'd158: toneR = he;      12'd159: toneR = he;

            12'd160: toneR = hf;      12'd161: toneR = hf; // HF (half-beat)
            12'd162: toneR = hf;      12'd163: toneR = hf;
            12'd164: toneR = hf;      12'd165: toneR = hf;
            12'd166: toneR = hf;      12'd167: toneR = hf;
            12'd168: toneR = hd;      12'd169: toneR = hd; // HD (half-beat)
            12'd170: toneR = hd;      12'd171: toneR = hd;
            12'd172: toneR = hd;      12'd173: toneR = hd;
            12'd174: toneR = hd;      12'd175: toneR = sil; // (Short break for repetitive notes)

            12'd176: toneR = hd;      12'd177: toneR = hd; // HD (one-beat)
            12'd178: toneR = hd;      12'd179: toneR = hd;
            12'd180: toneR = hd;      12'd181: toneR = hd;
            12'd182: toneR = hd;      12'd183: toneR = hd;
            12'd184: toneR = hd;      12'd185: toneR = hd;
            12'd186: toneR = hd;      12'd187: toneR = hd;
            12'd188: toneR = hd;      12'd189: toneR = hd;
            12'd190: toneR = hd;      12'd191: toneR = hd;

            // --- Measure 4 ---
            12'd192: toneR = hc;      12'd193: toneR = hc; // HC (half-beat)
            12'd194: toneR = hc;      12'd195: toneR = hc;
            12'd196: toneR = hc;      12'd197: toneR = hc;
            12'd198: toneR = hc;      12'd199: toneR = hc;
            12'd200: toneR = he;      12'd201: toneR = he; // HE (half-beat)
            12'd202: toneR = he;      12'd203: toneR = he;
            12'd204: toneR = he;      12'd205: toneR = he;
            12'd206: toneR = he;      12'd207: toneR = he;

            12'd208: toneR = hg;      12'd209: toneR = hg; // HG (half-beat)
            12'd210: toneR = hg;      12'd211: toneR = hg;
            12'd212: toneR = hg;      12'd213: toneR = hg;
            12'd214: toneR = hg;      12'd215: toneR = sil; // (Short break for repetitive notes)
            12'd216: toneR = hg;      12'd217: toneR = hg; // HG (half-beat)
            12'd218: toneR = hg;      12'd219: toneR = hg;
            12'd220: toneR = hg;      12'd221: toneR = hg;
            12'd222: toneR = hg;      12'd223: toneR = hg;

            12'd224: toneR = he;      12'd225: toneR = he; // HE (half-beat)
            12'd226: toneR = he;      12'd227: toneR = he;
            12'd228: toneR = he;      12'd229: toneR = he;
            12'd230: toneR = he;      12'd231: toneR = sil; // (Short break for repetitive notes)
            12'd232: toneR = he;      12'd233: toneR = he; // HE (half-beat)
            12'd234: toneR = he;      12'd235: toneR = he;
            12'd236: toneR = he;      12'd237: toneR = he;
            12'd238: toneR = he;      12'd239: toneR = sil; // (Short break for repetitive notes)

            12'd240: toneR = he;      12'd241: toneR = he; // HE (one-beat)
            12'd242: toneR = he;      12'd243: toneR = he;
            12'd244: toneR = he;      12'd245: toneR = he;
            12'd246: toneR = he;      12'd247: toneR = he;
            12'd248: toneR = he;      12'd249: toneR = he;
            12'd250: toneR = he;      12'd251: toneR = he;
            12'd252: toneR = he;      12'd253: toneR = he;
            12'd254: toneR = he;      12'd255: toneR = he;

            // --- Measure 5 ---
            12'd256: toneR = hd;      12'd257: toneR = hd; // HD (half-beat)
            12'd258: toneR = hd;      12'd259: toneR = hd;
            12'd260: toneR = hd;      12'd261: toneR = hd;
            12'd262: toneR = hd;      12'd263: toneR = sil; // (Short break for repetitive notes)
            12'd264: toneR = hd;      12'd265: toneR = hd; // HD (half-beat)
            12'd266: toneR = hd;      12'd267: toneR = hd;
            12'd268: toneR = hd;      12'd269: toneR = hd;
            12'd270: toneR = hd;      12'd271: toneR = sil; // (Short break for repetitive notes)

            12'd272: toneR = hd;      12'd273: toneR = hd; // HD (half-beat)
            12'd274: toneR = hd;      12'd275: toneR = hd;
            12'd276: toneR = hd;      12'd277: toneR = hd;
            12'd278: toneR = hd;      12'd279: toneR = sil; // (Short break for repetitive notes)
            12'd280: toneR = hd;      12'd281: toneR = hd; // HD (half-beat)
            12'd282: toneR = hd;      12'd283: toneR = hd;
            12'd284: toneR = hd;      12'd285: toneR = hd;
            12'd286: toneR = hd;      12'd287: toneR = sil; // (Short break for repetitive notes)

            12'd288: toneR = hd;      12'd289: toneR = hd; // HD (half-beat)
            12'd290: toneR = hd;      12'd291: toneR = hd;
            12'd292: toneR = hd;      12'd293: toneR = hd;
            12'd294: toneR = hd;      12'd295: toneR = hd;
            12'd296: toneR = he;      12'd297: toneR = he; // HE (half-beat)
            12'd298: toneR = he;      12'd299: toneR = he;
            12'd300: toneR = he;      12'd301: toneR = he;
            12'd302: toneR = he;      12'd303: toneR = he;

            12'd304: toneR = hf;      12'd305: toneR = hf; // HF (one-beat)
            12'd306: toneR = hf;      12'd307: toneR = hf;
            12'd308: toneR = hf;      12'd309: toneR = hf;
            12'd310: toneR = hf;      12'd311: toneR = hf;
            12'd312: toneR = hf;      12'd313: toneR = hf;
            12'd314: toneR = hf;      12'd315: toneR = hf;
            12'd316: toneR = hf;      12'd317: toneR = hf;
            12'd318: toneR = hf;      12'd319: toneR = hf;

            // --- Measure 6 ---
            12'd320: toneR = he;      12'd321: toneR = he; // HE (half-beat)
            12'd322: toneR = he;      12'd323: toneR = he;
            12'd324: toneR = he;      12'd325: toneR = he;
            12'd326: toneR = he;      12'd327: toneR = sil; // (Short break for repetitive notes)
            12'd328: toneR = he;      12'd329: toneR = he; // HE (half-beat)
            12'd330: toneR = he;      12'd331: toneR = he;
            12'd332: toneR = he;      12'd333: toneR = he;
            12'd334: toneR = he;      12'd335: toneR = sil; // (Short break for repetitive notes)

            12'd336: toneR = he;      12'd337: toneR = he; // HE (half-beat)
            12'd338: toneR = he;      12'd339: toneR = he;
            12'd340: toneR = he;      12'd341: toneR = he;
            12'd342: toneR = he;      12'd343: toneR = sil; // (Short break for repetitive notes)
            12'd344: toneR = he;      12'd345: toneR = he; // HE (half-beat)
            12'd346: toneR = he;      12'd347: toneR = he;
            12'd348: toneR = he;      12'd349: toneR = he;
            12'd350: toneR = he;      12'd351: toneR = sil; // (Short break for repetitive notes)

            12'd352: toneR = he;      12'd353: toneR = he; // HE (half-beat)
            12'd354: toneR = he;      12'd355: toneR = he;
            12'd356: toneR = he;      12'd357: toneR = he;
            12'd358: toneR = he;      12'd359: toneR = he;
            12'd360: toneR = hf;      12'd361: toneR = hf; // HF (half-beat)
            12'd362: toneR = hf;      12'd363: toneR = hf;
            12'd364: toneR = hf;      12'd365: toneR = hf;
            12'd366: toneR = hf;      12'd367: toneR = hf;

            12'd368: toneR = hg;      12'd369: toneR = hg; // HG (one-beat)
            12'd370: toneR = hg;      12'd371: toneR = hg;
            12'd372: toneR = hg;      12'd373: toneR = hg;
            12'd374: toneR = hg;      12'd375: toneR = hg;
            12'd376: toneR = hg;      12'd377: toneR = hg;
            12'd378: toneR = hg;      12'd379: toneR = hg;
            12'd380: toneR = hg;      12'd381: toneR = hg;
            12'd382: toneR = hg;      12'd383: toneR = sil; // (Short break for repetitive notes)

            // --- Measure 7 ---
            12'd384: toneR = hg;      12'd385: toneR = hg; // HG (half-beat)
            12'd386: toneR = hg;      12'd387: toneR = hg;
            12'd388: toneR = hg;      12'd389: toneR = hg;
            12'd390: toneR = hg;      12'd391: toneR = hg;
            12'd392: toneR = he;      12'd393: toneR = he; // HE (half-beat)
            12'd394: toneR = he;      12'd395: toneR = he;
            12'd396: toneR = he;      12'd397: toneR = he;
            12'd398: toneR = he;      12'd399: toneR = sil; // (Short break for repetitive notes)

            12'd400: toneR = he;      12'd401: toneR = he; // HE (one-beat)
            12'd402: toneR = he;      12'd403: toneR = he;
            12'd404: toneR = he;      12'd405: toneR = he;
            12'd406: toneR = he;      12'd407: toneR = he;
            12'd408: toneR = he;      12'd409: toneR = he;
            12'd410: toneR = he;      12'd411: toneR = he;
            12'd412: toneR = he;      12'd413: toneR = he;
            12'd414: toneR = he;      12'd415: toneR = he;

            12'd416: toneR = hf;      12'd417: toneR = hf; // HF (half-beat)
            12'd418: toneR = hf;      12'd419: toneR = hf;
            12'd420: toneR = hf;      12'd421: toneR = hf;
            12'd422: toneR = hf;      12'd423: toneR = hf;
            12'd424: toneR = hd;      12'd425: toneR = hd; // HD (half-beat)
            12'd426: toneR = hd;      12'd427: toneR = hd;
            12'd428: toneR = hd;      12'd429: toneR = hd;
            12'd430: toneR = hd;      12'd431: toneR = sil; // (Short break for repetitive notes)

            12'd432: toneR = hd;      12'd433: toneR = hd; // HD (one-beat)
            12'd434: toneR = hd;      12'd435: toneR = hd;
            12'd436: toneR = hd;      12'd437: toneR = hd;
            12'd438: toneR = hd;      12'd439: toneR = hd;
            12'd440: toneR = hd;      12'd441: toneR = hd;
            12'd442: toneR = hd;      12'd443: toneR = hd;
            12'd444: toneR = hd;      12'd445: toneR = hd;
            12'd446: toneR = hd;      12'd447: toneR = hd;

            // --- Measure 8 ---
            12'd448: toneR = hc;      12'd449: toneR = hc; // HC (half-beat)
            12'd450: toneR = hc;      12'd451: toneR = hc;
            12'd452: toneR = hc;      12'd453: toneR = hc;
            12'd454: toneR = hc;      12'd455: toneR = hc;
            12'd456: toneR = he;      12'd457: toneR = he; // HE (half-beat)
            12'd458: toneR = he;      12'd459: toneR = he;
            12'd460: toneR = he;      12'd461: toneR = he;
            12'd462: toneR = he;      12'd463: toneR = he;

            12'd464: toneR = hg;      12'd465: toneR = hg; // HG (half-beat)
            12'd466: toneR = hg;      12'd467: toneR = hg;
            12'd468: toneR = hg;      12'd469: toneR = hg;
            12'd470: toneR = hg;      12'd471: toneR = sil; // (Short break for repetitive notes)
            12'd472: toneR = hg;      12'd473: toneR = hg; // HG (half-beat)
            12'd474: toneR = hg;      12'd475: toneR = hg;
            12'd476: toneR = hg;      12'd477: toneR = hg;
            12'd478: toneR = hg;      12'd479: toneR = hg;

            12'd480: toneR = hc;      12'd481: toneR = hc; // HC (two-beat)
            12'd482: toneR = hc;      12'd483: toneR = hc;
            12'd484: toneR = hc;      12'd485: toneR = hc;
            12'd486: toneR = hc;      12'd487: toneR = hc;
            12'd488: toneR = hc;      12'd489: toneR = hc;
            12'd490: toneR = hc;      12'd491: toneR = hc;
            12'd492: toneR = hc;      12'd493: toneR = hc;
            12'd494: toneR = hc;      12'd495: toneR = hc;

            12'd496: toneR = hc;      12'd497: toneR = hc;
            12'd498: toneR = hc;      12'd499: toneR = hc;
            12'd500: toneR = hc;      12'd501: toneR = hc;
            12'd502: toneR = hc;      12'd503: toneR = hc;
            12'd504: toneR = hc;      12'd505: toneR = hc;
            12'd506: toneR = hc;      12'd507: toneR = hc;
            12'd508: toneR = hc;      12'd509: toneR = hc;
            12'd510: toneR = hc;      12'd511: toneR = hc;

            default: toneR = sil;
        endcase
    end

    always @(*) begin
        case(ibeatNum)
            // --- Measure 1 ---
            12'd0: toneL = hc;        12'd1: toneL = hc; // HC (two-beat)
            12'd2: toneL = hc;        12'd3: toneL = hc;
            12'd4: toneL = hc;        12'd5: toneL = hc;
            12'd6: toneL = hc;        12'd7: toneL = hc;
            12'd8: toneL = hc;        12'd9: toneL = hc;
            12'd10: toneL = hc;       12'd11: toneL = hc;
            12'd12: toneL = hc;       12'd13: toneL = hc;
            12'd14: toneL = hc;       12'd15: toneL = hc;

            12'd16: toneL = hc;       12'd17: toneL = hc;
            12'd18: toneL = hc;       12'd19: toneL = hc;
            12'd20: toneL = hc;       12'd21: toneL = hc;
            12'd22: toneL = hc;       12'd23: toneL = hc;
            12'd24: toneL = hc;       12'd25: toneL = hc;
            12'd26: toneL = hc;       12'd27: toneL = hc;
            12'd28: toneL = hc;       12'd29: toneL = hc;
            12'd30: toneL = hc;       12'd31: toneL = hc;

            12'd32: toneL = g;        12'd33: toneL = g; // G (one-beat)
            12'd34: toneL = g;        12'd35: toneL = g;
            12'd36: toneL = g;        12'd37: toneL = g;
            12'd38: toneL = g;        12'd39: toneL = g;
            12'd40: toneL = g;        12'd41: toneL = g;
            12'd42: toneL = g;        12'd43: toneL = g;
            12'd44: toneL = g;        12'd45: toneL = g;
            12'd46: toneL = g;        12'd47: toneL = g;

            12'd48: toneL = b;        12'd49: toneL = b; // B (one-beat)
            12'd50: toneL = b;        12'd51: toneL = b;
            12'd52: toneL = b;        12'd53: toneL = b;
            12'd54: toneL = b;        12'd55: toneL = b;
            12'd56: toneL = b;        12'd57: toneL = b;
            12'd58: toneL = b;        12'd59: toneL = b;
            12'd60: toneL = b;        12'd61: toneL = b;
            12'd62: toneL = b;        12'd63: toneL = b;

            // --- Measure 2 ---
            12'd64: toneL = hc;       12'd65: toneL = hc; // HC (two-beat)
            12'd66: toneL = hc;       12'd67: toneL = hc;
            12'd68: toneL = hc;       12'd69: toneL = hc;
            12'd70: toneL = hc;       12'd71: toneL = hc;
            12'd72: toneL = hc;       12'd73: toneL = hc;
            12'd74: toneL = hc;       12'd75: toneL = hc;
            12'd76: toneL = hc;       12'd77: toneL = hc;
            12'd78: toneL = hc;       12'd79: toneL = hc;

            12'd80: toneL = hc;       12'd81: toneL = hc;
            12'd82: toneL = hc;       12'd83: toneL = hc;
            12'd84: toneL = hc;       12'd85: toneL = hc;
            12'd86: toneL = hc;       12'd87: toneL = hc;
            12'd88: toneL = hc;       12'd89: toneL = hc;
            12'd90: toneL = hc;       12'd91: toneL = hc;
            12'd92: toneL = hc;       12'd93: toneL = hc;
            12'd94: toneL = hc;       12'd95: toneL = hc;

            12'd96: toneL = g;        12'd97: toneL = g; // G (one-beat)
            12'd98: toneL = g;        12'd99: toneL = g;
            12'd100: toneL = g;       12'd101: toneL = g;
            12'd102: toneL = g;       12'd103: toneL = g;
            12'd104: toneL = g;       12'd105: toneL = g;
            12'd106: toneL = g;       12'd107: toneL = g;
            12'd108: toneL = g;       12'd109: toneL = g;
            12'd110: toneL = g;       12'd111: toneL = g;

            12'd112: toneL = b;       12'd113: toneL = b; // B (one-beat)
            12'd114: toneL = b;       12'd115: toneL = b;
            12'd116: toneL = b;       12'd117: toneL = b;
            12'd118: toneL = b;       12'd119: toneL = b;
            12'd120: toneL = b;       12'd121: toneL = b;
            12'd122: toneL = b;       12'd123: toneL = b;
            12'd124: toneL = b;       12'd125: toneL = b;
            12'd126: toneL = b;       12'd127: toneL = b;

            // --- Measure 3 ---
            12'd128: toneL = hc;      12'd129: toneL = hc; // HC (two-beat)
            12'd130: toneL = hc;      12'd131: toneL = hc;
            12'd132: toneL = hc;      12'd133: toneL = hc;
            12'd134: toneL = hc;      12'd135: toneL = hc;
            12'd136: toneL = hc;      12'd137: toneL = hc;
            12'd138: toneL = hc;      12'd139: toneL = hc;
            12'd140: toneL = hc;      12'd141: toneL = hc;
            12'd142: toneL = hc;      12'd143: toneL = hc;

            12'd144: toneL = hc;      12'd145: toneL = hc;
            12'd146: toneL = hc;      12'd147: toneL = hc;
            12'd148: toneL = hc;      12'd149: toneL = hc;
            12'd150: toneL = hc;      12'd151: toneL = hc;
            12'd152: toneL = hc;      12'd153: toneL = hc;
            12'd154: toneL = hc;      12'd155: toneL = hc;
            12'd156: toneL = hc;      12'd157: toneL = hc;
            12'd158: toneL = hc;      12'd159: toneL = hc;

            12'd160: toneL = g;       12'd161: toneL = g; // G (one-beat)
            12'd162: toneL = g;       12'd163: toneL = g;
            12'd164: toneL = g;       12'd165: toneL = g;
            12'd166: toneL = g;       12'd167: toneL = g;
            12'd168: toneL = g;       12'd169: toneL = g;
            12'd170: toneL = g;       12'd171: toneL = g;
            12'd172: toneL = g;       12'd173: toneL = g;
            12'd174: toneL = g;       12'd175: toneL = g;

            12'd176: toneL = b;       12'd177: toneL = b; // B (one-beat)
            12'd178: toneL = b;       12'd179: toneL = b;
            12'd180: toneL = b;       12'd181: toneL = b;
            12'd182: toneL = b;       12'd183: toneL = b;
            12'd184: toneL = b;       12'd185: toneL = b;
            12'd186: toneL = b;       12'd187: toneL = b;
            12'd188: toneL = b;       12'd189: toneL = b;
            12'd190: toneL = b;       12'd191: toneL = b;

            // --- Measure 4 ---
            12'd192: toneL = hc;      12'd193: toneL = hc; // HC (one-beat)
            12'd194: toneL = hc;      12'd195: toneL = hc;
            12'd196: toneL = hc;      12'd197: toneL = hc;
            12'd198: toneL = hc;      12'd199: toneL = hc;
            12'd200: toneL = hc;      12'd201: toneL = hc;
            12'd202: toneL = hc;      12'd203: toneL = hc;
            12'd204: toneL = hc;      12'd205: toneL = hc;
            12'd206: toneL = hc;      12'd207: toneL = hc;

            12'd208: toneL = g;       12'd209: toneL = g; // G (one-beat)
            12'd210: toneL = g;       12'd211: toneL = g;
            12'd212: toneL = g;       12'd213: toneL = g;
            12'd214: toneL = g;       12'd215: toneL = g;
            12'd216: toneL = g;       12'd217: toneL = g;
            12'd218: toneL = g;       12'd219: toneL = g;
            12'd220: toneL = g;       12'd221: toneL = g;
            12'd222: toneL = g;       12'd223: toneL = g;

            12'd224: toneL = e;       12'd225: toneL = e; // E (one-beat)
            12'd226: toneL = e;       12'd227: toneL = e;
            12'd228: toneL = e;       12'd229: toneL = e;
            12'd230: toneL = e;       12'd231: toneL = e;
            12'd232: toneL = e;       12'd233: toneL = e;
            12'd234: toneL = e;       12'd235: toneL = e;
            12'd236: toneL = e;       12'd237: toneL = e;
            12'd238: toneL = e;       12'd239: toneL = e;

            12'd240: toneL = c;       12'd241: toneL = c; // C (one-beat)
            12'd242: toneL = c;       12'd243: toneL = c;
            12'd244: toneL = c;       12'd245: toneL = c;
            12'd246: toneL = c;       12'd247: toneL = c;
            12'd248: toneL = c;       12'd249: toneL = c;
            12'd250: toneL = c;       12'd251: toneL = c;
            12'd252: toneL = c;       12'd253: toneL = c;
            12'd254: toneL = c;       12'd255: toneL = c;

            // --- Measure 5 ---
            12'd256: toneL = g;       12'd257: toneL = g; // G (two-beat)
            12'd258: toneL = g;       12'd259: toneL = g;
            12'd260: toneL = g;       12'd261: toneL = g;
            12'd262: toneL = g;       12'd263: toneL = g;
            12'd264: toneL = g;       12'd265: toneL = g;
            12'd266: toneL = g;       12'd267: toneL = g;
            12'd268: toneL = g;       12'd269: toneL = g;
            12'd270: toneL = g;       12'd271: toneL = g;

            12'd272: toneL = g;       12'd273: toneL = g;
            12'd274: toneL = g;       12'd275: toneL = g;
            12'd276: toneL = g;       12'd277: toneL = g;
            12'd278: toneL = g;       12'd279: toneL = g;
            12'd280: toneL = g;       12'd281: toneL = g;
            12'd282: toneL = g;       12'd283: toneL = g;
            12'd284: toneL = g;       12'd285: toneL = g;
            12'd286: toneL = g;       12'd287: toneL = g;

            12'd288: toneL = f;       12'd289: toneL = f; // F (one-beat)
            12'd290: toneL = f;       12'd291: toneL = f;
            12'd292: toneL = f;       12'd293: toneL = f;
            12'd294: toneL = f;       12'd295: toneL = f;
            12'd296: toneL = f;       12'd297: toneL = f;
            12'd298: toneL = f;       12'd299: toneL = f;
            12'd300: toneL = f;       12'd301: toneL = f;
            12'd302: toneL = f;       12'd303: toneL = f;

            12'd304: toneL = d;       12'd305: toneL = d; // D (one-beat)
            12'd306: toneL = d;       12'd307: toneL = d;
            12'd308: toneL = d;       12'd309: toneL = d;
            12'd310: toneL = d;       12'd311: toneL = d;
            12'd312: toneL = d;       12'd313: toneL = d;
            12'd314: toneL = d;       12'd315: toneL = d;
            12'd316: toneL = d;       12'd317: toneL = d;
            12'd318: toneL = d;       12'd319: toneL = d;

            // --- Measure 6 ---
            12'd320: toneL = e;       12'd321: toneL = e; // E (two-beat)
            12'd322: toneL = e;       12'd323: toneL = e;
            12'd324: toneL = e;       12'd325: toneL = e;
            12'd326: toneL = e;       12'd327: toneL = e;
            12'd328: toneL = e;       12'd329: toneL = e;
            12'd330: toneL = e;       12'd331: toneL = e;
            12'd332: toneL = e;       12'd333: toneL = e;
            12'd334: toneL = e;       12'd335: toneL = e;

            12'd336: toneL = e;       12'd337: toneL = e;
            12'd338: toneL = e;       12'd339: toneL = e;
            12'd340: toneL = e;       12'd341: toneL = e;
            12'd342: toneL = e;       12'd343: toneL = e;
            12'd344: toneL = e;       12'd345: toneL = e;
            12'd346: toneL = e;       12'd347: toneL = e;
            12'd348: toneL = e;       12'd349: toneL = e;
            12'd350: toneL = e;       12'd351: toneL = e;

            12'd352: toneL = g;       12'd353: toneL = g; // G (one-beat)
            12'd354: toneL = g;       12'd355: toneL = g;
            12'd356: toneL = g;       12'd357: toneL = g;
            12'd358: toneL = g;       12'd359: toneL = g;
            12'd360: toneL = g;       12'd361: toneL = g;
            12'd362: toneL = g;       12'd363: toneL = g;
            12'd364: toneL = g;       12'd365: toneL = g;
            12'd366: toneL = g;       12'd367: toneL = g;

            12'd368: toneL = b;       12'd369: toneL = b; // B (one-beat)
            12'd370: toneL = b;       12'd371: toneL = b;
            12'd372: toneL = b;       12'd373: toneL = b;
            12'd374: toneL = b;       12'd375: toneL = b;
            12'd376: toneL = b;       12'd377: toneL = b;
            12'd378: toneL = b;       12'd379: toneL = b;
            12'd380: toneL = b;       12'd381: toneL = b;
            12'd382: toneL = b;       12'd383: toneL = b;

            // --- Measure 7 ---
            12'd384: toneL = hc;      12'd385: toneL = hc; // HC (two-beat)
            12'd386: toneL = hc;      12'd387: toneL = hc;
            12'd388: toneL = hc;      12'd389: toneL = hc;
            12'd390: toneL = hc;      12'd391: toneL = hc;
            12'd392: toneL = hc;      12'd393: toneL = hc;
            12'd394: toneL = hc;      12'd395: toneL = hc;
            12'd396: toneL = hc;      12'd397: toneL = hc;
            12'd398: toneL = hc;      12'd399: toneL = hc;

            12'd400: toneL = hc;      12'd401: toneL = hc;
            12'd402: toneL = hc;      12'd403: toneL = hc;
            12'd404: toneL = hc;      12'd405: toneL = hc;
            12'd406: toneL = hc;      12'd407: toneL = hc;
            12'd408: toneL = hc;      12'd409: toneL = hc;
            12'd410: toneL = hc;      12'd411: toneL = hc;
            12'd412: toneL = hc;      12'd413: toneL = hc;
            12'd414: toneL = hc;      12'd415: toneL = hc;

            12'd416: toneL = g;       12'd417: toneL = g; // G (one-beat)
            12'd418: toneL = g;       12'd419: toneL = g;
            12'd420: toneL = g;       12'd421: toneL = g;
            12'd422: toneL = g;       12'd423: toneL = g;
            12'd424: toneL = g;       12'd425: toneL = g;
            12'd426: toneL = g;       12'd427: toneL = g;
            12'd428: toneL = g;       12'd429: toneL = g;
            12'd430: toneL = g;       12'd431: toneL = g;

            12'd432: toneL = b;       12'd433: toneL = b; // B (one-beat)
            12'd434: toneL = b;       12'd435: toneL = b;
            12'd436: toneL = b;       12'd437: toneL = b;
            12'd438: toneL = b;       12'd439: toneL = b;
            12'd440: toneL = b;       12'd441: toneL = b;
            12'd442: toneL = b;       12'd443: toneL = b;
            12'd444: toneL = b;       12'd445: toneL = b;
            12'd446: toneL = b;       12'd447: toneL = b;

            // --- Measure 8 ---
            12'd448: toneL = hc;      12'd449: toneL = hc; // HC (one-beat)
            12'd450: toneL = hc;      12'd451: toneL = hc;
            12'd452: toneL = hc;      12'd453: toneL = hc;
            12'd454: toneL = hc;      12'd455: toneL = hc;
            12'd456: toneL = hc;      12'd457: toneL = hc;
            12'd458: toneL = hc;      12'd459: toneL = hc;
            12'd460: toneL = hc;      12'd461: toneL = hc;
            12'd462: toneL = hc;      12'd463: toneL = hc;

            12'd464: toneL = g;       12'd465: toneL = g; // G (one-beat)
            12'd466: toneL = g;       12'd467: toneL = g;
            12'd468: toneL = g;       12'd469: toneL = g;
            12'd470: toneL = g;       12'd471: toneL = g;
            12'd472: toneL = g;       12'd473: toneL = g;
            12'd474: toneL = g;       12'd475: toneL = g;
            12'd476: toneL = g;       12'd477: toneL = g;
            12'd478: toneL = g;       12'd479: toneL = g;

            12'd480: toneL = c;       12'd481: toneL = c; // C (two-beat)
            12'd482: toneL = c;       12'd483: toneL = c;
            12'd484: toneL = c;       12'd485: toneL = c;
            12'd486: toneL = c;       12'd487: toneL = c;
            12'd488: toneL = c;       12'd489: toneL = c;
            12'd490: toneL = c;       12'd491: toneL = c;
            12'd492: toneL = c;       12'd493: toneL = c;
            12'd494: toneL = c;       12'd495: toneL = c;

            12'd496: toneL = c;       12'd497: toneL = c;
            12'd498: toneL = c;       12'd499: toneL = c;
            12'd500: toneL = c;       12'd501: toneL = c;
            12'd502: toneL = c;       12'd503: toneL = c;
            12'd504: toneL = c;       12'd505: toneL = c;
            12'd506: toneL = c;       12'd507: toneL = c;
            12'd508: toneL = c;       12'd509: toneL = c;
            12'd510: toneL = c;       12'd511: toneL = c;

            default : toneL = sil;
        endcase
    end
endmodule


module volume_control(
    input clk, // clkDiv13
    input rst,
    input mute, // SW14
    input volUP, // BTNU
    input volDOWN, // BTND
    output [2:0] volume_out // 0: mute, 1~5: normal 
);

    wire volUP_db, volDOWN_db;
    wire volUP_p, volDOWN_p;
    debounce db0 (.clk(clk), .pb(volUP), .pb_debounced(volUP_db));
    debounce db1 (.clk(clk), .pb(volDOWN), .pb_debounced(volDOWN_db));

    onepulse op0 (.clk(clk), .signal(volUP_db), .op(volUP_p));
    onepulse op1 (.clk(clk), .signal(volDOWN_db), .op(volDOWN_p));

    reg [2:0] volume, next_volume;
    
    assign volume_out = (mute == 1'b1) ? 3'd0 : volume;
 
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1) begin
            volume <= 3'd3; // default volume
        end
        else begin
            volume <= next_volume;
        end
    end

    always @(*) begin
        next_volume = volume;

        if (volUP_p == 1'b1) 
            next_volume = (volume == 5) ? 5 : volume + 1;
        else if (volDOWN_p == 1'b1) 
            next_volume = (volume == 1) ? 1 : volume - 1;
    end

endmodule


module freq_out_calculator(
    input [1:0] state,
    input [31:0] key_freq,
    input still_playing,
    input single_key_down,
    input [31:0] freqL,
    input [31:0] freqR,
    output reg [31:0] freq_outL,
    output reg [31:0] freq_outR
);

parameter [1:0] DEMONSTRATE = 2'b00;
parameter [1:0] PIANO = 2'b01;
parameter [1:0] HELPER = 2'b10;

parameter [31:0] SILENCE = 32'd50_000_000;

// Note: gen makes no sound, if note_div = 50_000_000 / `silence = 1
// CNT_MAX = 100M / freq / 2
always @(*) begin
    // silence by default
    freq_outL = SILENCE;
    freq_outR = SILENCE;

    case (state)
        DEMONSTRATE: begin
            freq_outL = freqL; 
            freq_outR = freqR;
        end
        PIANO: begin
            if (single_key_down) begin
                freq_outL = key_freq;
                freq_outR = key_freq;
            end
        end
        HELPER: begin
            if (still_playing && single_key_down) begin
                freq_outL = key_freq;
                freq_outR = key_freq;
            end
        end
    endcase
end

endmodule


module note_gen(
    input clk, // clock from crystal
    input rst, // active high reset
    input [2:0] volume, 
    input [21:0] note_div_left, // div for note generation
    input [21:0] note_div_right,
    output reg [15:0] audio_left,
    output reg [15:0] audio_right
    );

    // Declare internal signals
    reg [15:0] amplitude;
    reg [21:0] clk_cnt_next, clk_cnt;
    reg [21:0] clk_cnt_next_2, clk_cnt_2;
    reg b_clk, b_clk_next;
    reg c_clk, c_clk_next;

    // Note frequency generation
    // clk_cnt, clk_cnt_2, b_clk, c_clk
    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            begin
                clk_cnt <= 22'd0;
                clk_cnt_2 <= 22'd0;
                b_clk <= 1'b0;
                c_clk <= 1'b0;
            end
        else
            begin
                clk_cnt <= clk_cnt_next;
                clk_cnt_2 <= clk_cnt_next_2;
                b_clk <= b_clk_next;
                c_clk <= c_clk_next;
            end
    
    // clk_cnt_next, b_clk_next
    always @*
        if (clk_cnt == note_div_left)
            begin
                clk_cnt_next = 22'd0;
                b_clk_next = ~b_clk;
            end
        else
            begin
                clk_cnt_next = clk_cnt + 1'b1;
                b_clk_next = b_clk;
            end

    // clk_cnt_next_2, c_clk_next
    always @*
        if (clk_cnt_2 == note_div_right)
            begin
                clk_cnt_next_2 = 22'd0;
                c_clk_next = ~c_clk;
            end
        else
            begin
                clk_cnt_next_2 = clk_cnt_2 + 1'b1;
                c_clk_next = c_clk;
            end

    // Assign the amplitude of the note
    // Volume is controlled here
    always @(*) begin
        amplitude = 16'd1000 + 16'd3000 * volume;

        if (note_div_left == 22'd1 || volume == 3'd0) begin
            audio_left = 16'h0000;
            audio_right = 16'h0000;
        end
        else begin
            // note: in 2's complement, -N = ~N + 1'b1
            audio_left = (b_clk == 1'b0) ? ~amplitude + 1'b1 : amplitude;
            audio_right = (c_clk == 1'b0) ? ~amplitude + 1'b1 : amplitude;
        end
    end 
    
endmodule