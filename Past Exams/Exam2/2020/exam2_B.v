// 108123456 王小明
module exam2_B(
	output wire [6:0] DISPLAY,
	output wire [3:0] DIGIT,
	output wire [15:0] led,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk,
    input wire control_btn,
    input wire finish_btn
	);
	parameter [8:0] KEY_CODES [0:3] = {
		
		9'b0_0111_0000, // right_0 => 70
		9'b0_0110_1001, // right_1 => 69
		9'b0_0111_0010, // right_2 => 72
		9'b0_0111_1010 // right_3 => 7A

	};
    // add your design here
    
endmodule
