module lab4_1 ( 
    input wire clk,
    input wire rst,
    input wire stop,
    input wire start,
    input wire direction,
    output reg [3:0] DIGIT,
    output reg [6:0] DISPLAY,
    output reg [9:0] led
); 
    // states
    parameter INITIAL = 2'b00;
    parameter PREPARE = 2'b01;
    parameter COUNTING = 2'b10;
    parameter RESULT = 2'b11;

    // directions
    parameter UP = 1'b0;
    parameter DOWN = 1'b1;

    // digit code for dash, up, down, P
    parameter D_DASH = 4'd10;
    parameter D_UP = 4'd11;
    parameter D_DOWN = 4'd12;
    parameter D_P = 4'd13;
    parameter D_OFF = 4'd14;

    // clk / 2^13 
    wire clk_div13;
    clock_divider #(13) cd1(.clk(clk), .clk_div(clk_div13));

    // 0.01 period clock
    wire clk_div_0_01;
    clock_divider_0_01 cd_0_01(.clk(clk), .clk_div(clk_div_0_01));

    // processing signals from pushbuttons
    wire stop_debounced, start_debounced, direction_debounced;
    wire stop_pulse, start_pulse, direction_pulse;
    debounce d1(.clk(clk_div13), .pb(stop), .pb_debounced(stop_debounced));
    debounce d2(.clk(clk_div13), .pb(start), .pb_debounced(start_debounced));
    debounce d3(.clk(clk_div13), .pb(direction), .pb_debounced(direction_debounced));
    one_pulse op1(.clk(clk_div13), .pb_in(stop_debounced), .pb_out(stop_pulse));
    one_pulse op2(.clk(clk_div13), .pb_in(start_debounced), .pb_out(start_pulse));
    one_pulse op3(.clk(clk_div13), .pb_in(direction_debounced), .pb_out(direction_pulse));

    // 0.01s / 3s / 5s periods counter
    reg [8:0] counter, next_counter; // since for 5s clock we'll count to 499 => 9 bits

    // DFF & Comb. signals
    reg dir, next_dir;
    reg [1:0] state, next_state;
    reg [9:0] bcd, next_bcd; // BCD counter 
    reg [3:0] num, next_num; // 0 ~ 9, 10(dash), 11(up), 12(down), 13(P), 14(OFF)
    reg [3:0] next_DIGIT;

    // DFF: state, dir
    always @(posedge clk_div13 or posedge rst) begin
        if (rst == 1'b1) begin
            state <= INITIAL;
            dir <= UP;
        end
        else begin
            state <= next_state;
            dir <= next_dir;
        end
    end

    // DFF: DIGIT, num (somehow moving them out makes it work normally when rst == 1)
    always @(posedge clk_div13) begin
        DIGIT <= next_DIGIT;
        num <= next_num;
    end

    // DFF: bcd, counter
    always @(posedge clk_div_0_01 or posedge rst) begin
        if (rst == 1'b1) begin
            bcd <= 10'd0;
            counter <= 9'd0;
        end
        else begin
            bcd <= next_bcd;
            counter <= next_counter;
        end
    end

    // Combinational Logic: next_DIGIT
    always @(*) begin
        next_DIGIT = 4'b1110;
        case (DIGIT)
            4'b1110: next_DIGIT = 4'b1101;
            4'b1101: next_DIGIT = 4'b1011;
            4'b1011: next_DIGIT = 4'b0111;
            4'b0111: next_DIGIT = 4'b1110;
        endcase
    end

    // Combinational Logic: DISPLAY 
    always @(*) begin
        DISPLAY = 7'b111_1111;
        case (num)
            4'd0: DISPLAY = 7'b100_0000;
            4'd1: DISPLAY = 7'b111_1001;
            4'd2: DISPLAY = 7'b010_0100;
            4'd3: DISPLAY = 7'b011_0000;
            4'd4: DISPLAY = 7'b001_1001;
            4'd5: DISPLAY = 7'b001_0010;
            4'd6: DISPLAY = 7'b000_0010;
            4'd7: DISPLAY = 7'b111_1000;
            4'd8: DISPLAY = 7'b000_0000;
            4'd9: DISPLAY = 7'b001_0000;
            D_DASH: DISPLAY = 7'b011_1111;
            D_UP: DISPLAY = 7'b101_1100;
            D_DOWN: DISPLAY = 7'b110_0011;
            D_P: DISPLAY = 7'b000_1100;
            D_OFF: DISPLAY = 7'b111_1111;
        endcase
    end

    // Combinational Logic: LED
    always @(*) begin
        led = 10'b0;
        case (state)
            INITIAL: led = 10'b11_1111_1111;
            PREPARE: led = 10'b0;
            COUNTING: led[bcd / 100] = 1'b1;
            RESULT: begin
                if (counter >= 9'd100 && counter <= 9'd199) led = 10'b0;
                else if (counter >= 9'd300 && counter <= 9'd399) led = 10'b0;
                else led = 10'b11_1111_1111;
            end
        endcase
    end

    // Combinational Logic: next_state, next_dir, next_bcd, next_num, next_counter
    always @(*) begin
        // default values
        next_state = state;
        next_dir = dir;
        next_bcd = bcd;
        next_num = num;
        next_counter = counter;

        case (state)
            INITIAL: begin
                // next_state
                if (start_pulse == 1'b1) next_state = PREPARE;

                // next_dir
                if (direction_pulse == 1'b1) next_dir = (dir == UP) ? DOWN : UP;

                // next_bcd
                if (dir == UP) next_bcd = 10'd0;
                else next_bcd = 10'd999;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = D_DASH;
                    4'b1101: next_num = D_DASH;
                    4'b1011: next_num = (dir == UP) ? D_UP : D_DOWN;
                    4'b0111: next_num = D_DASH;
                endcase

                // next counter
                next_counter = 9'd0;
            end
            PREPARE: begin
                // next_state
                if (counter == 9'd299) next_state = COUNTING;

                // next_bcd
                if (dir == UP) next_bcd = 10'd0;
                else next_bcd = 10'd999;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = D_OFF;
                    4'b1101: next_num = D_OFF;
                    4'b1011: next_num = D_P;
                    4'b0111: next_num = D_OFF;
                endcase

                // next_counter
                if (counter == 9'd299) next_counter = counter;
                else next_counter = counter + 1'b1;
            end
            COUNTING: begin
                // next_state
                if (stop_pulse == 1'b1 || (dir == UP && bcd == 10'd999) || (dir == DOWN && bcd == 10'd0))
                    next_state = RESULT;

                // next_bcd
                if (dir == UP && bcd == 10'd999) next_bcd = 10'd999;
                else if (dir == DOWN && bcd == 10'd0) next_bcd = 10'd0;
                else next_bcd = (dir == UP) ? bcd + 1'b1 : bcd - 1'b1;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = (bcd / 10) % 10; // tens digit
                    4'b1101: next_num = bcd / 100; // hundreds digit
                    4'b1011: next_num = (dir == UP) ? D_UP : D_DOWN;
                    4'b0111: next_num = bcd % 10; // units digit
                endcase

                // next_counter
                next_counter = 9'd0;
            end
            RESULT: begin
                // next_state
                if (start_pulse == 1'b1) next_state = INITIAL;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = (bcd / 10) % 10; // tens digit
                    4'b1101: next_num = bcd / 100; // hundreds digit
                    4'b1011: next_num = (dir == UP) ? D_UP : D_DOWN;
                    4'b0111: next_num = bcd % 10; // units digit
                endcase

                // next_counter
                if (counter == 9'd499) next_counter = counter;
                else next_counter = counter + 1'b1;
            end
        endcase
    end
        
endmodule 

// 0.01 second period clk
module clock_divider_0_01 (
    input wire  clk,
    output reg clk_div  
);
    parameter LIMIT = 19'd499_999; // 500_000 - 1
    reg [18:0] cnt;
    reg [18:0] next_cnt;
    reg next_clk_div;

    always @(posedge clk) begin
        cnt <= next_cnt;
        clk_div <= next_clk_div;
    end

    always @(*) begin
        if (cnt == LIMIT) begin
            next_cnt = 19'd0;
            next_clk_div = ~clk_div;
        end
        else begin
            next_cnt = cnt + 1'b1;
            next_clk_div = clk_div;
        end
    end
endmodule