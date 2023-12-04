`timescale 1ns / 1ps

module clock_divider 
    #(parameter n = 25)
    (input clk, output clk_div);

    reg [n - 1:0] counter = 0;
    wire [n - 1:0] next_counter; 

    always @(posedge clk) begin
        counter <= next_counter;
    end

    assign next_counter = counter + 1;
    assign clk_div = counter[n - 1];
endmodule