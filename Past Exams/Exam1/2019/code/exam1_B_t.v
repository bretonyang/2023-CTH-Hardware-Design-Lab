`timescale 1ns / 1ps
module exam1_B_t;
    reg clk,rst;
    wire [19:0] Fn;
    reg pass = 1;
    exam1_B test(clk,rst,Fn);
    
   initial begin
      clk = 0;
      rst = 1;
      #12
      rst = 0;
      #8
      if(Fn!==1) pass = 0;
      #80
      if(Fn!==55) pass = 0;
      #100
      if(Fn!=6765) pass=0;
      #200
      if(Fn!==831897) pass = 0;
      #100
      if(Fn!==814330) pass = 0;
      #80
      if(Fn!== 1) pass=0;
      #220
      if(Fn!==46368) pass=0;
      #200
      if(pass==1) $display("PASS!");
      else $display("Something wrong!");
      $finish;
     end
    
    always begin
       #5    clk = ~clk;
    end
    always@(negedge clk)begin
        if(!rst) $display("%d",Fn);
    end
endmodule
