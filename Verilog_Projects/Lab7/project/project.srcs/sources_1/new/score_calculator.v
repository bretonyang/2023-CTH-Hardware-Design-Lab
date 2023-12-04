module score_calculator(
    input clk,
    input rst,
    input [1:0] state,
    input been_ready,
    input single_key_down,
    input still_playing,
    input [31:0] key_freq,
    input [31:0] freqR,
    output reg [7:0] score
);

parameter [1:0] DEMONSTRATE = 2'b00;
parameter [1:0] PIANO = 2'b01;
parameter [1:0] HELPER = 2'b10;

parameter [31:0] SILENCE = 32'd50_000_000; // silence

reg [7:0] next_score;

always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
        score <= 0;
    end
    else begin
        score <= next_score;
    end
end

always @(*) begin
    next_score = score;

    case (state)    
        DEMONSTRATE: begin
            next_score = 0;
        end
        PIANO: begin
            next_score = 0;
        end
        HELPER: begin
            if ((been_ready && single_key_down)
                && (key_freq != SILENCE && still_playing)
                && (key_freq == freqR))
                next_score = (score == 8'd99) ? 8'd99 : score + 1'b1;
        end
    endcase
end

endmodule
