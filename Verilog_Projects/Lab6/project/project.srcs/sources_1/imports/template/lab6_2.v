module lab6_2(
    input clk,
    input rst,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    input hint,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync,
    output pass
    );
    
    wire [11:0] data;
    wire clk_25MHz;
    wire [16:0] pixel_addr;
    wire [11:0] pixel;
    wire valid;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480

    wire [511:0] key_down;
	wire [8:0] last_change;
	wire been_ready;

    wire [0:63] puzzle; // 16 4-bit
    wire [0:15] is_rotated;

    assign {vgaRed, vgaGreen, vgaBlue} = (valid == 1'b1) ? pixel : 12'h0;

    clock_divider #(2) cd2(.clk(clk), .clk_div(clk_25MHz));

    KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready), 
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);

    mem_addr_gen2 mem_addr_gen_inst(
        .puzzle_in(puzzle),
        .is_rotated(is_rotated),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pixel_addr(pixel_addr)
    );

    keyboard_actions keyboard_actions_inst(
        .clk(clk),
        .rst(rst),
        .hint(hint),
        .been_ready(been_ready),
        .last_change(last_change),
        .key_down(key_down),
        .puzzle_out(puzzle),
        .is_rotated_out(is_rotated),
        .pass(pass)
    );
     
    blk_mem_gen_0 blk_mem_gen_0_inst(
        .clka(clk_25MHz),
        .wea(0),
        .addra(pixel_addr),
        .dina(data[11:0]),
        .douta(pixel)
    ); 

    vga_controller vga_inst(
        .pclk(clk_25MHz),
        .reset(rst),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt)
    );

endmodule

module keyboard_actions (
    input clk,
    input rst,
    input hint,
    input [511:0] key_down,
	input [8:0] last_change,
	input been_ready,
    output reg [0:63] puzzle_out, // pass flattened 2D-array since Verilog doesn't support passing arrays
    output reg [0:15] is_rotated_out,
    output reg pass
);
    parameter [3:0] SOLUTION [0:15] = {
        4'd0, 4'd1, 4'd2, 4'd3,
        4'd4, 4'd5, 4'd6, 4'd7,
        4'd8, 4'd9, 4'd10, 4'd11,
        4'd12, 4'd13, 4'd14, 4'd15
    };
    parameter [3:0] INIT_PUZZLE [0:15] = {
        4'd0, 4'd1, 4'd3, 4'd2,
        4'd4, 4'd5, 4'd6, 4'd7,
        4'd12, 4'd9, 4'd15, 4'd11,
        4'd8, 4'd13, 4'd14, 4'd10
    };
    parameter [0:15] INIT_IS_ROTATED = {
        1'b1, 1'b0, 1'b0, 1'b0,
        1'b0, 1'b0, 1'b1, 1'b0,
        1'b0, 1'b1, 1'b0, 1'b1,
        1'b0, 1'b0, 1'b0, 1'b0
    };
    parameter [4:0] SHIFT_NUM = 5'd16;
    parameter [4:0] UNKNOWN = 5'd17;
 
    parameter WAIT_KEYS_DOWN = 1'b0;
    parameter WAIT_KEYS_RELEASE = 1'b1;

    reg [8:0] prev_last_change, next_prev_last_change;
    wire [4:0] key_nums [0:1];
    wire valid_key_nums, only_two_down; // condition checkers

    reg state, next_state;
    reg [3:0] puzzle [0:15];
    reg [3:0] next_puzzle [0:15];
    reg [0:15] is_rotated;
    reg [0:15] next_is_rotated;
    integer pass_i, i, j;

    key_num_calculator knc_inst0(.key(prev_last_change), .key_num(key_nums[0]));
    key_num_calculator knc_inst1(.key(last_change), .key_num(key_nums[1]));

    assign valid_key_nums = (key_nums[0] != UNKNOWN && key_nums[1] != UNKNOWN) ? 1'b1 : 1'b0;
    assign only_two_down = (last_change != prev_last_change && key_down == ((512'b1 << last_change) | (512'b1 << prev_last_change))) ? 1'b1 : 1'b0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= WAIT_KEYS_DOWN;
            is_rotated <= INIT_IS_ROTATED;
            for (i = 0; i < 16; i = i + 1) begin
                puzzle[i] <= INIT_PUZZLE[i];
            end
            prev_last_change <= 0; // any unused keycode 
        end
        else begin
            state <= next_state;
            is_rotated <= next_is_rotated;
            for (i = 0; i < 16; i = i + 1) begin
                puzzle[i] <= next_puzzle[i];
            end
            prev_last_change <= next_prev_last_change;
        end
    end

    // Comb: state, prev_last_change, puzzle, is_rotated
    always @(*) begin
        // default values
        next_state = state;
        next_is_rotated = is_rotated;
        for (j = 0; j < 16; j = j + 1) begin
            next_puzzle[j] = puzzle[j];
        end
        next_prev_last_change = (been_ready) ? last_change : prev_last_change;

        case (state)
            WAIT_KEYS_DOWN: begin
                if (been_ready && only_two_down && valid_key_nums) begin
                    next_state = WAIT_KEYS_RELEASE;

                    // process keyboard input if !hint and !pass
                    if (hint != 1'b1 && pass != 1'b1) begin
                        // rotate block key_nums[1]
                        if (key_nums[0] == SHIFT_NUM) begin
                            next_is_rotated[key_nums[1]] = ~is_rotated[key_nums[1]];
                        end
                        // rotate block key_nums[0]
                        else if (key_nums[1] == SHIFT_NUM) begin
                            next_is_rotated[key_nums[0]] = ~is_rotated[key_nums[0]];
                        end
                        // swap blocks
                        else begin
                            next_puzzle[key_nums[0]] = puzzle[key_nums[1]];
                            next_is_rotated[key_nums[0]] = is_rotated[key_nums[1]];
                            next_puzzle[key_nums[1]] = puzzle[key_nums[0]];
                            next_is_rotated[key_nums[1]] = is_rotated[key_nums[0]];
                        end
                    end
                end
            end
            WAIT_KEYS_RELEASE: begin
                if (been_ready && key_down == 512'b0) begin
                    next_state = WAIT_KEYS_DOWN;
                end
            end
        endcase
    end 

    // Comb: puzzle_out, is_rotated_out
    always @(*) begin
        if (hint | pass) begin
            is_rotated_out = 0;
            puzzle_out = {
                SOLUTION[0], SOLUTION[1], SOLUTION[2], SOLUTION[3],
                SOLUTION[4], SOLUTION[5], SOLUTION[6], SOLUTION[7],
                SOLUTION[8], SOLUTION[9], SOLUTION[10], SOLUTION[11],
                SOLUTION[12], SOLUTION[13], SOLUTION[14], SOLUTION[15]
            };
        end
        else begin
            is_rotated_out = is_rotated;
            puzzle_out = {
                puzzle[0], puzzle[1], puzzle[2], puzzle[3],
                puzzle[4], puzzle[5], puzzle[6], puzzle[7],
                puzzle[8], puzzle[9], puzzle[10], puzzle[11],
                puzzle[12], puzzle[13], puzzle[14], puzzle[15]
            };
        end
    end

    // Comb: pass
    always @(*) begin
        pass = 1'b1;
        for (pass_i = 0; pass_i < 16; pass_i = pass_i + 1'b1) begin
            if (puzzle[pass_i] != pass_i || is_rotated[pass_i]) begin
                pass = 1'b0;
            end
        end
    end

endmodule

module key_num_calculator(
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

module mem_addr_gen2(
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   input [0:63] puzzle_in,
   input [0:15] is_rotated,
   output [16:0] pixel_addr
);
    parameter [9:0] H_LEN = 10'd320; 
    parameter [9:0] V_LEN = 10'd240; 
    parameter [16:0] SIZE = 17'd76800; // H_LEN * V_LEN
    parameter [9:0] H_BLOCK_SIZE = 10'd80;
    parameter [9:0] V_BLOCK_SIZE = 10'd60;

    reg [3:0] puzzle [0:15];
    reg [9:0] h, v;
    reg [3:0] blk_num, org_blk_num; // block number 
    reg [9:0] rel_h, rel_v; // (h, v) relative to the block's top left corner
    reg [9:0] org_blk_h, org_blk_v; //  original block's top left corner's (h, v)
    reg [9:0] org_h, org_v; //  original (h, v)

    assign pixel_addr = (org_h + H_LEN * org_v) % SIZE;

    // Comb: calculate pixel_addr
    always @(*) begin
        h = h_cnt >> 1;
        v = v_cnt >> 1;
        blk_num = 4 * (v / V_BLOCK_SIZE) + (h / H_BLOCK_SIZE);
        org_blk_num = puzzle[blk_num];
        rel_h = h % H_BLOCK_SIZE;
        rel_v = is_rotated[blk_num] ? V_BLOCK_SIZE - v % V_BLOCK_SIZE - 1 : v % V_BLOCK_SIZE;
        org_blk_h = H_BLOCK_SIZE * (org_blk_num & 4'b0011); // org_blk_num % 4
        org_blk_v = V_BLOCK_SIZE * (org_blk_num >> 2); // org_blk_num / 4
        org_h = org_blk_h + rel_h;
        org_v = org_blk_v + rel_v;
    end

    // Comb: get 2D array from flattened array, note: can also use for-loop, but it somehow slows synth_design :(
    always @(*) begin
        {puzzle[0], puzzle[1], puzzle[2], puzzle[3],
         puzzle[4], puzzle[5], puzzle[6], puzzle[7],
         puzzle[8], puzzle[9], puzzle[10], puzzle[11],
         puzzle[12], puzzle[13], puzzle[14], puzzle[15]} = {
            puzzle_in[0:3], puzzle_in[4:7], puzzle_in[8:11], puzzle_in[12:15],
            puzzle_in[16:19], puzzle_in[20:23], puzzle_in[24:27], puzzle_in[28:31],
            puzzle_in[32:35], puzzle_in[36:39], puzzle_in[40:43], puzzle_in[44:47],
            puzzle_in[48:51], puzzle_in[52:55], puzzle_in[56:59], puzzle_in[60:63]
        };
    end

endmodule
