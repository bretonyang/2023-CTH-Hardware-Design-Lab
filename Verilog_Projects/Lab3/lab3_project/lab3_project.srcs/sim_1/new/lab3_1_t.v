`timescale 1ns / 1ps

module lab3_1_t;

reg clk = 1'b1;
reg rst = 1'b1;
reg en = 1'b1;
reg speed = 1'b0;
wire [15:0] led;

always #5 clk = ~clk; // 100M HZ

lab3_1 m1(.clk(clk), .rst(rst), .en(en), .speed(speed), .led(led));

initial begin
    #100 rst = 1'b0;
    #10000
    
    $finish;
end

endmodule
