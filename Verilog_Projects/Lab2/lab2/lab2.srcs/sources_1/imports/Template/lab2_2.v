`timescale 1ns / 1ps

module Encoder (
    input clk, 
    input rst_n, 
    input [3:0] max, 
    input [3:0] min, 
    input in_valid, 
    input [1:0] mode, 
    input [7:0] in_data, 
    output reg [11:0] out_data, 
    output reg [2:0] state, 
    output wire [3:0] counter_out, /* use wire to connect two module*/
    output wire direction
);

reg [2:0] next_state;

parameter INIT = 3'd0;
parameter GET_DATA = 3'd1;
parameter ENCRYPT_DATA = 3'd2;
parameter OUTPUT_DATA = 3'd3;

reg [3:0] offset_cnt;
reg [3:0] next_offset_cnt;
reg [11:0] output_tmp [7:0];
reg [11:0] next_output_tmp [7:0];
reg [11:0] e; // encrypted message

/* using mode signal to process the flip and enable signal */
wire flip, enable;

/* fill in the following blanks (e.g.: a = (b == 2'b01) ? 1'b1 : 1'b0) */
assign flip = (mode == 2'b01) ? 1'b1 : 1'b0;
assign enable = (mode == 2'b10) ? 1'b0 : 1'b1;

/* instantiate the Parameterized_Ping_Pong_Counter module */
Parameterized_Ping_Pong_Counter pppc(.clk(clk), .rst_n(rst_n), .enable(enable), .max(max), .min(min), .flip(flip), .direction(direction), .out(counter_out));

/* state update */
always@(posedge clk)begin
    if(!rst_n) begin
        state <= INIT;
    end
    else begin
        state <= next_state;
    end
end

/* state transition */
always@(*) begin
    case(state)
    INIT: begin
        if(in_valid) next_state = GET_DATA;
        else next_state = INIT;
    end
    GET_DATA: begin
        if (!in_valid && mode == 2'b10) begin
            next_state = ENCRYPT_DATA;
        end
        else begin
            next_state = GET_DATA;
        end
    end
    ENCRYPT_DATA: begin
        if(offset_cnt == 4'd7) next_state = OUTPUT_DATA;
        else next_state = ENCRYPT_DATA;
    end
    OUTPUT_DATA: begin
        if (offset_cnt == 4'd7) next_state = INIT;
        else next_state = OUTPUT_DATA;
    end
    default: begin
        next_state = state;
    end
    endcase
end

/* counter (this is the offset_cnt in the Practice_2) */
/* offset_cnt */
always@(posedge clk) begin
    if (!rst_n) begin
        offset_cnt <= 4'd0;
    end
    else begin
        offset_cnt <= next_offset_cnt;
    end
end

/* determine the next_offset_cnt value base on the current state */
always@(*) begin
    case(state)
    INIT: begin
        if (in_valid == 1'b1) next_offset_cnt = 4'd0;
        else next_offset_cnt = offset_cnt;
    end
    GET_DATA: begin
        if (!in_valid && mode == 2'b10) next_offset_cnt = 4'd0;
        else next_offset_cnt = offset_cnt + 1'b1;
    end
    ENCRYPT_DATA: begin
        if (offset_cnt == 4'd7) next_offset_cnt = 4'd0;
        else next_offset_cnt = offset_cnt + 1'b1;
    end
    OUTPUT_DATA: begin
        if (offset_cnt == 4'd7) next_offset_cnt = 4'd0;
        else next_offset_cnt = offset_cnt + 1'b1;
    end
    default: begin
        next_offset_cnt = offset_cnt;
    end
    endcase
end

/* data processing */
// storing data
always@(posedge clk) begin
    if(!rst_n) begin
        output_tmp[0] <= 8'd0;
    end
    else begin
        output_tmp[offset_cnt] <= next_output_tmp[offset_cnt];
    end
end

// determine the next_output_tmp value base on the current state 
/* You can store the in_data in the next_output_tmp (by using the value of offset_cnt reg)
    and then process these data in the PROCESS_DATA state */
always@(*) begin
    case(state)
    INIT: begin
        if(in_valid) next_output_tmp[next_offset_cnt] = in_data;
        else next_output_tmp[next_offset_cnt] = output_tmp[next_offset_cnt];
    end
    GET_DATA: begin
        if(in_valid) next_output_tmp[next_offset_cnt] = in_data;
        else next_output_tmp[next_offset_cnt] = output_tmp[next_offset_cnt];
    end
    ENCRYPT_DATA: begin
        e = (output_tmp[offset_cnt] + counter_out) % 256;
        next_output_tmp[offset_cnt] = {e[7:4], 
                                       (e[4] ^ e[5] ^ e[6] ^ e[7]),
                                       e[3:1],
                                       (e[1] ^ e[2] ^ e[3] ^ e[7]),
                                       e[0],
                                       (e[0] ^ e[2] ^ e[3] ^ e[5] ^ e[6]),
                                       (e[0] ^ e[1] ^ e[3] ^ e[4] ^ e[6])};
    end
    default: begin
        next_output_tmp[next_offset_cnt] = output_tmp[next_offset_cnt];
    end
    endcase
end

/* output data */
always @(posedge clk) begin
    if (!rst_n) begin
        out_data <= 12'b0;
    end
    else begin
        /* determine the value of out_data under different circumstances */
        if (state == OUTPUT_DATA && offset_cnt < 4'd7) out_data <= output_tmp[next_offset_cnt];
        else if (state == ENCRYPT_DATA && next_offset_cnt == 4'd0) out_data <= output_tmp[next_offset_cnt];
        else out_data <= 12'b0;
    end
end

endmodule
