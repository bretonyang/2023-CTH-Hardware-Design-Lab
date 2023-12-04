`timescale 1ns/1ps

module  Counter_Practice(
    input clk, 
    input rst_n, 
    output reg [3:0] out
);
reg [3:0] next_out;

always @(posedge clk) begin
    if(!rst_n) begin
        out <= 4'd0;
    end
    else begin
        out <= next_out;
    end
end

always@(*) begin
    if(out == 4'd7) begin
        next_out = 4'd0;
    end
    else begin
        next_out = out + 1'b1;
    end
end
endmodule