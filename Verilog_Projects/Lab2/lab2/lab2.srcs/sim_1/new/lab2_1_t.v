`timescale 1ns / 1ps

module test;

reg clk = 1'b0;
reg rst_n = 1'b0;
reg enable = 1'b1;
reg flip = 1'b0;
reg [3:0] max = 4'd4;
reg [3:0] min = 4'd0;
wire direction;
wire [3:0] out;

/* clk signal with 10ns period */
always #5 clk = ~clk;

Parameterized_Ping_Pong_Counter pppc(
    .clk(clk), 
    .rst_n(rst_n), 
    .enable(enable), 
    .flip(flip), 
    .max(max), 
    .min(min), 
    .direction(direction), 
    .out(out)
);

initial begin
    
    // set rst_n to 1'b1 on negedge
    @(negedge clk) rst_n = 1'b1;

    /* condition: flip = 0, enable = 1, rst_n = 1 */
    // min <= out <= max, min = 0, max = 4
    #100
    // min == max == out
    max = 2;
    min = 2;
    #10
    // out is out of range
    max = 13;
    min = 10;
    #10
    // max < min
    max = 9;
    #10
    // max == min, out is out of range
    max = 10;
    #10
    
    /* condition: flip = 0, rst_n = 1 */
    // change enable to 0
    min = 8;
    #40
    @(negedge clk) enable = 1'b0;
    #20
    enable = 1'b1;
    #50

    /* condition: flip = 0, enable = 1 */
    // change rst_n
    max = 5;
    min = 3;
    @(negedge clk) rst_n = 1'b0;
    #10
    @(negedge clk) rst_n = 1'b1;
    #20

    /* condition: enable = 1, rst_n = 1 */
    // change flip (only when min < out < max)
    max = 13;
    min = 0;
    @(posedge clk) flip = 1'b1;
    @(posedge clk) flip = 1'b0;
    #10
    @(negedge clk) flip = 1'b1;
    @(negedge clk) flip = 1'b0;
    #20

    $finish;
end

endmodule
