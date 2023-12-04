// 107123456 王小明
module final_examA(
        input wire clk, 
        input wire rst,
        input wire BTNL,
        input wire BTNR,
        input wire BTNU,
        input wire BTND,
        output reg [9:0] drop_money,
        output reg drop_juice,
        output reg drop_coffee,
        output wire [3:0] DIGIT,
        output wire [6:0] DISPLAY);
        
    // add your design here...
	
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
