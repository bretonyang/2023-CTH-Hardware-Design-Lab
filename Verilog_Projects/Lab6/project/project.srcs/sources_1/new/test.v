module test(
    input clk,
    input rst,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output wire [6:0] display,
	output wire [3:0] digit,
    output [15:0] LED 
);
    
    wire [511:0] key_down;
	wire [8:0] last_change;
	wire been_ready;

    testKeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready), 
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);

    test_keyboard_actions keyboard_actions_inst(
        .LED(LED), 
        .display(display),
        .digit(digit),
        .clk(clk),
        .rst(rst),
        .been_ready(been_ready),
        .last_change(last_change),
        .key_down(key_down)
    );

endmodule

module test_keyboard_actions (
    input clk,
    input rst,
    input [511:0] key_down,
	input [8:0] last_change,
	input been_ready,
    output wire [6:0] display,
	output wire [3:0] digit,
    output [15:0] LED
);

    parameter [4:0] SHIFT_NUM = 5'd16;
    parameter [4:0] UNKNOWN = 5'd17;
 
    parameter WAIT_KEYS_DOWN = 1'b0;
    parameter WAIT_KEYS_RELEASE = 1'b1;

    reg state, next_state;
    reg [8:0] prev_last_change, next_prev_last_change;
    wire [4:0] key_nums [0:1]; // number value of keys, if key=SHIFT then key_num=SHIFT_NUM, if unknown key, then key=UNKNOWN
    wire valid_key_nums, only_two_down; // condition checkers

    reg [15:0] nums;
    integer i, cnt;

    test_key_num_calculator knc_inst0(.key(prev_last_change), .key_num(key_nums[0]));
    test_key_num_calculator knc_inst1(.key(last_change), .key_num(key_nums[1]));
    SevenSegment ss_inst(.clk(clk), .rst(rst), .display(display), .digit(digit), .nums(nums));

    assign valid_key_nums = (key_nums[0] != UNKNOWN && key_nums[1] != UNKNOWN) ? 1'b1 : 1'b0;
    assign only_two_down = (last_change != prev_last_change && key_down == ((512'b1 << last_change) | (512'b1 << prev_last_change))) ? 1'b1 : 1'b0;
    assign LED = (state == WAIT_KEYS_DOWN) ? 16'b0 : 16'b1111_1111_1111_1111;

    always @(*) begin
        cnt = 0;
        for (i = 0; i < 512; i = i + 1) begin
            cnt = cnt + key_down[i];
        end

        nums[15:12] = cnt / 1000;
        nums[11:8] = (cnt / 100) % 10;
        nums[7:4] = (cnt / 10) % 10;
        nums[3:0] = cnt % 10;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= WAIT_KEYS_DOWN;
            prev_last_change <= 0; // any unused keycode 
        end
        else begin
            state <= next_state;
            prev_last_change <= next_prev_last_change;
        end
    end

    // Comb: state, prev_last_change
    always @(*) begin
        // default values
        next_state = state;
        next_prev_last_change = (been_ready) ? last_change : prev_last_change;

        case (state)
            WAIT_KEYS_DOWN: begin
                if (been_ready && only_two_down && valid_key_nums) 
                    next_state = WAIT_KEYS_RELEASE;
            end
            WAIT_KEYS_RELEASE: begin
                if (been_ready && key_down == 512'b0) 
                    next_state = WAIT_KEYS_DOWN;
            end
        endcase
    end 

endmodule

module test_key_num_calculator(
    input [8:0] key,
    output reg [4:0] key_num
);
    parameter [4:0] SHIFT_NUM = 5'd16;
    parameter [4:0] UNKNOWN = 5'd17;
    parameter [8:0] KEY_CODES [0:16] = {
		9'b0_0001_0110,	// 0 => 1 (16)
		9'b0_0001_1110,	// 1 => 2 (1E)
		9'b0_0010_0110,	// 2 => 3 (26)
		9'b0_0010_0101,	// 3 => 4 (25)
		9'b0_0001_0101,	// 4 => Q (15)
		9'b0_0001_1101,	// 5 => W (1D)
		9'b0_0010_0100,	// 6 => E (24)
		9'b0_0010_1101,	// 7 => R (2D)
		9'b0_0001_1100,	// 8 => A (1C)
		9'b0_0001_1011,	// 9 => S (1B)
        9'b0_0010_0011, // 10 => D (23)
        9'b0_0010_1011, // 11 => F (2B)
        9'b0_0001_1010, // 12 => Z (1A)
        9'b0_0010_0010, // 13 => X (22)
        9'b0_0010_0001, // 14 => C (21)
        9'b0_0010_1010, // 15 => V (2A)
        9'b0_0001_0010 // SHIFT_NUM (16) => left Shift (12)
	};

	always @ (*) begin
		case (key)
			KEY_CODES[00] : key_num = 5'd0;
			KEY_CODES[01] : key_num = 5'd1;
			KEY_CODES[02] : key_num = 5'd2;
			KEY_CODES[03] : key_num = 5'd3;
			KEY_CODES[04] : key_num = 5'd4;
			KEY_CODES[05] : key_num = 5'd5;
			KEY_CODES[06] : key_num = 5'd6;
			KEY_CODES[07] : key_num = 5'd7;
			KEY_CODES[08] : key_num = 5'd8;
			KEY_CODES[09] : key_num = 5'd9;
			KEY_CODES[10] : key_num = 5'd10;
			KEY_CODES[11] : key_num = 5'd11;
			KEY_CODES[12] : key_num = 5'd12;
			KEY_CODES[13] : key_num = 5'd13;
			KEY_CODES[14] : key_num = 5'd14;
			KEY_CODES[15] : key_num = 5'd15;
			KEY_CODES[SHIFT_NUM] : key_num = SHIFT_NUM;
			default : key_num = UNKNOWN; 
		endcase
	end
endmodule