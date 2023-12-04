module volume_control(
    input clk, // clkDiv13
    input rst,
    input mute, // SW14
    input volUP, // BTNU
    input volDOWN, // BTND
    output [2:0] volume_out // 0: mute, 1~5: normal 
);

    wire volUP_db, volDOWN_db;
    wire volUP_p, volDOWN_p;
    debounce db0 (.clk(clk), .pb(volUP), .pb_debounced(volUP_db));
    debounce db1 (.clk(clk), .pb(volDOWN), .pb_debounced(volDOWN_db));

    onepulse op0 (.clk(clk), .signal(volUP_db), .op(volUP_p));
    onepulse op1 (.clk(clk), .signal(volDOWN_db), .op(volDOWN_p));

    reg [2:0] volume, next_volume;
    
    assign volume_out = (mute == 1'b1) ? 3'd0 : volume;
 
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1) begin
            volume <= 3'd3; // default volume
        end
        else begin
            volume <= next_volume;
        end
    end

    always @(*) begin
        next_volume = volume;

        if (volUP_p == 1'b1) 
            next_volume = (volume == 5) ? 5 : volume + 1;
        else if (volDOWN_p == 1'b1) 
            next_volume = (volume == 1) ? 1 : volume - 1;
    end

endmodule
