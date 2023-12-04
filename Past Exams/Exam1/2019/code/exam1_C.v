// StudentID StudentName

// !!! Note: submit BOTH exam1_C and clock_divider !!!
module exam1_C(clk, rst, en, led);
    input clk;
    input rst;
    input en;
    output [15:0] led;

    // add your design here

endmodule

// revise the clock_divider when necessary
module clock_divider (clk_div, clk);

  input clk;
  output clk_div;
  reg [2:0] num;
  wire [2:0] next_num;

  always @(posedge clk) begin
    num = next_num;
  end

  assign next_num = num + 1;
  assign clk_div = num[2];

endmodule
