// 110011138 ???

// e.g. 110123456 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty

`define WIDTH 8

module exam1_A(
    input wire clk,
    input wire rst,
    input wire [`WIDTH-1:0] A,
    input wire [`WIDTH-1:0] B,
    input wire [1:0] ctrl,
    output wire [`WIDTH*2-1:0] out // You can modify "reg" to "wire" if needed
);
    //Your design here
    wire signed [`WIDTH-1:0] _A = A;
    wire signed [`WIDTH-1:0] _B = B;
    reg signed [`WIDTH*2-1:0] _out;
    reg signed [`WIDTH*2-1:0] next_out;
    
    assign out = _out;
    
    always @(posedge clk) begin
    	if (rst == 1) begin
    		_out <= 0;
    	end
    	else begin 
    		_out <= next_out;
    	end
    end
    
    always @(*) begin
    	case (ctrl)
    		2'b00: next_out = _A * (-_B);
    		2'b01: next_out = {_A^_B, ~(_A|_B)};
    		2'b11: next_out = _A + _B;
    		default: next_out = (_A < _B) ? -1 : 1; 
    	endcase
    end

endmodule

// You can add any module you need.
// Make sure you include all modules you used in this problem.









