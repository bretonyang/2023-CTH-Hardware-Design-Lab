module tracker_sensor(
    input clk,
    input rst,
    input left_track,
    input right_track,
    input mid_track,
    input [19:0] distance,
    output reg [2:0] state_out
);

    // TODO: Receive three tracks and make your own policy.
    // Hint: You can use output state to change your action. 
    parameter [2:0] STOP = 3'b000;
    parameter [2:0] FORWARD = 3'b001;
    parameter [2:0] LEFT = 3'b010;
    parameter [2:0] RIGHT = 3'b011;
    parameter [2:0] H_LEFT = 3'b100;
    parameter [2:0] H_RIGHT = 3'b101;
    parameter [2:0] BACK_LEFT = 3'b110;
    parameter [2:0] BACK_RIGHT = 3'b111;

    wire [2:0] track = {~left_track, ~mid_track, ~right_track};
    reg [2:0] pre_track, next_pre_track; // last track that's not 000
    reg [2:0] state, next_state;
    wire clk_div;
    reg keep_backward_100, next_keep_backward_100, keep_backward_001, next_keep_backward_001;

    clk_div_0_5 inst(
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div)
    );

    always @(*) begin
        state_out = (clk_div) ? state : STOP; 
    end

    always @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= STOP;
            pre_track <= 3'b000;
            keep_backward_001 <= 0;
            keep_backward_100 <= 0;
        end
        else begin
            state <= next_state;
            pre_track <= next_pre_track;
            keep_backward_001 <= next_keep_backward_001;
            keep_backward_100 <= next_keep_backward_100;
        end
    end

    always @(*) begin
        next_state = state;
        next_pre_track = (track != 3'b000) ? track : pre_track;
        next_keep_backward_001 = keep_backward_001;
        next_keep_backward_100 = keep_backward_100;

        case (track)
            3'b010: begin
                // next_keep_backward_001 = 0;
                // next_keep_backward_100 = 0;
                next_state = FORWARD;
            end
            3'b001: begin
                next_state = BACK_RIGHT; // backward until 010
                // next_keep_backward_001 = 1;
            end
            3'b100: begin
                next_state = BACK_LEFT; // backward until 010
                // next_keep_backward_100 = 1;
            end
            3'b011: next_state = RIGHT;
            3'b110: next_state = LEFT;
            3'b111: next_state = FORWARD;
            3'b000: next_state = (pre_track[0] == 1'b1) ? H_RIGHT : ((pre_track[2] == 1'b1) ? H_LEFT : FORWARD);
            3'b101: next_state = FORWARD;
        endcase

        if (distance < 20) next_state = STOP;
    end

endmodule

module clk_div_0_5(
    input clk,
    input rst,
    output reg clk_div
);

    reg [31:0] counter, next_counter;
    reg next_clk_div;

    always @(posedge clk, posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_div <= 0;
        end
        else begin
            counter <= next_counter;
            clk_div <= next_clk_div;
        end
    end

    always @(*) begin
        next_counter = counter + 1'b1;
        next_clk_div = clk_div;

        if (counter < 80_000_000) next_clk_div = 1;
        else if (counter < 100_000_000) next_clk_div = 0;
        else next_counter = 0;
    end

endmodule