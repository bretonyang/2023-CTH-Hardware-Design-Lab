`timescale 1ns / 1ps

`define CYC 4

module exam_1_B_tb();

    reg clk = 1'b1, rst = 1'b0;
    reg pass_up = 1'b1, pass_down = 1'b1, pass_all = 1'b1;
    wire [9:0] out;
    integer score;

    exam_1_B exam_1_B_inst(
        .clk(clk), 
        .rst(rst), 
        .out(out)
    );

    always #(`CYC / 2) clk = ~clk;

    initial begin
        //you can uncomment the following statement for debugging
        $monitor("time:%d\tout:%d\t",$time,out);
        @(negedge clk)
        rst = 1'b1;
        @(negedge clk)
        rst = 1'b0;
        
        #24
        if(out != 14) pass_up = 1'b0;
        #20
        if(out != 25) pass_up = 1'b0;
        #24
        if(out != 34) pass_up = 1'b0;
        #52
        if(out != 61) pass_up = 1'b0;
        #60
        if(out != 91) pass_up = 1'b0;
        #60
        if(out != 121) pass_up = 1'b0;
        #80
        if(out != 163) pass_up = 1'b0;
        #20
        if(out != 174) pass_up = 1'b0;
        #84
        if(out != 212) pass_up = 1'b0;
        #32
        if(out != 232) pass_up = 1'b0;
        #4
        if(out != 231) pass_down = 1'b0;
        #20
        if(out != 211) pass_down = 1'b0;
        #24
        if(out != 154) pass_down = 1'b0;
        #32
        if(out != 22) pass_down = 1'b0;
        #4
        if(out != 1) pass_down = 1'b0;
        #4
        if(out != 2) pass_all = 1'b0;
        #200
        if(out != 104) pass_all = 1'b0;
        #68
        if(out != 140) pass_all = 1'b0;
        #164
        if(out != 219) pass_all = 1'b0;

        #4 $display("%d Simulation Finished", $time);
        printscore;
        
        $finish;
    end

    task printscore;
        begin
            score = 0;
            if(pass_up == 1'b1) begin
                $display("Counting Up       [PASS]  10/10");
                score = score + 10;
            end
            else begin
                $display("Counting Up     [FAILED]  0/10");
            end

            if(pass_down == 1'b1) begin
                $display("Counting down     [PASS]  10/10");
                score = score + 10;
            end
            else begin
                $display("Counting down     [FAILED]  0/10");
            end

            if(pass_all == 1'b1) begin
                $display("Count again       [PASS]  10/10");
                score = score + 10;
            end
            else begin
                $display("Count again     [FAILED]  0/10");
            end

            $display("Final Score:    %d/30", score);
            if (score == 30)
                $display(">>>> [PASS] Congrats!");
            else
                $display(">>>> [FAILED] Try again!");
        end
    endtask

endmodule


