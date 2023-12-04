`timescale 1ns / 1ps

module lab3_3(
    input clk,
    input rst,
    input en,
    output reg [15:0] led
    );

    parameter SNAKE1_INIT = 4'd15; // snake1 initial position
    parameter SNAKE2_INIT = 4'd11;
    parameter SNAKE3_INIT = 4'd2;
    parameter LEFT = 1; // direction
    parameter RIGHT = 0;
    parameter LEFT_WALL = 4'd15; // position of left wall
    parameter RIGHT_WALL = 4'd0;

    reg [3:0] snake1_pos, next_snake1_pos; // snake1: [snake1_pos]
    reg [3:0] snake2_pos, next_snake2_pos; // snake2: [snake2_pos, snake2_pos - 1]
    reg [3:0] snake3_pos, next_snake3_pos; // snake3: [snake3_pos, snake3_pos - 2]
    reg snake1_dir, next_snake1_dir; 
    reg snake2_dir, next_snake2_dir;
    reg snake3_dir, next_snake3_dir;
	
    // speed stuff
    wire clk_div1, clk_div2, clk_div3;
	clock_divider_3_3 #(24) div1(.clk(clk), .clk_div(clk_div1)); // 6 HZ
    clock_divider_3_3 #(25) div2(.clk(clk), .clk_div(clk_div2)); // 3 HZ
    clock_divider_3_3 #(26) div3(.clk(clk), .clk_div(clk_div3)); // 1.5 HZ

    // LED combination logic
    always @(*) begin
        led = (16'b1 << snake1_pos) | (16'b11 << (snake2_pos - 1)) | (16'b111 << (snake3_pos - 2));
    end
    
    // DISCUSSION 2 TEST
    always @(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            snake1_dir <= RIGHT;
            snake2_dir <= RIGHT;
            snake3_dir <= LEFT;
        end else if (en == 1'b1) begin
            snake1_dir <= next_snake1_dir;
            snake2_dir <= next_snake2_dir;
            snake3_dir <= next_snake3_dir;
        end
    end

    // state update: snake1
    always @(posedge clk_div1 or posedge rst) begin
        if(rst == 1'b1) begin
            snake1_pos <= SNAKE1_INIT;
            // snake1_dir <= RIGHT;
        end else if (en == 1'b1) begin
            snake1_pos <= next_snake1_pos;
            // snake1_dir <= next_snake1_dir;
        end
    end

    // state update: snake2
    always @(posedge clk_div2 or posedge rst) begin
        if(rst == 1'b1) begin
            snake2_pos <= SNAKE2_INIT;
            // snake2_dir <= RIGHT;
        end else if (en == 1'b1) begin
            snake2_pos <= next_snake2_pos;
            // snake2_dir <= next_snake2_dir;
        end
    end

    // state update: snake3
    always @(posedge clk_div3 or posedge rst) begin
        if(rst == 1'b1) begin
            snake3_pos <= SNAKE3_INIT;
            // snake3_dir <= LEFT;
        end else if (en == 1'b1) begin
            snake3_pos <= next_snake3_pos;
            // snake3_dir <= next_snake3_dir;
        end
    end

    // SNAKE next state combinational logic (all 3 snakes together)
    always @(*) begin
        // default value
        next_snake1_pos = snake1_pos;
        next_snake1_dir = snake1_dir;
        next_snake2_pos = snake2_pos;
        next_snake2_dir = snake2_dir;
        next_snake3_pos = snake3_pos;
        next_snake3_dir = snake3_dir;

        // snake1 next state
        case (snake1_dir)
            LEFT: begin
                // check if left side is walkable
                if (snake1_pos < LEFT_WALL) begin
                    next_snake1_pos = snake1_pos + 1'b1;
                end
                // else, check if right side is walkable
                else if (snake1_pos - 1 > snake2_pos) begin
                    next_snake1_pos = snake1_pos - 1'b1;
                    next_snake1_dir = RIGHT;
                end
                // else, both left & right sides are not walkable, so stay still, and remain direction
            end
            RIGHT: begin
                // check if right side is walkable
                if (snake1_pos - 1 > snake2_pos) begin
                    next_snake1_pos = snake1_pos - 1'b1;
                end
                // else, check if left side is walkable
                else if (snake1_pos < LEFT_WALL) begin
                    next_snake1_pos = snake1_pos + 1'b1;
                    next_snake1_dir = LEFT;
                end
                // else, both right & left sides are not walkable, so stay still, and remain direction
            end
        endcase

        // snake2 next state
        case (snake2_dir)
            LEFT: begin
                // check if left side is walkable
                if (snake2_pos + 1 < snake1_pos) begin
                    next_snake2_pos = snake2_pos + 1'b1;
                end
                // else, check if right side is walkable
                else if (snake2_pos - 2 > snake3_pos) begin
                    next_snake2_pos = snake2_pos - 1'b1;
                    next_snake2_dir = RIGHT;
                end
                // else, both left & right sides are not walkable, so stay still, and remain direction
            end
            RIGHT: begin
                // check if right side is walkable
                if (snake2_pos - 2 > snake3_pos) begin
                    next_snake2_pos = snake2_pos - 1'b1;
                end
                // else, check if left side is walkable
                else if (snake2_pos + 1 < snake1_pos) begin
                    next_snake2_pos = snake2_pos + 1;
                    next_snake2_dir = LEFT;
                end
                // else, both right & left sides are not walkable, so stay still, and remain direction
            end
        endcase

        // snake3 next state
        case (snake3_dir)
            LEFT: begin
                // check if left side is walkable
                if (snake3_pos + 1 < snake2_pos - 1) begin
                    next_snake3_pos = snake3_pos + 1'b1;
                end
                // else, check if right side is walkable
                else if (snake3_pos - 2 > RIGHT_WALL) begin
                    next_snake3_pos = snake3_pos - 1'b1;
                    next_snake3_dir = RIGHT;
                end
                // else, both left & right sides are not walkable, so stay still, and remain direction
            end
            RIGHT: begin
                // check if right side is walkable
                if (snake3_pos - 2 > RIGHT_WALL) begin
                    next_snake3_pos = snake3_pos - 1'b1;
                end
                // else, check if left side is walkable
                else if (snake3_pos + 1 < snake2_pos - 1) begin
                    next_snake3_pos = snake3_pos + 1'b1;
                    next_snake3_dir = LEFT;
                end
                // else, both right & left sides are not walkable, so stay still, and remain direction
            end
        endcase
    end
endmodule

module clock_divider_3_3 
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