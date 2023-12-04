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
