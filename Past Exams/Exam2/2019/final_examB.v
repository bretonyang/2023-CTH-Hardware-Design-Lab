// 107123456 王小明
module final_examB(
        input wire clk, 
        input wire rst,
        inout wire PS2_CLK,
        inout wire PS2_DATA,
        output reg [9:0] drop_money,
        output reg drop_juice,
        output reg drop_coffee,
        output wire [3:0] DIGIT,
        output wire [6:0] DISPLAY);
	
	// add your design here
	
endmodule

module clock_divider(clk, clk_r);
    parameter n = 13;

    input clk;
    output clk_r;
    reg[n - 1:0] cnt;

    always @(posedge clk) begin
        cnt <= cnt + 1;
    end

    assign clk_r = cnt[n - 1];

endmodule

module debounce(pb_debounced, pb, clk);

  output    pb_debounced; 
  input     pb;          
  input     clk;         
  
  reg [3:0] shift_reg;   
  
  always @(posedge clk) begin
    shift_reg[3:1] <= shift_reg[2:0];
    shift_reg[0] <= pb;
  end

  assign pb_debounced = ((shift_reg == 4'b1111) ? 1'b1 : 1'b0);

endmodule

module OnePulse (
	output reg signal_single_pulse,
	input wire signal,
	input wire clock
	);
	
	reg signal_delay;

	always @(posedge clock) begin
		if (signal == 1'b1 & signal_delay == 1'b0)
		  signal_single_pulse <= 1'b1;
		else
		  signal_single_pulse <= 1'b0;

		signal_delay <= signal;
	end
endmodule

module LED7SEG(DIGIT, DISPLAY, clk, BCD3, BCD2, BCD1, BCD0
    );
input clk;
input [3:0] BCD3;
input [3:0] BCD2;
input [3:0] BCD1;
input [3:0] BCD0;
output reg [3:0] DIGIT;
output [6:0] DISPLAY;
reg [3:0] value;

	always @ ( posedge clk) begin	
		case(DIGIT) 
			4'b0111: begin
			    value = BCD2;
				DIGIT <= 4'b1011;
			end
			4'b1011: begin
			    value = BCD1;
				DIGIT <= 4'b1101;
			end
			4'b1101: begin
				value = BCD0;
				DIGIT <= 4'b1110;
			end
			4'b1110: begin
				value = BCD3;
				DIGIT <= 4'b0111;
			end
			default begin
				DIGIT <= 4'b1110;
			end
		endcase	
	end

	assign DISPLAY = (value==4'd0) ? 7'b0000001 :
						(value==4'd1) ? 7'b1001111 :
						(value==4'd2) ? 7'b0010010 :
						(value==4'd3) ? 7'b0000110 :
						(value==4'd4) ? 7'b1001100 :
						(value==4'd5) ? 7'b0100100 :
						(value==4'd6) ? 7'b0100000 :
						(value==4'd7) ? 7'b0001111 :
						(value==4'd8) ? 7'b0000000 : 
						(value==4'd9) ? 7'b0000100 :
						(value==4'd10) ? 7'b1111110 :    //j
						(value==4'd11) ? 7'b1100011 :    //u
						(value==4'd12) ? 7'b0111011 :    //i
						(value==4'd13) ? 7'b1110010 :    //c
						(value==4'd14) ? 7'b0111000 :    //f
						(value==4'd15) ? 7'b1111111 :    //e
                 						7'b1111111;


endmodule

module CreateLargePulse(
	output wire large_pulse,
	input wire small_pulse,
	input wire rst,
	input wire clk
);
	reg [15:0] count, next_count;
	reg state, next_state;
	always@(posedge clk or posedge rst) begin
		if(rst) begin
			count <= 16'd0;
			state <= 1'b0;
		end
		else begin
			count <= next_count;
			state <= next_state;
		end
	end
	
	always@(*) begin
		case(state)
			0:begin
				//waiting
				if(small_pulse == 0) begin
					next_state = 0;
					next_count = 0;
				end
				else begin
					next_state = 1;
					next_count = 1;
				end
			end
			1:begin
				//counting
				if(count == 0)begin
					next_state = 0;
					next_count = 0;
				end
				else begin
					next_state = 1;
					next_count = count+1;
				end
			end
		endcase
	end
	
	assign large_pulse = (state == 1'b1)?1'b1:1'b0;
endmodule

module ButtonCtrl(	
	output reg money_1,
	output reg money_5,
	output reg money_10,
	output reg juice,
	output reg coffee,
	output reg cancel,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
	);
	
	wire [511:0] key_down;
    wire [8:0] last_change;
	
	parameter [8:0] KEY_CODES [0:6] = {
		9'b0_0111_0000, // right_0 => 70
		9'b0_0110_1001, // right_1 => 69
		9'b0_0111_0011, // right_5 => 73
		9'b0_0001_0010, // left shift => 12
		9'b0_0010_0001, // C => 21
		9'b0_0011_1011, // J => 3B
		9'b0_0111_0110	// ESC => 76
	};
	wire been_ready;
	KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);
	wire shift_down;
	assign shift_down = (key_down[KEY_CODES[3]] == 1'b1) ? 1'b1 : 1'b0;
	always @ (posedge clk, posedge rst) begin
		if (rst) begin
			money_1 <= 0;
			money_5 <= 0;
			money_10 <= 0;
			coffee <= 0;
			juice <= 0;
			cancel <= 0;
		end 
		else begin
			money_1 <= 0;
			money_5 <= 0;
			money_10 <= 0;
			coffee <= 0;
			juice <= 0;
			cancel <= 0;
			if (been_ready && key_down[last_change] == 1'b1) begin
				if (last_change == KEY_CODES[0])	money_10 <= 1;
				if (last_change == KEY_CODES[1])	money_1 <= 1;
				if (last_change == KEY_CODES[2])	money_5 <= 1;
				if (last_change == KEY_CODES[4])	coffee <= 1;
				if (last_change == KEY_CODES[5])	juice <= 1;
				if (last_change == KEY_CODES[6])	cancel <= 1;
			end
		end
	end
	
endmodule