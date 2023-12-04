module lab6_1(
    input clk,
    input rst,
    input en,
    input dir,
    input vmir,
    input hmir,
    input enlarge,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync
);

    wire [11:0] data;
    wire clk_25MHz;
    wire clk_22;
    wire [16:0] pixel_addr;
    wire [11:0] pixel;
    wire valid;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480

    assign {vgaRed, vgaGreen, vgaBlue} = (valid == 1'b1) ? ~pixel : 12'h0;

    clock_divider #(22) cd1(.clk(clk), .clk_div(clk_22));
    clock_divider #(2) cd2(.clk(clk), .clk_div(clk_25MHz));

    mem_addr_gen mem_addr_gen_inst(
    .clk(clk_22),
    .rst(rst),
    .en(en),
    .dir(dir),
    .vmir(vmir),
    .hmir(hmir),
    .enlarge(enlarge),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(pixel_addr)
    );
     
    blk_mem_gen_0 blk_mem_gen_0_inst(
      .clka(clk_25MHz),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel)
    ); 

    vga_controller   vga_inst(
      .pclk(clk_25MHz),
      .reset(rst),
      .hsync(hsync),
      .vsync(vsync),
      .valid(valid),
      .h_cnt(h_cnt),
      .v_cnt(v_cnt)
    );
    
endmodule


module mem_addr_gen(
    input clk,
    input rst,
    input en,
    input dir,
    input vmir,
    input hmir,
    input enlarge,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    output [16:0] pixel_addr
);
    parameter TO_LEFT = 1'b0;
    parameter TO_RIGHT = 1'b1;
    parameter [9:0] H_LEN = 10'd320; 
    parameter [9:0] V_LEN = 10'd240; 
    parameter [16:0] SIZE = 17'd76800; // H_LEN * V_LEN

    reg [8:0] pos, next_pos;
    wire [9:0] h, v;
    reg [9:0] tmp_h [2:0];
    reg [9:0] tmp_v [2:0];
 
    assign h = h_cnt >> 1;
    assign v = v_cnt >> 1;
    assign pixel_addr = (tmp_h[2] + H_LEN * tmp_v[2]) % SIZE;

    always @(*) begin
        // check enlarge (2 times)
        tmp_h[0] = (enlarge ? (h >> 1) + pos + 79 : h + pos) % H_LEN;
        tmp_v[0] = enlarge ? (v >> 1) + 59 : v;
        // check vertical mirror
        tmp_h[1] = tmp_h[0];
        tmp_v[1] = (vmir) ? (V_LEN - 1 - tmp_v[0]) : tmp_v[0];
        // check horizontal mirror
        tmp_h[2] = (hmir) ? (H_LEN - 1 - tmp_h[1]) : tmp_h[1];
        tmp_v[2] = tmp_v[1]; 
    end

    always @ (posedge clk or posedge rst) begin
        if (rst == 1'b1) pos <= 0;
        else if (en == 1'b1) pos <= next_pos;
    end

    always @(*) begin
        next_pos = pos;
        if (dir == TO_LEFT) next_pos = (pos == H_LEN - 1) ? 0 : pos + 1;
        else next_pos = (pos == 0) ? H_LEN - 1 : pos - 1;
    end
    
endmodule
