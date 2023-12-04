module freq_out_calculator(
    input [1:0] state,
    input [31:0] key_freq,
    input still_playing,
    input single_key_down,
    input [31:0] freqL,
    input [31:0] freqR,
    output reg [31:0] freq_outL,
    output reg [31:0] freq_outR
);

parameter [1:0] DEMONSTRATE = 2'b00;
parameter [1:0] PIANO = 2'b01;
parameter [1:0] HELPER = 2'b10;

parameter [31:0] SILENCE = 32'd50_000_000;

// Note: gen makes no sound, if note_div = 50_000_000 / `silence = 1
// CNT_MAX = 100M / freq / 2
always @(*) begin
    // silence by default
    freq_outL = SILENCE;
    freq_outR = SILENCE;

    case (state)
        DEMONSTRATE: begin
            freq_outL = freqL; 
            freq_outR = freqR;
        end
        PIANO: begin
            if (single_key_down) begin
                freq_outL = key_freq;
                freq_outR = key_freq;
            end
        end
        HELPER: begin
            if (still_playing && single_key_down) begin
                freq_outL = key_freq;
                freq_outR = key_freq;
            end
        end
    endcase
end

endmodule
