//StudentID + Name ex.108000111 王大明

//Do not modify IO
module exam_1_B#(
    parameter size = 10
)(
    input wire clk, 
    input wire rst, 
    output wire [size-1:0] out
);
    //Your code here
    //DO NOT USE LOOKUP TABLE! 

    parameter UP = 1'b0;
    parameter DOWN = 1'b1;

    reg [size-1:0] prev, cur, next_cur;
    reg [size:0] sum;
    reg dir, next_dir;
    reg [size:0] i, next_i;

    assign out = cur;

    always @(posedge clk) begin
        if (rst == 1) begin
            cur <= 1;
            prev <= 0;
            dir <= UP;
            i <= 1;
        end
        else begin
            cur <= next_cur;
            prev <= cur;
            dir <= next_dir;
            i <= next_i;
        end
    end

    always @(*) begin
        next_cur = cur;
        next_dir = dir;
        next_i = i + 1;
        sum = cur + prev;

        case (dir)
            UP: begin
                if (sum % 3 == 0 && sum % 5 != 0) next_cur = cur + 2;
                else if (sum % 3 != 0 && sum % 5 == 0) next_cur = cur + 3;
                else if (sum % 3 == 0 && sum % 5 == 0) next_cur = cur + 4;
                else next_cur = cur + 1;

                if (next_cur == 232) begin
                    next_i = 1;
                    next_dir = DOWN;
                end
            end
            DOWN: begin
                next_cur = cur - i;
                if (next_cur == 1) next_dir = UP;
            end
        endcase
    end

endmodule
