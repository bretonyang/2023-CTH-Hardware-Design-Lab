// 110011138 楊立慈

// e.g. 109012345 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty

`define WIDTH 8

module exam1_A(
    input wire clk,
    input wire rst,
    input wire [`WIDTH-1:0] A,
    input wire [`WIDTH-1:0] B,
    input wire [1:0] ctrl,
    output reg [`WIDTH*2-1:0] out // You can modify "reg" to "wire" if needed
);
    //Your design here
    wire signed [`WIDTH*2-1:0] A16 = {{8{A[7]}}, A};			
    wire signed [`WIDTH*2-1:0] B16 = {{8{B[7]}}, B};
    reg signed [`WIDTH*2-1:0] next_out;
        
    always @(posedge clk) begin
    	if (rst == 1) begin
    		out <= 0;
    	end
    	else begin
    		out <= next_out;
    	end
    end
    
    always @(*) begin
    	case (ctrl)
    		2'b00: next_out = A16 * B16;
    		2'b10: next_out = {A&B, A|B};
    		2'b11: next_out = A16 >>> 3;
    		default: next_out = A16 - B16;
    	endcase
    end

endmodule


// You can add any module you need.
// Make sure you include all modules you used in this problem.
