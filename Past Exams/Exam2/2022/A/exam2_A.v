// <Student_ID> <Name>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 王小明
module exam2_A(
    input clk,
    input btnC, 
    input btnU,
    input btnR, 
    input [15:0] sw, 
    output [3:0] DIGIT,
    output [6:0] DISPLAY, 
    output [15:0] led
);
    // add your design here

endmodule



// provided modules
module clock_divider #(parameter n=25) (clk, clk_div);
    input clk;
    output clk_div;

    reg [n-1:0] num = 0;
    wire [n-1:0] next_num;

    always @(posedge clk) begin
        num <= next_num;
    end

    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule


module debounce (pb, clk, pb_debounced);
    input pb;
    input clk;
    output pb_debounced;

    reg [3:0] shift_reg;

    always @(posedge clk) begin
        shift_reg[3:1] <= shift_reg[2:0];
        shift_reg[0] <= pb;
    end

    assign pb_debounced = ((shift_reg == 4'b1111) ? 1'b1 : 1'b0);
endmodule


module seven_segment (
    input clk, 
    input [3:0] digit_0,
    input [3:0] digit_1, 
    input [3:0] digit_2, 
    input [3:0] digit_3, 
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
);
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= digit_1;
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= digit_2;
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= digit_3;
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
        endcase
    end

    always @(*) begin
        case (value)
            4'd0:   DISPLAY = 7'b1000000;   // 0
            4'd1:   DISPLAY = 7'b1111001;   // 1
            4'd2:   DISPLAY = 7'b0100100;   // 2
            4'd3:   DISPLAY = 7'b0110000;   // 3
            4'd4:   DISPLAY = 7'b0011001;   // 4
            4'd5:   DISPLAY = 7'b0010010;   // 5
            4'd6:   DISPLAY = 7'b0000010;   // 6
            4'd7:   DISPLAY = 7'b1111000;   // 7
            4'd8:   DISPLAY = 7'b0000000;   // 8
            4'd9:   DISPLAY = 7'b0010000;   // 9
            4'd10:  DISPLAY = 7'b0111111;   // -
            default:DISPLAY = 7'b1111111;   // no light
        endcase
    end

endmodule