`timescale 1ns/100ps

module majority (out, a, b, c);
    output out;
    input a, b, c;
    wire out = (a & b) | (a & c) | (b & c);
endmodule