`timescale 1ns / 1ps

module test;

reg clk = 1'b1;
reg rst_n = 1'b1;
reg [3:0] max = 4'd4;
reg [3:0] min = 4'd0;
reg in_valid = 1'b0;
reg [1:0] mode = 2'b00;
reg [7:0] in_data;
wire [11:0] out_data;
wire [2:0] state;
wire [3:0] counter_out;
wire direction;

always #5 clk = ~clk;

Encoder enc(
    .clk(clk), 
    .rst_n(rst_n), 
    .max(max),
    .min(min),
    .in_valid(in_valid),
    .mode(mode),
    .in_data(in_data), 
    .out_data(out_data), 
    .state(state),
    .counter_out(counter_out),
    .direction(direction)
);

initial begin
    @(negedge clk) rst_n = 1'b0;
    @(negedge clk) rst_n = 1'b1;
    
    @(negedge clk) begin
        in_valid = 1'b1;
        in_data = 8'd0;
    end

    repeat(8) begin
        in_data = in_data + 8'd2;
        #10;
    end
    @(negedge clk) begin
        in_valid = 1'b0;
        mode = 2'b10;
    end

    #180;
    @(negedge clk) in_data = 6'b0;
    @(negedge clk) in_valid = 1'b1;
    @(negedge clk) in_data = 6'd60;
    #70
    @(negedge clk) in_valid = 1'b0;
    #190
    
    @(negedge clk) in_valid = 1'b1;
    in_data = 6'd60;
    repeat(8) begin
        in_data = in_data - 1'b1;
        #10;
    end
    @(negedge clk) in_valid = 1'b0;
    #180
    $finish;
end
endmodule
