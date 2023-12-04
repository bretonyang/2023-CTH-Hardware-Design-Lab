`define WIDTH 4
`define DELAY 10
`define RANDOMTEST 20
module exam_1_A_tb(

);

    reg [2:0]select;
    reg pass_ADD;
    reg pass_AND;
    reg pass_MUL;
    reg pass_DEFAULT;
    reg  [`WIDTH-1:0] X;
    reg  [`WIDTH-1:0] Y;
    wire [`WIDTH*2-1:0] out;
    integer i;
    integer score;

    exam_1_A ALU(
        .select(select),
        .X(X),
        .Y(Y),
        .out(out)
    );

    initial begin
        //you can uncomment the following statement for debugging
        //$monitor("%d\tX:%d\tY:%d\tselect:%d\tout:%d\t",$time,X,Y,select,out);
        #0 pass_ADD=1'b1; pass_AND=1'b1; pass_MUL=1'b1; pass_DEFAULT=1'b1; $display("%d Starting Simulation", $time);

        // ADD case
        #`DELAY X=8; Y=5; select=0;
        #`DELAY if(out != X+Y) printIncorrect(select); 
        #`DELAY X=15; Y=15; select=0;
        #`DELAY if(out != X+Y) printIncorrect(select); 
        #`DELAY X=0; Y=1; select=0;
        #`DELAY if(out != X+Y) printIncorrect(select); 
        #`DELAY X=4; Y=3; select=0;
        #`DELAY if(out != X+Y) printIncorrect(select); 
        #`DELAY X=9; Y=10; select=0;
        #`DELAY if(out != X+Y) printIncorrect(select); 

        //AND case
        #`DELAY X=8; Y=5; select=1;
        #`DELAY if(out != {{`WIDTH{1'b1}}, X&Y}) printIncorrect(select); 
        #`DELAY X=0; Y=15; select=1;
        #`DELAY if(out != {{`WIDTH{1'b1}}, X&Y}) printIncorrect(select); 
        #`DELAY X=0; Y=0; select=1;
        #`DELAY if(out != {{`WIDTH{1'b1}}, X&Y}) printIncorrect(select); 
        #`DELAY X=7; Y=6; select=1;
        #`DELAY if(out != {{`WIDTH{1'b1}}, X&Y}) printIncorrect(select); 
        #`DELAY X=2; Y=4; select=1;
        #`DELAY if(out != {{`WIDTH{1'b1}}, X&Y}) printIncorrect(select); 

        //MUL case
        #`DELAY X=15; Y=15; select=2;
        #`DELAY if(out != X*Y) printIncorrect(select); 
        #`DELAY X=7; Y=6; select=2;
        #`DELAY if(out != X*Y) printIncorrect(select); 
        #`DELAY X=15; Y=0; select=2;
        #`DELAY if(out != X*Y) printIncorrect(select); 
        #`DELAY X=0; Y=8; select=2;
        #`DELAY if(out != X*Y) printIncorrect(select); 
        #`DELAY X=0; Y=0; select=2;
        #`DELAY if(out != X*Y) printIncorrect(select); 


        //DEFAULT case
        #`DELAY X=5; Y=15; select=3;
        #`DELAY if(out != 5) printIncorrect(select); 
        #`DELAY X=8; Y=0; select=4;
        #`DELAY if(out != 5) printIncorrect(select); 
        #`DELAY X=13; Y=11; select=5;
        #`DELAY if(out != 5) printIncorrect(select); 
        #`DELAY X=2; Y=6; select=6;
        #`DELAY if(out != 5) printIncorrect(select); 
        #`DELAY X=1; Y=9; select=7;
        #`DELAY if(out != 5) printIncorrect(select); 

        #50 $display("%d Simulation Finished", $time);
        printScore;
        
        $finish;
    end

    task printScore;
        begin
            score = 0;
            if(pass_ADD == 1'b1) begin
                $display("ADD function       [PASS]  5/5");
                score = score + 5;
            end
            else begin
                $display("ADD function     [FAILED]  0/5");
            end

            if(pass_AND == 1'b1) begin
                $display("AND function       [PASS]  5/5");
                score = score + 5;
            end
            else begin
                $display("AND function     [FAILED]  0/5");
            end

            if(pass_MUL == 1'b1) begin
                $display("MUL function       [PASS] 15/15");
                score = score + 15;
            end
            else begin
                $display("MUL function     [FAILED]  0/15");
            end

            if(pass_DEFAULT == 1'b1) begin
                $display("DEFAULT function   [PASS]  5/5");
                score = score + 5;
            end
            else begin
                $display("DEFAULT function [FAILED]  0/5");
            end

                $display("Final Score:     %d/30",score);
            if (score == 30)
                $display(">>>> [PASS] Congratulations!");
            else
                $display(">>>> [FAILED] Try it again!");
        end
    endtask

    task printIncorrect;
        input [2:0] select;
        begin
            case(select)
                2'd0: begin
                    $display("ADD failed, X=%d\tY=%d\tout=%d",X,Y,out);
                    pass_ADD=0;
                end
                2'd1: begin
                    $display("AND failed, X=%b\tY=%b\tout=%b",X,Y,out);
                    pass_AND=0;
                end
                2'd2: begin
                    $display("MUL failed, X=%d\tY=%d\tout=%d",X,Y,out);
                    pass_MUL=0;
                end
                default: begin
                    $display("DEFAULT failed, X=%d\tY=%d\tout=%d",X,Y,out);
                    pass_DEFAULT=0;
                end

            endcase
        end
    endtask

endmodule