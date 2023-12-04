`timescale 1ns / 1ps

module lab3_3(
    input clk,
    input rst,
    input en,
    output reg [15:0] led
    );

    parameter LED_INIT = 16'b1000_1100_0000_0111; // LED initial setup
    parameter SNAKE1_INIT = 4'd15; // snake1 initial position
    parameter SNAKE2_INIT = 4'd11;
    parameter SNAKE3_INIT = 4'd2;
    parameter LEFT = 1; // direction
    parameter RIGHT = 0;
    parameter LEFT_WALL = 4'd15; // position of left wall
    parameter RIGHT_WALL = 4'd0;

    parameter DIV1 = 24;
    parameter DIV2 = 25;
    parameter DIV3 = 26;

    reg [15:0] next_led; 
    reg [3:0] snake1_pos, next_snake1_pos; // snake1: [snake1_pos]
    reg [3:0] snake2_pos, next_snake2_pos; // snake2: [snake2_pos:snake2_pos - 1]
    reg [3:0] snake3_pos, next_snake3_pos; // snake3: [snake3_pos:snake3_pos - 2]
    reg snake1_dir, next_snake1_dir; 
    reg snake2_dir, next_snake2_dir;
    reg snake3_dir, next_snake3_dir;

    wire clk_div1, clk_div2, clk_div3;
    wire [DIV1 - 1:0] counter1;
    wire [DIV2 - 1:0] counter2;
    wire [DIV3 - 1:0] counter3;
	
    // speed stuff
	clock_divider_3_3 #(DIV1) div1(.clk(clk), .clk_div(clk_div1), .counter(counter1)); // 6 HZ
    clock_divider_3_3 #(DIV2) div2(.clk(clk), .clk_div(clk_div2), .counter(counter2)); // 3 HZ
    clock_divider_3_3 #(DIV3) div3(.clk(clk), .clk_div(clk_div3), .counter(counter3)); // 1.5 HZ
    
    // state update: LED
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1) begin
            led <= LED_INIT;
        end 
        else if (en == 1'b1  && (counter1 == {1'b0, {(DIV1 - 1){1'b1}}}
                                || counter2 == {1'b0, {(DIV2 - 1){1'b1}}}
                                || counter3 == {1'b0, {(DIV3 - 1){1'b1}}}
                                )) begin
            led <= next_led;
        end
    end
    
    // state update: snake1
    always @(posedge clk_div1 or posedge rst) begin
        if(rst == 1'b1) begin
            snake1_pos <= SNAKE1_INIT;
            snake1_dir <= RIGHT;
        end else if (en == 1'b1) begin
            snake1_pos <= next_snake1_pos;
            snake1_dir <= next_snake1_dir;
        end
    end

    // state update: snake2
    always @(posedge clk_div2 or posedge rst) begin
        if(rst == 1'b1) begin
            snake2_pos <= SNAKE2_INIT;
            snake2_dir <= RIGHT;
        end else if (en == 1'b1) begin
            snake2_pos <= next_snake2_pos;
            snake2_dir <= next_snake2_dir;
        end
    end

    // state update: snake3
    always @(posedge clk_div3 or posedge rst) begin
        if(rst == 1'b1) begin
            snake3_pos <= SNAKE3_INIT;
            snake3_dir <= LEFT;
        end else if (en == 1'b1) begin
            snake3_pos <= next_snake3_pos;
            snake3_dir <= next_snake3_dir;
        end
    end

    // next state combinational logic
    always @(*) begin
        // default value
        next_led = led;
        next_snake1_pos = snake1_pos;
        next_snake1_dir = snake1_dir;
        next_snake2_pos = snake2_pos;
        next_snake2_dir = snake2_dir;
        next_snake3_pos = snake3_pos;
        next_snake3_dir = snake3_dir;

        // snake1 next state
        if (counter1 == {1'b0, {(DIV1 - 1){1'b1}}} || counter1 == (1 << (DIV1 - 1))) begin 
            case (snake1_dir)
                LEFT: begin
                    // check if left side is walkable
                    if (snake1_pos < LEFT_WALL) begin
                        next_snake1_pos = snake1_pos + 1'b1;
                        next_led[snake1_pos] = 1'b0;
                        next_led[next_snake1_pos] = 1'b1;
                    end
                    // else, check if right side is walkable
                    else if (snake1_pos - 1 > snake2_pos) begin
                        next_snake1_pos = snake1_pos - 1'b1;
                        next_led[snake1_pos] = 1'b0;
                        next_led[next_snake1_pos] = 1'b1;
                        next_snake1_dir = RIGHT;
                    end
                    // else, both left & right sides are not walkable, so stay still, and remain direction
                end
                RIGHT: begin
                    // check if right side is walkable
                    if (snake1_pos - 1 > snake2_pos) begin
                        next_snake1_pos = snake1_pos - 1'b1;
                        next_led[snake1_pos] = 1'b0;
                        next_led[next_snake1_pos] = 1'b1;
                    end
                    // else, check if left side is walkable
                    else if (snake1_pos < LEFT_WALL) begin
                        next_snake1_pos = snake1_pos + 1'b1;
                        next_led[snake1_pos] = 1'b0;
                        next_led[next_snake1_pos] = 1'b1;
                        next_snake1_dir = LEFT;
                    end
                    // else, both right & left sides are not walkable, so stay still, and remain direction
                end
            endcase
        end

        // snake2 next state
        if (counter2 == {1'b0, {(DIV2 - 1){1'b1}}} || counter2 == (1 << (DIV2 - 1))) begin
            case (snake2_dir)
                LEFT: begin
                    // check if left side is walkable
                    if (snake2_pos + 1 < snake1_pos) begin
                        next_snake2_pos = snake2_pos + 1'b1;
                        next_led[snake2_pos - 1] = 1'b0;
                        next_led[next_snake2_pos] = 1'b1;
                    end
                    // else, check if right side is walkable
                    else if (snake2_pos - 2 > snake3_pos) begin
                        next_snake2_pos = snake2_pos - 1'b1;
                        next_led[snake2_pos] = 1'b0;
                        next_led[next_snake2_pos - 1] = 1'b1;
                        next_snake2_dir = RIGHT;
                    end
                    // else, both left & right sides are not walkable, so stay still, and remain direction
                end
                RIGHT: begin
                    // check if right side is walkable
                    if (snake2_pos - 2 > snake3_pos) begin
                        next_snake2_pos = snake2_pos - 1'b1;
                        next_led[snake2_pos] = 1'b0;
                        next_led[next_snake2_pos - 1] = 1'b1;
                    end
                    // else, check if left side is walkable
                    else if (snake2_pos + 1 < snake1_pos) begin
                        next_snake2_pos = snake2_pos + 1;
                        next_led[snake2_pos - 1] = 1'b0;
                        next_led[next_snake2_pos] = 1'b1;
                        next_snake2_dir = LEFT;
                    end
                    // else, both right & left sides are not walkable, so stay still, and remain direction
                end
            endcase
        end

        // snake3 next state
        if (counter3 == {1'b0, {(DIV3 - 1){1'b1}}} || counter3 == (1 << (DIV3 - 1))) begin
            case (snake3_dir)
                LEFT: begin
                    // check if left side is walkable
                    if (snake3_pos + 1 < snake2_pos - 1) begin
                        next_snake3_pos = snake3_pos + 1'b1;
                        next_led[snake3_pos - 2] = 1'b0;
                        next_led[next_snake3_pos] = 1'b1;
                    end
                    // else, check if right side is walkable
                    else if (snake3_pos - 2 > RIGHT_WALL) begin
                        next_snake3_pos = snake3_pos - 1'b1;
                        next_led[snake3_pos] = 1'b0;
                        next_led[next_snake3_pos - 2] = 1'b1;
                        next_snake3_dir = RIGHT;
                    end
                    // else, both left & right sides are not walkable, so stay still, and remain direction
                end
                RIGHT: begin
                    // check if right side is walkable
                    if (snake3_pos - 2 > RIGHT_WALL) begin
                        next_snake3_pos = snake3_pos - 1'b1;
                        next_led[snake3_pos] = 1'b0;
                        next_led[next_snake3_pos - 2] = 1'b1;
                    end
                    // else, check if left side is walkable
                    else if (snake3_pos + 1 < snake2_pos - 1) begin
                        next_snake3_pos = snake3_pos + 1'b1;
                        next_led[snake3_pos - 2] = 1'b0;
                        next_led[next_snake3_pos] = 1'b1;
                        next_snake3_dir = LEFT;
                    end
                    // else, both right & left sides are not walkable, so stay still, and remain direction
                end
            endcase
        end
    end
endmodule

module clock_divider_3_3 
    #(parameter n = 25)
    (input clk, output clk_div, output [n - 1:0] counter);

    reg [n - 1:0] cnt = 0;
    wire [n - 1:0] next_cnt; 

    always @(posedge clk) begin
        cnt <= next_cnt;
    end

    assign next_cnt = cnt + 1;
    assign clk_div = cnt[n - 1];
    assign counter = cnt;
endmodule