//Student ID + name ex.107000111 ??�大???

`define WIDTH 4
module exam_1_A (
    input  wire [2:0]select,
    input  wire [`WIDTH-1:0] X,
    input  wire [`WIDTH-1:0] Y,
    output wire  [`WIDTH*2-1:0] out
);  
    //Do not modify IO and define
    //But you can modify "output reg  [`WIDTH*2-1:0] out" to "output wire  [`WIDTH*2-1:0] out" if needed.
    //Your code here
   
endmodule
    
module multiplier(
    input  wire [`WIDTH-1:0] X,
    input  wire [`WIDTH-1:0] Y,
    output wire [`WIDTH*2-1:0] out
);
    //You can implement multiplier in this module then istantiate it in module exam_1_A to simplify your code
    //Of course you can implement multiplier in  module exam_1_A, here is just a optional way for you :D
    //You can modify this module I/O if needed.

endmodule