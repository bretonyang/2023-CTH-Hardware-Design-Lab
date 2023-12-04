`timescale 1ns / 1ps

module lab3_1(
    input clk,
    input rst,
    input en,
    input speed,
    output reg [15:0] led
    );

    parameter S0 = 16'b0;
    parameter S1 = 16'b1000_1000_1000_1000;
    parameter S2 = 16'b1100_1100_1100_1100;
    parameter S3 = 16'b1110_1110_1110_1110;
    parameter S4 = 16'b1111_1111_1111_1111;

    wire clk_div25; // 3 HZ
    wire clk_div27; // 0.75 HZ
    wire local_clk;
    reg [15:0] next_led;

    // clk speed setup 
    clock_divider_3_1 #(25) div1(.clk(clk), .clk_div(clk_div25));
    clock_divider_3_1 #(27) div2(.clk(clk), .clk_div(clk_div27));
    assign local_clk = (speed) ? clk_div25 : clk_div27;

    // state update
    always @(posedge local_clk or posedge rst) begin
        if (rst == 1'b1) begin
            led <= S0;
        end
        else if (en == 1'b1) begin
            led <= next_led;
        end
    end

    // combinational logic
    always @(*) begin
        next_led = S0;
        case (led)
            S0: next_led = S1;
            S1: next_led = S2;
            S2: next_led = S3;
            S3: next_led = S4;
            S4: next_led = S0;
        endcase
    end
endmodule

module clock_divider_3_1 
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
