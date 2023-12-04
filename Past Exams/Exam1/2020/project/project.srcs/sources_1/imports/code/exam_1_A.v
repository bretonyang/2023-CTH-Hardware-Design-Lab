// 110011138 楊立慈

`define WIDTH 4
module exam_1_A (
    input  wire [2:0]select,
    input  wire [`WIDTH-1:0] X,
    input  wire [`WIDTH-1:0] Y,
    output reg  [`WIDTH*2-1:0] out
);  
    //Do not modify IO and define
    //But you can modify "output reg  [`WIDTH*2-1:0] out" to "output wire  [`WIDTH*2-1:0] out" if needed.
    //Your code here

    wire [`WIDTH*2-1:0] mul;
    multiplier m1 (.X(X), .Y(Y), .out(mul));

    always @(*) begin
        case (select)
            0: out = X + Y;
            1: out = {{4{1'b1}}, X&Y};
            2: out = mul;
            default: out = 5;
        endcase
    end
   
endmodule
    
module multiplier(
    input wire [3:0] X,
    input wire [3:0] Y,
    output wire [7:0] out
);

    reg [7:0] result;
    reg [2:0] i; 

    assign out = result;

    always @(*) begin
        result = 0;
        for (i = 0; i < 4; i = i + 1) begin
            if (Y[i] != 0) result = result + (X << i);
        end
    end

endmodule
