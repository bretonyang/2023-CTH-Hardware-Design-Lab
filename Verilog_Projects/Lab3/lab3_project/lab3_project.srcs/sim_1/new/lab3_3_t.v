`timescale 1ns / 1ps

module lab3_3_t;

reg en = 1'b1;
reg rst = 1'b1;
reg clk = 1'b0;
wire [15:0] led;

always #5 clk = ~clk; // 100M HZ

lab3_3 m3(.clk(clk), .rst(rst), .en(en), .led(led));

initial begin
    #100 rst = 1'b0;

    #10000

    $finish;
end

endmodule

// TODO: currently next_led is registering changes due to all snakes, so some snake position may be 
// wrongly updated when clock edge comes. we want to only update the snake that has the clock edge!
