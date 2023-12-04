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
    		0 : display = 7'b1000000;	  // 0
				1 : display = 7'b1111001;   // 1
				2 : display = 7'b0100100;   // 2
				3 : display = 7'b0110000;   // 3                                          
				4 : display = 7'b0011001;   // 4                                               
				5 : display = 7'b0010010;   // 5                                              
				6 : display = 7'b0000010;   // 6
				7 : display = 7'b1111000;   // 7
				8 : display = 7'b0000000;   // 8
				9 : display = 7'b0010000;	  // 9
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
