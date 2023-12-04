`timescale 1ns/1ps

module Parameterized_Ping_Pong_Counter (
    input clk, 
    input rst_n, 
    input enable, 
    input flip, 
    input [3:0] max, 
    input [3:0] min, 
    output reg direction, 
    output reg [3:0] out
);

// Output signals can be reg or wire
// add your design here
reg next_direction;
reg [3:0] next_out;

/* state update (sequential circuit) */
always @(posedge clk) begin
    if (rst_n == 1'b0) begin
        out <= min;
        direction <= 1'b1;
    end
    else if (enable == 1'b1) begin
        out <= next_out;
        direction <= next_direction;
    end
end

/* direction transition */
always @(*) begin
    next_direction = direction;

    // Note: flip == 1'b1 only when out < max && out > min
    if (flip == 1'b1) begin 
        next_direction = ~direction;
    end
    else if (max > min && ((out == max && direction) || (out == min && ~direction))) begin
        next_direction = ~direction;
    end
end

/* out transition */
always @(*) begin
    next_out = out;
    
    if (flip == 1'b1) begin
        next_out = (direction ? out - 1'b1 : out + 1'b1);
    end
    else if (max > min && out <= max && out >= min) begin
        // touch the border 
        if ((out == max && direction) || (out == min && ~direction)) begin
            next_out = (direction ? out - 1'b1 : out + 1'b1);
        end
        else begin
            next_out = (direction ? out + 1'b1 : out - 1'b1);
        end
    end
end

endmodule
