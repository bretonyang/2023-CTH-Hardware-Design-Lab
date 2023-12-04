`timescale 1ns / 1ps

module lab3_2 (
    input clk,
    input rst,
    input en,
    input speed,
    input dir,
    output reg [15:0] led
    );

    // states
    parameter REGULAR = 2'b00;
    parameter ESCAPE = 2'b01;
    parameter SHINING = 2'b10;
 
    // Regular mode LED outputs
    parameter S0 = 16'b0;
    parameter S1 = 16'b1000_1000_1000_1000;
    parameter S2 = 16'b1100_1100_1100_1100;
    parameter S3 = 16'b1110_1110_1110_1110;
    parameter S4 = 16'b1111_1111_1111_1111;

    wire local_clk, clk_div24, clk_div26;
    reg [15:0] next_led;
    reg [1:0] state, next_state;
    reg [3:0] counter, next_counter;
	
    // speed stuff
	clock_divider_3_2 #(24) div1(.clk(clk), .clk_div(clk_div24)); // 6 HZ
    clock_divider_3_2 #(26) div2(.clk(clk), .clk_div(clk_div26)); // 1.5 HZ
    assign local_clk = (speed) ? clk_div24 : clk_div26;
    
    // state update
    always @(posedge local_clk or posedge rst) begin
        if(rst == 1'b1) begin
            state <= REGULAR;
            led <= S0;
            counter <= 4'b0;
        end else if (en == 1'b1) begin
            state <= next_state;
            led <= next_led;
            counter <= next_counter;
        end
    end

    // combinational logic
    always @(*) begin
        // default value
        next_state = state;
        next_led = led;
        next_counter = counter;

        case (state)
            REGULAR: begin
                // next_state
                if (counter == 4'd14) next_state = ESCAPE;
                else next_state = REGULAR;

                // next_counter
                if (counter == 4'd14) next_counter = 4'b0;
                else next_counter = counter + 1'b1;

                // next_led
                if (counter == 4'd14) next_led = led;
                else begin
                    next_led = led;
                    case (led)
                        S0: next_led = S1;
                        S1: next_led = S2;
                        S2: next_led = S3;
                        S3: next_led = S4;
                        S4: next_led = S0;
                    endcase
                end
            end 
            ESCAPE: begin
                if (dir == 1'b0) begin
                    // wait for 1 cycle and change state
                    if (led == 16'b0) begin
                        if (counter == 4'b1) begin
                            next_state = SHINING;
                            next_counter = 4'b0;
                            next_led = led;
                        end
                        else begin
                            next_state = ESCAPE;
                            next_counter = 4'd1;
                            next_led = led;
                        end
                    end
                    // turn the left most 2 LEDs from ON to OFF
                    else begin
                        next_state = ESCAPE;
                        next_led = led >> 2;
                        next_counter = 4'b0;
                    end
                end
                else begin
                    // wait for 1 cycle and change state
                    if (led == 16'b1111_1111_1111_1111) begin
                        if (counter == 1'b1) begin
                            next_state = REGULAR;
                            next_counter = 4'b0;
                            next_led = 16'b0;
                        end
                        else begin
                            next_state = ESCAPE;
                            next_counter = 4'd1;
                            next_led = led;
                        end
                    end
                    // turn the 2 right most OFF LEDs to ON
                    else begin
                        next_state = ESCAPE;
                        next_led = (led << 2) | 16'b11;
                        next_counter = 4'b0;
                    end
                end
            end
            SHINING: begin
                // next_state
                if (counter == 4'd9) next_state = REGULAR;
                else next_state = SHINING;

                // next_led
                next_led = ~led;

                // next_counter
                if (counter == 4'd9) next_counter = 4'b0;
                else next_counter = counter + 1;
            end
        endcase
    end

endmodule


module clock_divider_3_2 
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