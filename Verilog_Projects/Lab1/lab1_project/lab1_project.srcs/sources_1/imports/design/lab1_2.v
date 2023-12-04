`timescale 1ns/100ps
module lab1_2 (
    input wire [3:0] source_0,
    input wire [3:0] source_1,
    input wire [3:0] source_2,
    input wire [3:0] source_3,
    input wire [1:0] op_0,
    input wire [1:0] op_1,
    input wire [1:0] request,
    output reg [3:0] result
); 
    wire [3:0] op_0_result;
    wire [3:0] op_1_result;
    
    lab1_1 m1(.op(op_0), .a(source_0), .b(source_1), .d(op_0_result));
    lab1_1 m2(.op(op_1), .a(source_2), .b(source_3), .d(op_1_result));

    always @(*) begin   
        if (request[0] == 1) begin
            result = op_0_result;
        end
        else if (request[1] == 1) begin
            result = op_1_result;
        end
        else begin
            result = 4'b0000;
        end
    end

    // Question B code:
    // always @(*) begin
    //     if (request == 2'b01) result = op_0_result;
    //     else if (request == 2'b10) result = op_1_result;
    //     else if (request == 2'b11) result = 
    //         (op_0[1] & ~op_1[1] | op_0[0] & ~op_1[0] & (op_0[1] | ~op_1[1])) 
    //         ? op_1_result : op_0_result;
    //     else result = 4'b0000;
    // end
endmodule
