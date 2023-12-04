module lab4_2 ( 
    input wire clk,
    input wire rst,
    input wire Digit_1,
    input wire Digit_2,
    input wire Digit_3,
    input wire stop,
    input wire start,
    input wire increase,
    input wire decrease,
    input wire direction,
    output reg [3:0] DIGIT,
    output reg [6:0] DISPLAY,
    output reg [15:0] led
); 

    // states
    parameter INITIAL = 2'b00;
    parameter COUNTING = 2'b01;
    parameter FAIL = 2'b10;
    parameter SUCCESS = 2'b11;

    // directions
    parameter UP = 1'b0;
    parameter DOWN = 1'b1;

    // digit code for dash, up, down, F, S
    parameter D_DASH = 4'd10;
    parameter D_UP = 4'd11;
    parameter D_DOWN = 4'd12;
    parameter D_F = 4'd13;
    parameter D_S = 4'd14;

    // clk / 2^13 
    wire clk_div13;
    clock_divider #(13) cd1(.clk(clk), .clk_div(clk_div13));

    // 0.01 period clock
    wire clk_div_0_01;
    clock_divider2_0_01 cd2_0_01(.clk(clk), .clk_div(clk_div_0_01));

    // processing signals from pushbuttons
    wire stop_db, start_db, direction_db, increase_db, decrease_db;
    wire stop_pulse, start_pulse, direction_pulse, increase_pulse, decrease_pulse;
    debounce d1(.clk(clk_div13), .pb(stop), .pb_debounced(stop_db));
    debounce d2(.clk(clk_div13), .pb(start), .pb_debounced(start_db));
    debounce d3(.clk(clk_div13), .pb(direction), .pb_debounced(direction_db));
    debounce d4(.clk(clk_div_0_01), .pb(increase), .pb_debounced(increase_db));
    debounce d5(.clk(clk_div_0_01), .pb(decrease), .pb_debounced(decrease_db));
    one_pulse op1(.clk(clk_div13), .pb_in(stop_db), .pb_out(stop_pulse));
    one_pulse op2(.clk(clk_div13), .pb_in(start_db), .pb_out(start_pulse));
    one_pulse op3(.clk(clk_div13), .pb_in(direction_db), .pb_out(direction_pulse));
    one_pulse op4(.clk(clk_div_0_01), .pb_in(increase_db), .pb_out(increase_pulse));
    one_pulse op5(.clk(clk_div_0_01), .pb_in(decrease_db), .pb_out(decrease_pulse));

    // 0.01s / 3s / 5s periods counter
    reg [8:0] counter, next_counter; // counter for COUNTING state: 3 sec
    reg [8:0] counter2, next_counter2; // counter for FAIL/SUCCESS states: 5 sec

    // DFF & Comb. signals
    reg dir, next_dir;
    reg [1:0] state, next_state;
    reg [9:0] bcd, next_bcd; // BCD counter 
    reg [9:0] bcd_guess, next_bcd_guess; // player's BCD guessing counter
    reg [3:0] num, next_num; // 0 ~ 9, 10(dash), 11(up), 12(down), 13(F), 14(S)
    reg [3:0] next_DIGIT;

    reg [9:0] left_bound, right_bound; // temp. variable for checking fail/success in COUNTING state
    reg [9:0] tmp_bcd_d1, tmp_bcd_d2, tmp_bcd_d3; // temp. digits for bcd in INITIAL state

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

    // DFF: bcd, counter
    always @(posedge clk_div_0_01 or posedge rst) begin
        if (rst == 1'b1) begin
            bcd <= 10'd0;
            bcd_guess <= 10'd0;
            counter <= 9'd0;
            counter2 <= 9'd0;
        end
        else begin
            bcd <= next_bcd;
            bcd_guess <= next_bcd_guess;
            counter <= next_counter;
            counter2 <= next_counter2;
        end
    end

    // DFF: DIGIT, num (somehow moving them out makes it work normally when rst == 1)
    always @(posedge clk_div13) begin
        DIGIT <= next_DIGIT;
        num <= next_num;
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
            D_F: DISPLAY = 7'b000_1110;
            D_S: DISPLAY = 7'b001_0010;
        endcase
    end

    // Combinational Logic: LED
    always @(*) begin
        led = 16'b0;
        case (state)
            INITIAL: led = 16'b1111_1111_1111_1111;
            COUNTING: begin
                if (counter < 9'd300) led = 16'b1111_1111_1111_1111;
                else led = 16'b0;
            end
            FAIL: begin
                if (counter2 / 100 == 1 || counter2 / 100 == 3 || counter2 / 100 == 5) led = 16'b0;
                else led = 16'b1111_1111_1111_1111;
            end
            SUCCESS: begin
                if (counter2 / 100 == 1 || counter2 / 100 == 3) led = 16'b0;
                else led = 16'b1111_1111_1111_1111;
            end
        endcase
    end

    // Combinational Logic: next_state, next_dir, next_bcd, next_num, next_counter
    always @(*) begin
        // default values
        next_state = state;
        next_dir = dir;
        next_bcd = bcd;
        next_bcd_guess = bcd_guess;
        next_num = num;
        next_counter = counter;
        next_counter2 = counter2;

        case (state)
            INITIAL: begin
                // next_state
                if (start_pulse == 1'b1) next_state = COUNTING;

                // next_dir
                if (direction_pulse == 1'b1) next_dir = (dir == UP) ? DOWN : UP;

                // next_bcd
                tmp_bcd_d1 = bcd % 10;
                tmp_bcd_d2 = (bcd / 10) % 10;
                tmp_bcd_d3 = bcd / 100;
                if (increase_pulse == 1'b1) begin
                    if (Digit_1 == 1'b1) tmp_bcd_d1 = (bcd % 10 == 9) ? 10'd0 : (bcd % 10 + 10'd1);
                    if (Digit_2 == 1'b1) tmp_bcd_d2 = ((bcd / 10) % 10 == 9) ? 10'd0 : ((bcd / 10) % 10 + 10'd1);
                    if (Digit_3 == 1'b1) tmp_bcd_d3 = (bcd / 100 == 9) ? 10'd0 : (bcd / 100 + 10'd1);
                    next_bcd = 100 * tmp_bcd_d3 + 10 * tmp_bcd_d2 + tmp_bcd_d1;
                end 
                if (decrease_pulse == 1'b1) begin
                    if (Digit_1 == 1'b1) tmp_bcd_d1 = (bcd % 10 == 0) ? 10'd9 : (bcd % 10 - 10'd1);
                    if (Digit_2 == 1'b1) tmp_bcd_d2 = ((bcd / 10) % 10 == 0) ? 10'd9 : ((bcd / 10) % 10 - 10'd1);
                    if (Digit_3 == 1'b1) tmp_bcd_d3 = (bcd / 100 == 0) ? 10'd9 : (bcd / 100 - 10'd1);
                    next_bcd = 100 * tmp_bcd_d3 + 10 * tmp_bcd_d2 + tmp_bcd_d1;
                end

                // next_bcd_guess
                if (dir == UP) next_bcd_guess = 10'd0;
                else next_bcd_guess = 10'd999;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = (bcd / 10) % 10; // tens digit
                    4'b1101: next_num = bcd / 100; // hundreds digit
                    4'b1011: next_num = (dir == UP) ? D_UP : D_DOWN;
                    4'b0111: next_num = bcd % 10; // units digit
                endcase

                // next counter, next_counter2
                next_counter = 9'd0;
                next_counter2 = 9'd0;
            end
            COUNTING: begin
                // next_state
                if ((dir == UP && bcd_guess == 10'd999) || (dir == DOWN && bcd_guess == 10'd0)) begin
                    next_state = FAIL;
                end
                else if (stop_pulse == 1'b1) begin
                    left_bound = (bcd < 10'd100) ? 10'd0 : bcd - 10'd100;
                    right_bound = (bcd > 10'd899) ? 10'd999 : bcd + 10'd100;
                    if (bcd_guess >= left_bound && bcd_guess <= right_bound) next_state = SUCCESS;
                    else next_state = FAIL;
                end

                // next_bcd_guess
                if (dir == UP && bcd_guess == 10'd999) next_bcd_guess = 10'd999;
                else if (dir == DOWN && bcd_guess == 10'd0) next_bcd_guess = 10'd0;
                else next_bcd_guess = (dir == UP) ? bcd_guess + 1'b1 : bcd_guess - 1'b1;

                // next_num 
                case (DIGIT)
                    4'b1110: next_num = (counter < 9'd300) ? ((bcd_guess / 10) % 10) : D_DASH; // 10's digit
                    4'b1101: next_num = (counter < 9'd300) ? (bcd_guess / 100) : D_DASH; // 100's digit
                    4'b1011: next_num = (dir == UP) ? D_UP : D_DOWN;
                    4'b0111: next_num = (counter < 9'd300) ? (bcd_guess % 10) : D_DASH; // unit digit
                endcase

                // next_counter
                if (counter < 9'd300) next_counter = counter + 1'b1;
                // next_counter2
                next_counter2 = 9'd0;
            end
            FAIL: begin
                // next_state
                if (start_pulse == 1'b1) next_state = INITIAL;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = (bcd_guess / 10) % 10; // tens digit
                    4'b1101: next_num = bcd_guess / 100; // hundreds digit
                    4'b1011: next_num = D_F;
                    4'b0111: next_num = bcd_guess % 10; // units digit
                endcase

                // next_counter
                next_counter = 9'd0;
                // next_counter2
                if (counter2 == 9'd500) next_counter2 = counter2;
                else next_counter2 = counter2 + 1'b1;
            end
            SUCCESS: begin
                // next_state
                if (start_pulse == 1'b1) next_state = INITIAL;

                // next_num
                case (DIGIT)
                    4'b1110: next_num = (bcd_guess / 10) % 10; // tens digit
                    4'b1101: next_num = bcd_guess / 100; // hundreds digit
                    4'b1011: next_num = D_S;
                    4'b0111: next_num = bcd_guess % 10; // units digit
                endcase

                // next_counter
                next_counter = 9'd0;
                // next_counter2
                if (counter2 == 9'd499) next_counter2 = counter2;
                else next_counter2 = counter2 + 1'b1;
            end
        endcase
    end

endmodule 

// 0.01 second period clk
module clock_divider2_0_01 (
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