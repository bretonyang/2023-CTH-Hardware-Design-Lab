// 110011138 楊立慈

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
    reg [15:0] nums;
    reg [4:0] count;
    reg [15:0] tmp_led [3:0];
    wire clk_div_13;
    wire btnC_db;
    wire btnU_db;
    wire btnR_db;
    integer i;

    clock_divider #(13) c1(.clk(clk), .clk_div(clk_div13));
    seven_segment ss1(.clk(clk_div13), .nums(nums), .DIGIT(DIGIT), .DISPLAY(DISPLAY));
    debounce db1(.pb(btnC), .clk(clk_div13), .pb_debounced(btnC_db));
    debounce db2(.pb(btnU), .clk(clk_div13), .pb_debounced(btnU_db));
    debounce db3(.pb(btnR), .clk(clk_div13), .pb_debounced(btnR_db));

    assign led = tmp_led[3];

    always @(*) begin
        tmp_led[0] = sw;

        if (btnC_db == 1'b1) tmp_led[1] = ~tmp_led[0];
        else tmp_led[1] = tmp_led[0];

        if (btnU_db == 1'b1) tmp_led[2] = 16'b1111_1111_1111_1111;
        else tmp_led[2] = tmp_led[1];

        if (btnR_db == 1'b1) tmp_led[3] = {tmp_led[2][0], tmp_led[2][15:1]};
        else tmp_led[3] = tmp_led[2];

        count = 0;
        for (i = 0; i < 16; i = i + 1) begin
            count = count + led[i];
        end

        nums[15:12] = 0;
        nums[11:8] = 0;
        nums[7:4] = count / 10;
        nums[3:0] = count % 10;
    end

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
    input [15:0] nums,
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
);
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= nums[7:4];
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= nums[11:8];
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= nums[15:12];
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= nums[3:0];
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= nums[3:0];
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