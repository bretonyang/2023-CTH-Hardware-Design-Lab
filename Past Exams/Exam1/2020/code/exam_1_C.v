

module exam_1_C(
    input wire clk,
    input wire rst,
    input wire start,
    input wire direction,
    input wire wall,
    output reg [15:0] LED
);
    // Your code here

endmodule

// You can add any module here if needed.

module clock_divisor(
        input wire rst,
        input wire clk,
        output wire clk_div
);

    // You can use this module in your design without any modification,
    // but you still can modify this module if needed.
    parameter n = 10;
    reg [n-1:0]current = 0;
    
    always @(posedge clk or posedge rst) begin
        if(rst)
            current <= 0;
        else
            current <= current + 1;
    end
    
    assign clk_div = current[n-1];
    
endmodule