`timescale 1ns/100ps
module exam1_A_t(
output reg [2:0] a,
output reg [2:0] b,
output reg [2:0] c,
output reg [1:0] sel,
input wire [3:0] d,
input neg
);

exam1_A alu(.a(a),.b(b),.c(c),.sel(sel),.d(d),.neg(neg));
reg pass;

initial begin
    #0 pass=1'b1; c=3'bxxx; 
    $display("Starting simulation");
    //$monitor("Time :%d sel=%d\ta=%d\tb=%d\tc=%d\td=%d\t neg=%b",$time, sel, a, b, c, d, neg);

    #20 sel=2'd0;  a=3'd2;  b=3'd5;
    #20 if (d != 4'd7	 || neg != 1'b0) printerror;

    #20 sel=2'd0;  a=3'd7;  b=3'd7;
    #20 if (d != 4'd14  || neg != 1'b0) printerror;


    #20 sel=2'd1;  a=3'd6;  b=3'd2;
    #20 if (d != 4'd4	 || neg != 1'b0) printerror;

    #20 sel=2'd1;  a=3'd4;  b=3'd7;
    #20 if (d != 4'd3	 || neg != 1'b1) printerror;


    #20 sel=2'd2;  a=3'd2;  b=3'd2;  c=3'd0;
    #20 if (d != 4'd0	 || neg != 1'b0) printerror;

    #20 sel=2'd2;  a=3'd4;  b=3'd1;  c=3'd1;
    #20 if (d != 4'd4	 || neg != 1'b0) printerror;

    #20 sel=2'd2;  a=3'd4;  b=3'd6;  c=3'd5;
    #20 if (d != 4'd7	 || neg != 1'b0) printerror;

    #20 sel=2'd2;  a=3'd5;  b=3'd4;  c=3'd7;
    #20 if (d != 4'd6	 || neg != 1'b0) printerror;


    #20 sel=2'd3;  a=3'd4;  b=3'd1;  c=3'd0;
    #20 if (d != 4'd0	 || neg != 1'b0) printerror;

    #20 sel=2'd3;  a=3'd3;  b=3'd1;  c=3'd3;
    #20 if (d != 4'd1	 || neg != 1'b0) printerror;

    #20 sel=2'd3;  a=3'd7;  b=3'd6;  c=3'd4;
    #20 if (d != 4'd4	 || neg != 1'b0) printerror;

    #20 sel=2'd3;  a=3'd3;  b=3'd2;  c=3'd7;
    #20 if (d != 4'd2	 || neg != 1'b0) printerror;


    #50 $display("%g Terminating simulation...", $time);

    if (pass)
        $display(">>>> [PASS] Congratulations!");
    else
        $display(">>>> [ERROR] Try it again!");
    $finish;
end

task printerror;
    begin
        pass = 1'b0;
        $display("  Error:\tsel=%d\ta=%d\tb=%d\tc=%d\td=%d\t neg=%b", sel, a, b, c, d, neg);
    end
endtask

endmodule
