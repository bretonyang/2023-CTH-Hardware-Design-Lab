`timescale 1ns/100ps

module test();
    reg [2:0] count;
    wire out;
    integer i;

    majority m(out, count[0], count[1], count[2]);

    // initial #1000 $finish;

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            count = i[2:0];
            #10 // NOTE: important to have delay before displaying, otherwise might display "x"
            $display("in = %b, out = %b", count, out);
        end
    end

endmodule
