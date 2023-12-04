// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Nov 11 20:39:04 2023
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [16:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [16:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "17" *) 
  (* C_ADDRB_WIDTH = "17" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "26" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.042558 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "76800" *) 
  (* C_READ_DEPTH_B = "76800" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "76800" *) 
  (* C_WRITE_DEPTH_B = "76800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[16:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[16:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [17:0]ena_array;
  input [4:0]addra;

  wire [4:0]addra;
  wire [17:0]ena_array;

  LUT5 #(
    .INIT(32'h00000001)) 
    ENOUT
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__0
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__1
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__10
       (.I0(addra[4]),
        .I1(addra[1]),
        .I2(addra[0]),
        .I3(addra[2]),
        .I4(addra[3]),
        .O(ena_array[11]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__11
       (.I0(addra[4]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[12]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__12
       (.I0(addra[4]),
        .I1(addra[0]),
        .I2(addra[3]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[13]));
  LUT5 #(
    .INIT(32'h40000000)) 
    ENOUT__13
       (.I0(addra[4]),
        .I1(addra[3]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[14]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__14
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[4]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[15]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__15
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[4]),
        .O(ena_array[16]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__16
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[4]),
        .O(ena_array[17]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__2
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__3
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[4]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__4
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[5]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__5
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[6]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__6
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[7]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__7
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[3]),
        .O(ena_array[8]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__8
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[3]),
        .O(ena_array[9]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__9
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[10]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [18:0]ena_array;
  wire ram_douta;
  wire ram_ena__1;
  wire ram_ena_n_0;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[16:12]),
        .ena_array({ena_array[18:8],ena_array[6:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .DOPADOP(\ramloop[21].ram.r_n_8 ),
        .DOUTA(ram_douta),
        .addra(addra[16:12]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[1].ram.r_n_0 ),
        .\douta[10] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\douta[10]_0 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_0 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_1 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_2 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_3 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_4 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_5 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_6 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_7 ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_0 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_2 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_3 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_4 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_5 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_6 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_7 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[11] (\ramloop[22].ram.r_n_8 ),
        .\douta[11]_0 (\ramloop[23].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_0 (\ramloop[16].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_1 (\ramloop[15].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_2 (\ramloop[14].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_3 (\ramloop[13].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_4 (\ramloop[20].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_5 (\ramloop[19].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_6 (\ramloop[18].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_7 (\ramloop[17].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_0 (\ramloop[8].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_1 (\ramloop[7].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_2 (\ramloop[6].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_3 (\ramloop[5].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_4 (\ramloop[12].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_5 (\ramloop[11].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_6 (\ramloop[10].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_7 (\ramloop[9].ram.r_n_8 ),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\douta[2]_0 (\ramloop[4].ram.r_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[16]),
        .O(ram_ena_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    ram_ena__0
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[16]),
        .O(ram_ena__1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DOUTA(ram_douta),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[0]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[5]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[6]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[11:3]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[8]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[9]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[15].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[10]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[16].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[11]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[17].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[12]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[18].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[13]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[19].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[14]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[0]),
        .ram_ena(ram_ena__1),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[20].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[15]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .DOPADOP(\ramloop[21].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[16]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[22].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[17]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[23].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[18]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOUTA(\ramloop[2].ram.r_n_0 ),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[2:1]),
        .ram_ena(ram_ena__1),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOUTA(\ramloop[4].ram.r_n_0 ),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[2]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[0]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[2]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[3]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[4]),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    DOADO,
    \douta[10] ,
    \douta[10]_0 ,
    DOPADOP,
    \douta[11] ,
    \douta[11]_0 ,
    addra,
    clka,
    \douta[0] ,
    DOUTA,
    \douta[2] ,
    \douta[1] ,
    \douta[2]_0 ,
    \douta[10]_INST_0_i_3_0 ,
    \douta[10]_INST_0_i_3_1 ,
    \douta[10]_INST_0_i_3_2 ,
    \douta[10]_INST_0_i_3_3 ,
    \douta[10]_INST_0_i_3_4 ,
    \douta[10]_INST_0_i_3_5 ,
    \douta[10]_INST_0_i_3_6 ,
    \douta[10]_INST_0_i_3_7 ,
    \douta[10]_INST_0_i_2_0 ,
    \douta[10]_INST_0_i_2_1 ,
    \douta[10]_INST_0_i_2_2 ,
    \douta[10]_INST_0_i_2_3 ,
    \douta[10]_INST_0_i_2_4 ,
    \douta[10]_INST_0_i_2_5 ,
    \douta[10]_INST_0_i_2_6 ,
    \douta[10]_INST_0_i_2_7 ,
    \douta[11]_INST_0_i_3_0 ,
    \douta[11]_INST_0_i_3_1 ,
    \douta[11]_INST_0_i_3_2 ,
    \douta[11]_INST_0_i_3_3 ,
    \douta[11]_INST_0_i_3_4 ,
    \douta[11]_INST_0_i_3_5 ,
    \douta[11]_INST_0_i_3_6 ,
    \douta[11]_INST_0_i_3_7 ,
    \douta[11]_INST_0_i_2_0 ,
    \douta[11]_INST_0_i_2_1 ,
    \douta[11]_INST_0_i_2_2 ,
    \douta[11]_INST_0_i_2_3 ,
    \douta[11]_INST_0_i_2_4 ,
    \douta[11]_INST_0_i_2_5 ,
    \douta[11]_INST_0_i_2_6 ,
    \douta[11]_INST_0_i_2_7 );
  output [11:0]douta;
  input [7:0]DOADO;
  input [7:0]\douta[10] ;
  input [7:0]\douta[10]_0 ;
  input [0:0]DOPADOP;
  input [0:0]\douta[11] ;
  input [0:0]\douta[11]_0 ;
  input [4:0]addra;
  input clka;
  input [0:0]\douta[0] ;
  input [0:0]DOUTA;
  input [1:0]\douta[2] ;
  input [0:0]\douta[1] ;
  input [0:0]\douta[2]_0 ;
  input [7:0]\douta[10]_INST_0_i_3_0 ;
  input [7:0]\douta[10]_INST_0_i_3_1 ;
  input [7:0]\douta[10]_INST_0_i_3_2 ;
  input [7:0]\douta[10]_INST_0_i_3_3 ;
  input [7:0]\douta[10]_INST_0_i_3_4 ;
  input [7:0]\douta[10]_INST_0_i_3_5 ;
  input [7:0]\douta[10]_INST_0_i_3_6 ;
  input [7:0]\douta[10]_INST_0_i_3_7 ;
  input [7:0]\douta[10]_INST_0_i_2_0 ;
  input [7:0]\douta[10]_INST_0_i_2_1 ;
  input [7:0]\douta[10]_INST_0_i_2_2 ;
  input [7:0]\douta[10]_INST_0_i_2_3 ;
  input [7:0]\douta[10]_INST_0_i_2_4 ;
  input [7:0]\douta[10]_INST_0_i_2_5 ;
  input [7:0]\douta[10]_INST_0_i_2_6 ;
  input [7:0]\douta[10]_INST_0_i_2_7 ;
  input [0:0]\douta[11]_INST_0_i_3_0 ;
  input [0:0]\douta[11]_INST_0_i_3_1 ;
  input [0:0]\douta[11]_INST_0_i_3_2 ;
  input [0:0]\douta[11]_INST_0_i_3_3 ;
  input [0:0]\douta[11]_INST_0_i_3_4 ;
  input [0:0]\douta[11]_INST_0_i_3_5 ;
  input [0:0]\douta[11]_INST_0_i_3_6 ;
  input [0:0]\douta[11]_INST_0_i_3_7 ;
  input [0:0]\douta[11]_INST_0_i_2_0 ;
  input [0:0]\douta[11]_INST_0_i_2_1 ;
  input [0:0]\douta[11]_INST_0_i_2_2 ;
  input [0:0]\douta[11]_INST_0_i_2_3 ;
  input [0:0]\douta[11]_INST_0_i_2_4 ;
  input [0:0]\douta[11]_INST_0_i_2_5 ;
  input [0:0]\douta[11]_INST_0_i_2_6 ;
  input [0:0]\douta[11]_INST_0_i_2_7 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [0:0]DOUTA;
  wire [4:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [0:0]\douta[0] ;
  wire [7:0]\douta[10] ;
  wire [7:0]\douta[10]_0 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire [7:0]\douta[10]_INST_0_i_2_0 ;
  wire [7:0]\douta[10]_INST_0_i_2_1 ;
  wire [7:0]\douta[10]_INST_0_i_2_2 ;
  wire [7:0]\douta[10]_INST_0_i_2_3 ;
  wire [7:0]\douta[10]_INST_0_i_2_4 ;
  wire [7:0]\douta[10]_INST_0_i_2_5 ;
  wire [7:0]\douta[10]_INST_0_i_2_6 ;
  wire [7:0]\douta[10]_INST_0_i_2_7 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire [7:0]\douta[10]_INST_0_i_3_0 ;
  wire [7:0]\douta[10]_INST_0_i_3_1 ;
  wire [7:0]\douta[10]_INST_0_i_3_2 ;
  wire [7:0]\douta[10]_INST_0_i_3_3 ;
  wire [7:0]\douta[10]_INST_0_i_3_4 ;
  wire [7:0]\douta[10]_INST_0_i_3_5 ;
  wire [7:0]\douta[10]_INST_0_i_3_6 ;
  wire [7:0]\douta[10]_INST_0_i_3_7 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[10]_INST_0_i_4_n_0 ;
  wire \douta[10]_INST_0_i_5_n_0 ;
  wire \douta[10]_INST_0_i_6_n_0 ;
  wire \douta[10]_INST_0_i_7_n_0 ;
  wire [0:0]\douta[11] ;
  wire [0:0]\douta[11]_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire [0:0]\douta[11]_INST_0_i_2_0 ;
  wire [0:0]\douta[11]_INST_0_i_2_1 ;
  wire [0:0]\douta[11]_INST_0_i_2_2 ;
  wire [0:0]\douta[11]_INST_0_i_2_3 ;
  wire [0:0]\douta[11]_INST_0_i_2_4 ;
  wire [0:0]\douta[11]_INST_0_i_2_5 ;
  wire [0:0]\douta[11]_INST_0_i_2_6 ;
  wire [0:0]\douta[11]_INST_0_i_2_7 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire [0:0]\douta[11]_INST_0_i_3_0 ;
  wire [0:0]\douta[11]_INST_0_i_3_1 ;
  wire [0:0]\douta[11]_INST_0_i_3_2 ;
  wire [0:0]\douta[11]_INST_0_i_3_3 ;
  wire [0:0]\douta[11]_INST_0_i_3_4 ;
  wire [0:0]\douta[11]_INST_0_i_3_5 ;
  wire [0:0]\douta[11]_INST_0_i_3_6 ;
  wire [0:0]\douta[11]_INST_0_i_3_7 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_4_n_0 ;
  wire \douta[11]_INST_0_i_5_n_0 ;
  wire \douta[11]_INST_0_i_6_n_0 ;
  wire \douta[11]_INST_0_i_7_n_0 ;
  wire [0:0]\douta[1] ;
  wire [1:0]\douta[2] ;
  wire [0:0]\douta[2]_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_4_n_0 ;
  wire \douta[3]_INST_0_i_5_n_0 ;
  wire \douta[3]_INST_0_i_6_n_0 ;
  wire \douta[3]_INST_0_i_7_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_4_n_0 ;
  wire \douta[4]_INST_0_i_5_n_0 ;
  wire \douta[4]_INST_0_i_6_n_0 ;
  wire \douta[4]_INST_0_i_7_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_4_n_0 ;
  wire \douta[5]_INST_0_i_5_n_0 ;
  wire \douta[5]_INST_0_i_6_n_0 ;
  wire \douta[5]_INST_0_i_7_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_4_n_0 ;
  wire \douta[6]_INST_0_i_5_n_0 ;
  wire \douta[6]_INST_0_i_6_n_0 ;
  wire \douta[6]_INST_0_i_7_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_4_n_0 ;
  wire \douta[7]_INST_0_i_5_n_0 ;
  wire \douta[7]_INST_0_i_6_n_0 ;
  wire \douta[7]_INST_0_i_7_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_4_n_0 ;
  wire \douta[8]_INST_0_i_5_n_0 ;
  wire \douta[8]_INST_0_i_6_n_0 ;
  wire \douta[8]_INST_0_i_7_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_4_n_0 ;
  wire \douta[9]_INST_0_i_5_n_0 ;
  wire \douta[9]_INST_0_i_6_n_0 ;
  wire \douta[9]_INST_0_i_7_n_0 ;
  wire [4:0]sel_pipe;
  wire [4:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[0] ),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(DOUTA),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[10]_INST_0_i_1 
       (.I0(DOADO[7]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [7]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [7]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  MUXF7 \douta[10]_INST_0_i_2 
       (.I0(\douta[10]_INST_0_i_4_n_0 ),
        .I1(\douta[10]_INST_0_i_5_n_0 ),
        .O(\douta[10]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[10]_INST_0_i_3 
       (.I0(\douta[10]_INST_0_i_6_n_0 ),
        .I1(\douta[10]_INST_0_i_7_n_0 ),
        .O(\douta[10]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [7]),
        .I1(\douta[10]_INST_0_i_2_1 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [7]),
        .O(\douta[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [7]),
        .I1(\douta[10]_INST_0_i_2_5 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [7]),
        .O(\douta[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [7]),
        .I1(\douta[10]_INST_0_i_3_1 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [7]),
        .O(\douta[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [7]),
        .I1(\douta[10]_INST_0_i_3_5 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [7]),
        .O(\douta[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[11]_INST_0_i_1 
       (.I0(DOPADOP),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[11] ),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[11]_0 ),
        .I5(sel_pipe_d1[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  MUXF7 \douta[11]_INST_0_i_2 
       (.I0(\douta[11]_INST_0_i_4_n_0 ),
        .I1(\douta[11]_INST_0_i_5_n_0 ),
        .O(\douta[11]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[11]_INST_0_i_3 
       (.I0(\douta[11]_INST_0_i_6_n_0 ),
        .I1(\douta[11]_INST_0_i_7_n_0 ),
        .O(\douta[11]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_4 
       (.I0(\douta[11]_INST_0_i_2_0 ),
        .I1(\douta[11]_INST_0_i_2_1 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_2_2 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_2_3 ),
        .O(\douta[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_5 
       (.I0(\douta[11]_INST_0_i_2_4 ),
        .I1(\douta[11]_INST_0_i_2_5 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_2_6 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_2_7 ),
        .O(\douta[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_6 
       (.I0(\douta[11]_INST_0_i_3_0 ),
        .I1(\douta[11]_INST_0_i_3_1 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_3_2 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_3_3 ),
        .O(\douta[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_7 
       (.I0(\douta[11]_INST_0_i_3_4 ),
        .I1(\douta[11]_INST_0_i_3_5 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_3_6 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_3_7 ),
        .O(\douta[11]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[1] ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[2]_0 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[3]_INST_0_i_1 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [0]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [0]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  MUXF7 \douta[3]_INST_0_i_2 
       (.I0(\douta[3]_INST_0_i_4_n_0 ),
        .I1(\douta[3]_INST_0_i_5_n_0 ),
        .O(\douta[3]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[3]_INST_0_i_3 
       (.I0(\douta[3]_INST_0_i_6_n_0 ),
        .I1(\douta[3]_INST_0_i_7_n_0 ),
        .O(\douta[3]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [0]),
        .I1(\douta[10]_INST_0_i_2_1 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [0]),
        .O(\douta[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [0]),
        .I1(\douta[10]_INST_0_i_2_5 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [0]),
        .O(\douta[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [0]),
        .I1(\douta[10]_INST_0_i_3_1 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [0]),
        .O(\douta[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [0]),
        .I1(\douta[10]_INST_0_i_3_5 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [0]),
        .O(\douta[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[4]_INST_0_i_1 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [1]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [1]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  MUXF7 \douta[4]_INST_0_i_2 
       (.I0(\douta[4]_INST_0_i_4_n_0 ),
        .I1(\douta[4]_INST_0_i_5_n_0 ),
        .O(\douta[4]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[4]_INST_0_i_3 
       (.I0(\douta[4]_INST_0_i_6_n_0 ),
        .I1(\douta[4]_INST_0_i_7_n_0 ),
        .O(\douta[4]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [1]),
        .I1(\douta[10]_INST_0_i_2_1 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [1]),
        .O(\douta[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [1]),
        .I1(\douta[10]_INST_0_i_2_5 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [1]),
        .O(\douta[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [1]),
        .I1(\douta[10]_INST_0_i_3_1 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [1]),
        .O(\douta[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [1]),
        .I1(\douta[10]_INST_0_i_3_5 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [1]),
        .O(\douta[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[5]_INST_0_i_1 
       (.I0(DOADO[2]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [2]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [2]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  MUXF7 \douta[5]_INST_0_i_2 
       (.I0(\douta[5]_INST_0_i_4_n_0 ),
        .I1(\douta[5]_INST_0_i_5_n_0 ),
        .O(\douta[5]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[5]_INST_0_i_3 
       (.I0(\douta[5]_INST_0_i_6_n_0 ),
        .I1(\douta[5]_INST_0_i_7_n_0 ),
        .O(\douta[5]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [2]),
        .I1(\douta[10]_INST_0_i_2_1 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [2]),
        .O(\douta[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [2]),
        .I1(\douta[10]_INST_0_i_2_5 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [2]),
        .O(\douta[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [2]),
        .I1(\douta[10]_INST_0_i_3_1 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [2]),
        .O(\douta[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [2]),
        .I1(\douta[10]_INST_0_i_3_5 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [2]),
        .O(\douta[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[6]_INST_0_i_1 
       (.I0(DOADO[3]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [3]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [3]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  MUXF7 \douta[6]_INST_0_i_2 
       (.I0(\douta[6]_INST_0_i_4_n_0 ),
        .I1(\douta[6]_INST_0_i_5_n_0 ),
        .O(\douta[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[6]_INST_0_i_3 
       (.I0(\douta[6]_INST_0_i_6_n_0 ),
        .I1(\douta[6]_INST_0_i_7_n_0 ),
        .O(\douta[6]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [3]),
        .I1(\douta[10]_INST_0_i_2_1 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [3]),
        .O(\douta[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [3]),
        .I1(\douta[10]_INST_0_i_2_5 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [3]),
        .O(\douta[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [3]),
        .I1(\douta[10]_INST_0_i_3_1 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [3]),
        .O(\douta[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [3]),
        .I1(\douta[10]_INST_0_i_3_5 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [3]),
        .O(\douta[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOADO[4]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [4]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [4]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  MUXF7 \douta[7]_INST_0_i_2 
       (.I0(\douta[7]_INST_0_i_4_n_0 ),
        .I1(\douta[7]_INST_0_i_5_n_0 ),
        .O(\douta[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[7]_INST_0_i_3 
       (.I0(\douta[7]_INST_0_i_6_n_0 ),
        .I1(\douta[7]_INST_0_i_7_n_0 ),
        .O(\douta[7]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [4]),
        .I1(\douta[10]_INST_0_i_2_1 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [4]),
        .O(\douta[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [4]),
        .I1(\douta[10]_INST_0_i_2_5 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [4]),
        .O(\douta[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [4]),
        .I1(\douta[10]_INST_0_i_3_1 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [4]),
        .O(\douta[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [4]),
        .I1(\douta[10]_INST_0_i_3_5 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [4]),
        .O(\douta[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[8]_INST_0_i_1 
       (.I0(DOADO[5]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [5]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [5]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  MUXF7 \douta[8]_INST_0_i_2 
       (.I0(\douta[8]_INST_0_i_4_n_0 ),
        .I1(\douta[8]_INST_0_i_5_n_0 ),
        .O(\douta[8]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[8]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_6_n_0 ),
        .I1(\douta[8]_INST_0_i_7_n_0 ),
        .O(\douta[8]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [5]),
        .I1(\douta[10]_INST_0_i_2_1 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [5]),
        .O(\douta[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [5]),
        .I1(\douta[10]_INST_0_i_2_5 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [5]),
        .O(\douta[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [5]),
        .I1(\douta[10]_INST_0_i_3_1 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [5]),
        .O(\douta[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [5]),
        .I1(\douta[10]_INST_0_i_3_5 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [5]),
        .O(\douta[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[9]_INST_0_i_1 
       (.I0(DOADO[6]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [6]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [6]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  MUXF7 \douta[9]_INST_0_i_2 
       (.I0(\douta[9]_INST_0_i_4_n_0 ),
        .I1(\douta[9]_INST_0_i_5_n_0 ),
        .O(\douta[9]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[9]_INST_0_i_3 
       (.I0(\douta[9]_INST_0_i_6_n_0 ),
        .I1(\douta[9]_INST_0_i_7_n_0 ),
        .O(\douta[9]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [6]),
        .I1(\douta[10]_INST_0_i_2_1 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [6]),
        .O(\douta[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [6]),
        .I1(\douta[10]_INST_0_i_2_5 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [6]),
        .O(\douta[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [6]),
        .I1(\douta[10]_INST_0_i_3_1 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [6]),
        .O(\douta[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [6]),
        .I1(\douta[10]_INST_0_i_3_5 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [6]),
        .O(\douta[9]_INST_0_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[4]),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000FFFFFBFFE801FE000000003FFF81F801BF91E0F80FFC00000F800000000),
    .INIT_01(256'h1FF980000001E4FF1E0017FDCA2183FFC0000078000000009406707FB0660200),
    .INIT_02(256'h0FE01BFDE06933DF800000780000000097A37927B1C20600000003FFFFFFFFC0),
    .INIT_03(256'h8000003C00000000300B532CB149E4000000007FFFFFFFC01FF880000001F0FF),
    .INIT_04(256'h22605C2E6168F5013000001FFFFFFFF01FFE00030000F87F86060E9D8C14D0DF),
    .INIT_05(256'hF000001FFFFFFFF81FFE000798007A7FC602474D0C16F0300000001E00000000),
    .INIT_06(256'h3FFE0007F80018FFC601DFFD825D4FB80000001E0000000000602E577301F701),
    .INIT_07(256'hC401FFAF7BD90DF00000001F00000000002089DCF6107901F0000003FFFFFFF8),
    .INIT_08(256'h0000001F0000000000A56E6AC680FD01FE000003FFFFFFF83FFE0007FF8000FF),
    .INIT_09(256'h3FB2DD7384007C07FFC00001FFFFFEE07FFF0007FFFFF9F84403FDF783F2CB60),
    .INIT_0A(256'hFFF00001FFFFFF803FFF0007FFFFFDF00C0DFF768F0B1B400000001F00000000),
    .INIT_0B(256'h3FFF000FFFFFFEF00C0CECD298FE0F760000000F000000007FDC631E8520FE87),
    .INIT_0C(256'h1C04C677C5E3FCD400000187800000007F661C2C07407F8FFFD80001FFFFFF80),
    .INIT_0D(256'h8000018780000000C690D82C03407E8FFFF808007FFFFF803FFE060FFF83FFDC),
    .INIT_0E(256'hA048602801803E079FFFC8007FFFFF803FFC061FFF8739DC1C1E7130AAF3FE66),
    .INIT_0F(256'hF0FFF8007FFFFFE01FF001F0FF8061FE1C3E398133FFDFF4A000018780000000),
    .INIT_10(256'h1FE007F0FF80006F9E1E26CAC7FE1C82A8000187E0000000F3808E2801803E87),
    .INIT_11(256'hCF1E053707FFC001B8000007C3F00000DED3E22801003E01727FFC007FFFFFE0),
    .INIT_12(256'hC0000007E3F00000F9F7FEAD00003F8007FFFC007FFFFFE01FC00FF0BE000013),
    .INIT_13(256'hF70FFEEF80003F800180F800FFFFFFE01F800FF01E00000DEF1F95500FFFE00C),
    .INIT_14(256'h0000F800FFFFFFE00F001FF01F00000FF7877AE01FFFFC39A0000007FBF00000),
    .INIT_15(256'h6F003FF91F8000000706B3001FEFFFFF40000003FBF00000B4AFFF9080003FC0),
    .INIT_16(256'h030D5E003FFFFFFD80000003FFF0000070DFFFD800007F4000008000FFFFFFC0),
    .INIT_17(256'h00000003FFFFF800699FFF244000BF4000008001FFFFFF007F803FEF9F800000),
    .INIT_18(256'hB27FFF3540007F4000000001FFFFFE007F803FC7FFC00000032A70603FFFFFFB),
    .INIT_19(256'h00000003FFFFFE007FF83FC3FFC00000032380E07FFFFFF000000003FFFFF800),
    .INIT_1A(256'h3C707FC3FFC00000001808007FFFFB8A80000003FFFFC000BDFFFF044000FFE0),
    .INIT_1B(256'h08900840FFFFE83940000007FFFFC000CB7FF93E40003E3FFC000007FFFFF800),
    .INIT_1C(256'h9000000FFFFFC00055FFE19CA000FE3FFF00001FFFFFE001FC78FFE7FFC00000),
    .INIT_1D(256'h31FFE0D6A0017F9FFFC01FFFFFFFC003FC78FFFFFF8000003AF008E0FFFFFEC0),
    .INIT_1E(256'hFFD7FFFFFFFFC003FC71FFFFFF000010D7F00180FFFFF9802000001FFFFFF000),
    .INIT_1F(256'hFC73FFFFFE000002AC7801C1FFFFC0801000011FFFFFF000E5FFE122E001FF87),
    .INIT_20(256'hF03C0083FFFE05200400033FFFFFFE00F3FFFF3C7001BF83FFFFFFFFFFFF8003),
    .INIT_21(256'h8040003FFFFFFF3077FFF6E950003981FFFFFFFFFFFF8007FC63F83FFC000014),
    .INIT_22(256'hF2FFC4F930003981FFFFFFFFFFFE0007C003F01FFC000005301F0083FDFC9890),
    .INIT_23(256'hFFFFFFFFFFE800078007F01FF800018E38078000F81E10280085003FFFFFFF20),
    .INIT_24(256'h817FF00C200002D43C038000601F300E0087807FFFFFFF80FA7FDA79A0053EC0),
    .INIT_25(256'h1C03E0004007600360EDB0FFFFFFF780FD3FE6DE400B3FC0FFFFFFFFFFE00007),
    .INIT_26(256'h98F67DFFFFFFE780FEDFB9E7800639C1FFFFFFFFFF00000F83FFE00600000B0C),
    .INIT_27(256'hFE679386000635E0FFFFFFFFFE00001F0FFFE00000203D1F1C00E0001000C001),
    .INIT_28(256'h7FFFFFFFFC00003E0FFFC0000000761E1C0070001000C0002E1C3DFFFFFFE786),
    .INIT_29(256'h1FFFE0000009B81F1C00703030010000370EBFFFFFFFFF86FFA35B690006F1E0),
    .INIT_2A(256'h0E007030700900004D8F2BFFFFFFFFE6FFAD3EA20010CC607FFFE853C000007E),
    .INIT_2B(256'h3703E7FFFFFFFFF8FEB5F44401B008783FF07001C000007C1FFF0000001B580F),
    .INIT_2C(256'hF403839C0240007C3C1C3000000000F87FD800000277781F0F00386070C30000),
    .INIT_2D(256'h20119000000003E1F84000003FEAF83F0F000FC07046000019C3F0BFFFFFFFFE),
    .INIT_2E(256'hF0000000FFD7F81F0F800F8010E4000006E3FEFFFFFFFFFFC000906C1500107E),
    .INIT_2F(256'h0EF0090018EC0000002BFE8FFFFFFFFF2001E1B7C000307F601E200000003F83),
    .INIT_30(256'h005DFFB7FFFFFFFF0001FFF00000107F6C0BA00000003F07C00000007FA7F01F),
    .INIT_31(256'h1603D2080000403FEF8FDA000001FC0F000000003F4DF03E0EFA06000C080200),
    .INIT_32(256'h4FFDE09981FDFC1E00003C000EB9E0FC0BF037000C1902000006FFEBFFFFFFFF),
    .INIT_33(256'h10007F000F79C0FC17F8F000081806000003BBFAFFFFFFFF2187983800008011),
    .INIT_34(256'h2FF80000003800000000EFFC7FFFFFFF1F4750680004E0006FFE707FFFFFF878),
    .INIT_35(256'h000057FD5FFFFFFF1FF710C0001A8000797E3AD7FFFFF0F0FB81FFC0026001FC),
    .INIT_36(256'h0F9300400016C000183C0C4FFFFFE3C3FFFFFFF8048003FC1FF8000000380000),
    .INIT_37(256'h48000F57FF043787FFFFFFFF09000BFC47F8000000700000000035FEAFFFFFFF),
    .INIT_38(256'hFFFFFFFF10801FFCAFFE00000060000000000A7FBBFFFFFF07A1C040001EC001),
    .INIT_39(256'h0FFE000000C000000000033FE7FFFFFF3F83E040002E8001B803066FFC005707),
    .INIT_3A(256'h000000C3FDBFFFFF3E00E000009DC000B8020307F8008F07E1CCFFFF83E0FFF8),
    .INIT_3B(256'h3C00680002198000FA0100A760E92E37C0047FFF1CFEFFF8019E000001C00000),
    .INIT_3C(256'hAB01009301F81E7E000009FFD03FFFE00FFE0000018000000000003BFE9FFFFF),
    .INIT_3D(256'h0000010A0E03FFE00FFE0000038000000000000DFFA7FFFFF00001032019C000),
    .INIT_3E(256'h0FFE00000300000000000005FDF7FFFF3C000000001B8102F3E5106103FA3C7E),
    .INIT_3F(256'h00000005BCF4FFFFF20000000013438263F55C109F883C7E00000196BF00FFE0),
    .INIT_40(256'hF800000001B3C3C06BE9AA36FF0558700300005CFFF87FC00FFE000007000000),
    .INIT_41(256'h7BD66D8FFF1500F00780008DFFFC7F000FFEC00006000000000000065CFE7FFF),
    .INIT_42(256'h1FE00149FFFC1F100FFFC0000E00000000000000AEBEFFFFE300000007F3C3C4),
    .INIT_43(256'h0FFFC0000D00000000000000591FBFFF4700000005F347E57BD486EF7C1E00C0),
    .INIT_44(256'h00000000641FD7FF6D00000000F36FE663AA03CFA01A43C037F004E1FFFC0F00),
    .INIT_45(256'h9D00000007F24FE762763947A01103C0FFF98C40FFFE1F0007DFC00019000000),
    .INIT_46(256'h6A987EC1E00003E0FFFFC8C0FFFE020607DBC00013F0000000000000333FE3FF),
    .INIT_47(256'h7FFFFE08FFFF000607F1E0000FFE0000000000001CDFFBFFCE00000007F27FE6),
    .INIT_48(256'h07F1E00028FFF000000000000023FE7FC00000000FE0FFE466B060ADA00E03F1),
    .INIT_49(256'h000000000099FF3F8000000007E2FFE66060DE2AD3C707FC1FFE8408FFFF8007),
    .INIT_4A(256'h800000000FE1FFF661C1937E53C5FFFF1FFE0C19FFFFC00007F9C000183DF800),
    .INIT_4B(256'h60813F74E3E1FFFFC7F9DFF8FFFFE02007FFC0007E39FFC000000000000CFFED),
    .INIT_4C(256'hF3F4BFF0FFFFF0507FFFD0007E3FFFFFF800000000037FF3E40000001FC7FFE4),
    .INIT_4D(256'h7FFF80007FBFFFFFFE0000000001BFF8750000007F87FFE46D03665F87F1FFFF),
    .INIT_4E(256'hFFF0000000006FFEB90000007F85FFE665869599F00FDFFFFCA539E0FFFFFCE0),
    .INIT_4F(256'h10C00000FF0DFFE0014509D0F845FFFFF9567FC1FFFFFF807FFFC000BFFFFFFF),
    .INIT_50(256'h0FACD010234C1F7EA2BC7F83FFFFFF007FFFC00D7FFFFFFFFFFF000000003BFF),
    .INIT_51(256'h0B80FF03FFFFFE003FFF800DFFFFFFEFFFFF800000002EFF4D400001FF05C7EC),
    .INIT_52(256'h3FFF000AFFFFFFF7FFFFFE200000037F07E00003FE19E7EC1DAE20303C48003C),
    .INIT_53(256'hB7FEFFF0000000DD3CE00003FE09FFCC1C3463B83018000249FFFC03FFFFF800),
    .INIT_54(256'h07C00003FE3FFFDE1CB353B816B0000B3803E83FFFFFCC0006FC0005FFFFFFFD),
    .INIT_55(256'h3EA331382C78000E4000003FFFFE441007FC0025FFFFFFFE00FFFFF800000065),
    .INIT_56(256'h0000007FFFFC239087FE002BFFFFFFFF80D7FF3FC000001B00800013FC0FFFF0),
    .INIT_57(256'h07FF0027FFFFFFBFC1FFFF3FFE0000350000020FF84BFFD4AB9229B829A00027),
    .INIT_58(256'hFFFFFF3FFFE0000001C00007F86FFFF4ACDD74B809000D18000001FFFFD7F0E0),
    .INIT_59(256'hC3E0020FFCEFFFF4A86F43902940342000000FFFFF7FE8C007FF0017FFFFFFFB),
    .INIT_5A(256'h6E18125018FFC68000000FFFF27FFE400FFF8027FFFFFFFCFFFFFFFFFFFFFF04),
    .INIT_5B(256'h00001FFF08FC7F260FFFC02FFFFFFFFCFFFFFFFFFFFFFF81C3C0020FFCAFFFF0),
    .INIT_5C(256'h0FFFC05FFFFFFFFE7FFFBFFFFFFFFFE00300021FFC75FFF02FE3D040330F1A00),
    .INIT_5D(256'h07FFFFDFF0619FFC0300023FFF707FF028F33C60175E6800007F1FF907FC1F9F),
    .INIT_5E(256'h070002FFFD640FE4637B78805008A0000007FF9CFFFC1F990FFF80BFFFFFFFFF),
    .INIT_5F(256'hE1194BB0B60280001FEC00700FFF0FD79FFF817FFFFFFFFFC0FFFFC0000007FE),
    .INIT_60(256'hFE000007F9FF87E39FFF818FFFFFFFFFF07FFFF8000000FE070001FFFC601FFB),
    .INIT_61(256'hFFEF0283FFFFFFFFFC1FFFFFF040003E070000FFFA403FDCC0C06EF9DADA0001),
    .INIT_62(256'hFFFFFFFFFE600000800004DFF6C039733842056754C800FFC0000021FE7FE3F1),
    .INIT_63(256'h8800008FE4002A0139D00028E5700FFC000000A63F9FE3F1FFFF0081FFFFFFFF),
    .INIT_64(256'h27E87F838C60BFF00000012FCFC1F074FFFF0D90FFFFFFFFFFFFFFFFFF600000),
    .INIT_65(256'h0000023FF3FCF07E7FFF0BF83FFFFFFFFFFFFFFFFC400000DFF0009FCC80A841),
    .INIT_66(256'h3FFF97BC1FFEFFFFFFFFFDFFFFFD8000DBC200DF9F03C3CB26FC7F6C1F9FFFC0),
    .INIT_67(256'hFFFFFD0FFFFF800097DD01F7B90587F083EE3F923A1FFE000000301FFC1F3C7F),
    .INIT_68(256'h17FD07F77F08766262733F61F9BFF8000003BFDFFFCFC61F1FFF278F83FFFFFF),
    .INIT_69(256'h4C399C3CF4700000002C01FFFE73F83FDFFF5F0FC1FFFFF1FFFFFF87FFFF8000),
    .INIT_6A(256'h015FF1FFFFF8FF01EFFE9E0FF0FFFFC1FFFFFF83FFFFC00003FF06067711F948),
    .INIT_6B(256'hEFFC2F9FF81FFFC1FFFFFFC03FFFF00003FA00EC7F51F7B1EB7FC110BA900000),
    .INIT_6C(256'hFFFFFFE03FFFF80601F800A0CEA3F85FAB9E520724B000000E7FF1FFFFFF9F81),
    .INIT_6D(256'h00E000E0AFF7FD3FA1561FDECD560000A3FF21FFFFFDE7F1F7FD7FFFFE1FFFFF),
    .INIT_6E(256'hF7E72EB74EBE000AFFFFC1FFFFFCF3F83BFEF77FFF07FFFFFFFFFFF80FFFFC0C),
    .INIT_6F(256'hFFFFC1FFFFFD79FE1BFDFFFEFFC3FFFFFBFFFFF803FFFF3C00F801404EEFFBB8),
    .INIT_70(256'hCDF9FFFEFFE0FFFFFFFBFFF8003FFFFC01FC0580491FDF73FFC21FD10FFC00AF),
    .INIT_71(256'hFFE3BF38001FFFFF01FE1702C23F8F460FE001E907F835F3FFFFE1FFFFFEFE3F),
    .INIT_72(256'h03FECE05C33F586E0BA39C6C0FC1B0FBFFFB807FFFFF3FC7FFF3FFFFFFF07FFF),
    .INIT_73(256'h07C659BBFF1B0063FFFE003FFFFFBFF9AA6FFFFFFFF83FFFFFE33F1C0007FFCF),
    .INIT_74(256'hFFFC003FFFFFFFFF0E95FFFFFFFF0FFFFFE23F9C0007FFFF03F01E3FE6BE615C),
    .INIT_75(256'h39BEF7FFFF3F87FFFFE01E180000FFFFCCFDBFFBD8FFA47005C610E43EA1807B),
    .INIT_76(256'hFFE01C0000003FFF1600FFF7C32568E8030D4D147D43807FFFFC003FFFFFEFF1),
    .INIT_77(256'h1400FFEFEA056B80061A447CBA40007FFFF0000FFFFFFFFDD861FFFFF93FC0FF),
    .INIT_78(256'h079932FB27C0607FFFE0001FFFFFFFFFE37778FFFE79F07FFFE05480000101FF),
    .INIT_79(256'hFFC0000FFFFFFFFFFDF1EFFFFC7CF81A7FC00000003F0017F400FEFFB4743780),
    .INIT_7A(256'hFE0CCBFFFE7C7E0201C0000000000703F0007D3F64067F00030EF066AF6001FF),
    .INIT_7B(256'h0100000000081F03B001F87FC00035C009BE49A5A48001FFFFC00007FFFFFFFF),
    .INIT_7C(256'h981FFBFE8B08760409D70A79ECB801FFFF7E0003FFFFFFFFFFF3D677F83EF981),
    .INIT_7D(256'hC3FDFA7901180FFFFF7E0001FFFFFFFFFFF0683FF83E00008000000000011F03),
    .INIT_7E(256'h807C0000FFFFFFFFFFD010CFC03000200000000000001FC1B7FFDBFC1F0CF400),
    .INIT_7F(256'hFFB047ECCF00C0000000000000000FC167FE27FA1706FC0832783A2941BC0FFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC00000000000060187F08FFA37153008323C961D98F807FE001000007FFFFFFF),
    .INIT_01(256'h3E0F9FFA6BC130087172FDFFC2980FF0000180001FFFFDF80E3873B6EF800000),
    .INIT_02(256'h7069FFFFC7700FF0000100000FFFFC000C1C1E351FC000007800000000000001),
    .INIT_03(256'h00000000037FF80761CE1FDA67C000001C0000000000000001FDBFF24BF3B800),
    .INIT_04(256'hF3F787E5F80000000E0000000000000003C77FE8CBEBF02076685FF0C9BA07E0),
    .INIT_05(256'h03C03F00603A00000386FFF1800CF02274CC6610654B07F000000000007FE0EF),
    .INIT_06(256'h6314FFF30020F0284ACE06CB8EED83F000000000000FC07FFFF383E143880000),
    .INIT_07(256'h8BCC0697CE9C03FC00000000000100FFFFF3C0E73A10000001E07FC7FC630000),
    .INIT_08(256'h0000000000001FFFFFF3E00009D7C00000F0FFEFFC030000E6633FE73FC1F008),
    .INIT_09(256'hFFF87000070370000039FFEFFF87C0005EA73FEC6FCDF07F06CC12C3101603FC),
    .INIT_0A(256'h001FFFFFFC3FE0007D4F3C38E329F3C070780AFEAEF801FC000000000000183F),
    .INIT_0B(256'h729E0079F001FF8C7FA81A01ECC401FC000000000000E0177FF8600000C09C00),
    .INIT_0C(256'hC7CC1FBFE0B181FE0000000001C18002F9F8008000783600000FFFFFFC3FF000),
    .INIT_0D(256'h000000000FFA0000C07800F8E00CCF2087C3F7FFFC3FF00025280043D05DFFF7),
    .INIT_0E(256'h001E00FFF802728087E1FFFFFFFFF000420E01870FFDFFF3FE360FFFFED781FE),
    .INIT_0F(256'h07F1FFFFFFFFE00032EC07040FE5FE4B034F87FFFEC2C07FC000000007FC4000),
    .INIT_10(256'hCBCC3F182FE5FE0F00F6CA4FFF0AC37FC000000007F80000003FF8FFFF018020),
    .INIT_11(256'h6059A01FFC1F613FE000000003F80000002FFEF0FFFE125807F8FDFFFFFFE000),
    .INIT_12(256'hE000000003FF0001800FFFF07FFCC8330FFFFDFFFFFFFE008E17E04660B5FFEF),
    .INIT_13(256'hC00FFFF01FFFFF327FFFFEFFFFFFFE40339B7FC5E02C2317F87B401FFC11C07F),
    .INIT_14(256'hBFFFFFFFFFFFFFE1708176F3C04323163FD9E01FFC12C07FF043800001FFE001),
    .INIT_15(256'hB9E9C0731E3E161E01F9C01FFF8FC63FF8C3400000FFFFF3801F7FA003F7FFE9),
    .INIT_16(256'h0033139FFFC2FE3FFFC3000004FFFFFFC03F7E004041FFF6E76FFFFBFFFFFFFC),
    .INIT_17(256'hFFA00007E7FFFFFFFF3F640000007FFFFBC7FFFFFFFFFDFF2167CC0184F0855E),
    .INIT_18(256'hFF62400000003FFE9C67FFFFFFFFFDFFB854C01C1DC3AF7EC21007FFFFF4F71F),
    .INIT_19(256'h93DDFFFFFFFFFC7F9099001E9FC261FCE79D07FFFFFDB70FF991FE06E7FFFFFF),
    .INIT_1A(256'h0471181E7F03F23EE99B8FFFFFFCBB0FFD013FFFE3FFFFFFFF40000000001FFF),
    .INIT_1B(256'h09D9B0FFFFF00707FE003FFFF3FFFFFFFF8000000000071F7CF3FFFFE7FFFC7F),
    .INIT_1C(256'hFF203FFFF0FFFF8FFF0000000000000FFF3C7FFFE7FDFCFE4F1AEE0C0607F4FE),
    .INIT_1D(256'hF800000000000001F3E78FFFFFF9FFFE4354070C000BFF7E09D179FFF7A01F83),
    .INIT_1E(256'hF9F1F3FFFDFBFFFF4F15FFCE103BC62F0F2178E656DF1FC0FFF00FBFFC21FF0F),
    .INIT_1F(256'h1F3E73CBE37B03F7386AFCF4A3BA1BC07FF00FFFFE03DF0FC000000000000001),
    .INIT_20(256'h7C4CDFFFC38FFFE07FF90FFFFF03CE0C00000000000000117E9CFCFFFFDBFFFF),
    .INIT_21(256'h1FF10FC3FFA1CE00000000078C0000313F1FBF1FFFC1FFFF177BA109CB783F23),
    .INIT_22(256'h0000000782000078776FCFFE81E3FFFF776AC008DE78FE27772078DB4453FFF0),
    .INIT_23(256'h23FD1501C7D3DC1FFF086018D461C09DF75390D84443C7F00FF18EC3FFE0D800),
    .INIT_24(256'hAF083818F5A79E5C763393F84054CFF00FF18C3FFFF0E0000000000FC0000078),
    .INIT_25(256'h778FFFF00056CBE20FF80C3FFFFFC0000000001FC0000038FDF047FE7B89D8E4),
    .INIT_26(256'h07F8023FFFFF8000003C03BFE0000001F8001F8787ABD8D0CF003C38765FBFDA),
    .INIT_27(256'h0BFE07FFEF800001FC000101F1E459BCEF5007F0764D3044F736BFC080504FF8),
    .INIT_28(256'hFE000101FC069841F61003E0565CA00CB643FFC0B0758F5F03F8007FFFFF0000),
    .INIT_29(256'hF63003E05258571734FBFFC824758F7F83FC347FFFFE00603FFF8FFFEFC00001),
    .INIT_2A(256'hB4AD3FCC16FC038541FC3FE7FFFC00F07FFFFFFFFFE00001FC0000007F800B81),
    .INIT_2B(256'hE1FCFFFFFFFC03FFFFFFFFFFFFE00002300000000FF86CFDDC2000E1F0485718),
    .INIT_2C(256'hFEE7FFFFFFE007800000000003FC19FFAD4800174648EFDFECAC3FCC1FF05E18),
    .INIT_2D(256'h0000000000FE03FFF35C0C178668EBCDEACCBFCE5FD5B808A0FEFFFFFEF80FFF),
    .INIT_2E(256'hB7A41FC70608EBCBFCDC7FE67FD45820A0FFFFFFF8183FFFFE03FFFFFFFE0FC0),
    .INIT_2F(256'h8C367FE66F025C24E07FFFFE38003FFFFE01FFFFFFFFCFE000000000007FDFFD),
    .INIT_30(256'h303FFE0000003FFFFC00FFFFFFFFFFF000000000001FFFFD6DE61FE30F08F7CB),
    .INIT_31(256'hFC0043F03FFFFFF8000000098007FFF909C61FEB080875CA48663FE7A0005C01),
    .INIT_32(256'h000000FFC003DFF9F0A21FD70C0F0ACA3CF71FEFE801D1413007E00000003FFF),
    .INIT_33(256'hE1721FC60E0F8D1A9EF70FEFF96FC8003800000000007FFFF80000600FFFFFF8),
    .INIT_34(256'hB5F707CFF8FFF006780000000001FFFFF800000003FFFFF8780001FFF003DFC1),
    .INIT_35(256'h3F0000000001FFFFF8000000007FFFFFFFF107FFF807DF01D2FB1FC40E0FC30A),
    .INIT_36(256'hF8000000007FFFFFFFFC07FFFA6FFC01351B1F860E03E06E5A1D83CFF8FFD7E0),
    .INIT_37(256'hFFFC0FFFF84FC8010A1B3F770FD01F8CC429C1EFF8FF41E89F0000000007FFFF),
    .INIT_38(256'hD489BE3F8FEF83F1EA33F7E7FEF747E8978000000007EFFF800000000007FFFF),
    .INIT_39(256'h4A503CDFCBF67BF087F80000001FE3FF0000000000001FFFFFF80FFFF0444000),
    .INIT_3A(256'h01F80040001E0000000000000000024FFFF01FFFF200400073C93C1F87E07803),
    .INIT_3B(256'h00007E003FF80007FFFE7FFFE3C0407E03C9780FC3F03FFE4D600FCFC17359D0),
    .INIT_3C(256'hFFFE3FFFFFC040FEF7FB380380A101F81EB40B4FE17049C009FD070000380000),
    .INIT_3D(256'hC01A3400D0A6F001F6DA000E5730E8C1FFFF018401F8000000FFFFDFFFFE0001),
    .INIT_3E(256'hFC6D000C79F7784057FF800FFFFFE003FFFFFFFFFFFFE0000FFE3FFFFFFE61FE),
    .INIT_3F(256'h417FE007FFFC3C07FFFFFFFFFFC7F00000FC3FFFFFBFEFFE09FA2000783F9E6F),
    .INIT_40(256'hFFFFFFFFFE03FC00007C7FFFFC3FCFFE020A3200347FE7FF81E28000C3CCCC02),
    .INIT_41(256'h003FFFFFFC7F1FFE1B152200787FF8FC0061C000C0226604A03FE00FFFBFF50F),
    .INIT_42(256'h1669A1003C5FFE600000E000C03DF10D573FE00FFC7FF99FFFFFFFFFFC00FFFC),
    .INIT_43(256'h00F0700180F49E0DAE3F8007F5FF983FFF87FFFFF8001FFF001FFFFFE07C3FFF),
    .INIT_44(256'h98FFC03FC7FE024CE00187FEF8000FFF801FFFFE00207FFE5878A0000C5FFF00),
    .INIT_45(256'hCFFFF980000003FFFECFF7FC03043FFFA0E9A24106AFFF8000FEF80180BBB019),
    .INIT_46(256'hFF8013F800000FFF40F0A700066FFFE000FFA0010139E03BD3EFF9FF33F03F41),
    .INIT_47(256'hB8D713810701FFF80FFFD08303BC20307687FFFFFFE07B4FBFFFFFCC003800FF),
    .INIT_48(256'h4FFFECA3066360303987FFFD6F83ED3F3FFFEFFEC0FE003FFF8001F8000007FF),
    .INIT_49(256'h3F03FFE54F83E4FCF83F0FFFDFFFE00FFF8000F8710003FF78D611E10F8EFFFE),
    .INIT_4A(256'hC30EAFFFEFFFE00FFF8000F0FC0003FFF04DD1E36F87FFFFFFFBFB31F8D86066),
    .INIT_4B(256'hFFE00001FC0003FFE07DD9F36FC7FFFFFFF3FEE382CCC0643F03FFE65F0F48F2),
    .INIT_4C(256'hC07299FFDFC0F7FFFFE7FF3E09830048FC07FF027F1CF0E11F818FFFC87FF00F),
    .INIT_4D(256'hFFEFFFE7FF8E00C9FD01FD8D5E19300EFCC59003683FD807FFFA0001F80000FE),
    .INIT_4E(256'hFB00F27AFFF2F8E7E07A63F8817FFC00FFFF0007FC0400000005B9FFC3C039FF),
    .INIT_4F(256'h00A3B80FB327FF800FFF8007FC04000100320CFF8101D8FFFFCFFFFFBFB801C7),
    .INIT_50(256'h0FFF800FE4020001E0641CFF06306F3FFFDFFFFFFC000197FA000099B7E24FF4),
    .INIT_51(256'h9FBB96770628FB8FFFFFEFFFFC00039FFB0010754FC3600A0FB423F18F87FF80),
    .INIT_52(256'hFFFFE7FFFF80072FFA003BEEAF00302C0C6821F4500BFF8003FF800FE0000001),
    .INIT_53(256'hF40075C39802D8F771EFFF74C0D9FF8001FF8007F7F00001F8878E438601DDC7),
    .INIT_54(256'hA72FC02AC08AFFC0003F8007FFF0001F60AC19418640EFF3FFFFE7FFF400063F),
    .INIT_55(256'h003F8003FFF8007F30D8D6804480F7F0FFFFE3FFFC000E7FF800D9B2182211CE),
    .INIT_56(256'h9C5F15C02E80E3DC7FFFE3FFF8000C7FF401A1D20AA7251A491004F3C190FFC0),
    .INIT_57(256'h3FFFE1FFF8000CFFFC0241318527D03528E0731FC3317FD8001FC007FFFE007F),
    .INIT_58(256'hB006817E1606A09E47878BFF87607FF8001FC007FFF780FF5E38EDC02711F5FC),
    .INIT_59(256'h781E0FFF86C007F8200FC000FFF3CEFF220099C03F3FF6FC3FFFE1FFF80019FF),
    .INIT_5A(256'h380FC000FFF1D8FFC11693C01A07FFDE17FFE1FFF80013FE3009427C1E847E6E),
    .INIT_5B(256'hC1F1B180026FFFC31FFFC67FF80013F410118CF41ED507A3E03C3FFF06C007FC),
    .INIT_5C(256'h1FFFA67FF8006FF1A0271DC91F97FE7F427CFFFF050003FE3C07C000FFF5DEFF),
    .INIT_5D(256'hE05D1137181630DE06FFFFFE038003FFFF0FC071FFF001FF01D71180354CFFE1),
    .INIT_5E(256'h0EFFFFFA020003FFFF87C0F3FFE003FF06E97BB036BC7FF023FE607FFC004DF9),
    .INIT_5F(256'hFF83C1F7FF8003FF2837BCFFBF3B4FF833FE60FFFC00BFB740EA244A1D17079C),
    .INIT_60(256'h2349DE7FFB7B020819F826FFFC03FF2281854CB21C17FF981FFFF19A05000FFF),
    .INIT_61(256'h8FB008FFFC07FC8F812A865E1E1CFF003FFE000E8E001FFFFF81F1FFE00002F7),
    .INIT_62(256'h83F501621F1C7F003FF8000D8200FFFFFF81FFFF800180635D38C1C0FA733000),
    .INIT_63(256'h1FF800051E01FF9FFF803FFC0001C2035938133E1C03700047D00C4FF88CF907),
    .INIT_64(256'hFF820FC00001C20333106B230C033002FBC0081FF00992C407EBD7B01F1E7F00),
    .INIT_65(256'h030247590D0B140A5DF0003FE019039C047C65CE1F1DFF020CF8000102F1FF0F),
    .INIT_66(256'h02F8106FC0180484075205B41F1CFF00007000002FFFFF67FF830FF00001C303),
    .INIT_67(256'h0BAE87C81F1EFE0000700010D7FFFE67FF030F820003FF07051ED75D8F1B1F1C),
    .INIT_68(256'h00200010AFFFFE67FE0007180003DF87031DC84D0CFE3F1603F030EFC078070C),
    .INIT_69(256'hF8000E300001DF8F03C9DF2709FE6FF600A000FF0168036C0BDE901E1F1EFC00),
    .INIT_6A(256'h02C7D777019E7E7C00F800FF0238098E1B4A97FC1E16FC08000000313FFFFE07),
    .INIT_6B(256'h1E06B7FF04280EC03EEAB3C01F14FF3800000031DFFFFE07FF001E2000061F87),
    .INIT_6C(256'h714AC00A1F84FF34000000F23FFFFE07FC003C2000000FFF8267BC2A85B67FF9),
    .INIT_6D(256'h800011F97FFFFF87F8003C0000000FFD824B60B445BFFF3F9FF3FFFFFBE808C8),
    .INIT_6E(256'hF80FF80000000FFDD64A13647E9FFE7FFFF39FFFFBE000006B04441A0F8EFE66),
    .INIT_6F(256'hD66E744C760FFE5BFFFC0FFEFFE003005D1467FF0F8AFE73800231CB7F3FFFC7),
    .INIT_70(256'hBFFF807FFFF00D00E93463FD0FF8FE7FE187E0CEFE0FFFE6205FF00000000FC5),
    .INIT_71(256'h81B463DD8FF8FE7FF387F784F84FFF82001FF0038003DFF9F7775C98671F9C1D),
    .INIT_72(256'hF38FFFB8D847FF800003F007000FFFF9F77ED312036F683C00FF187FFFF00200),
    .INIT_73(256'h4073F000001FFFF9D2BF55F201FFD0F800DFBC7FFF900D01A396220D87FCFE7C),
    .INIT_74(256'hFF2E95E5FC708278001FFE44B8D00E8161B62A1D07FCFF7C5FCFFF640047FF90),
    .INIT_75(256'h001FFE0000D0198041B62A1E87FC7FFC5FEFFF640007FE1000FFB008001FFCF9),
    .INIT_76(256'h8137263EC3FA7FFCDFFFFE8C0003FC0000FF0008021FFFFDFD8C1473A6300500),
    .INIT_77(256'hDFFFFD1F8001FC0000FE0007801FFFFFFD909BC806CEFB81001FFEBFDFF00000),
    .INIT_78(256'h05FC001F900FFFBFFFF0D3980DF7F99FC03FFFBF03E00480812467BE03FA3FFC),
    .INIT_79(256'hFFF7460034431BFFFE5FE7F8FC601EC9E12461FF63FE3FFDFFFFF9FFFE000000),
    .INIT_7A(256'hF007C670F0C01E9FE4B5E1FF61FF1FDFFFFFF3FFFE00000005F8043FC00FFFFF),
    .INIT_7B(256'hF7AC67FFC1FF13C7FEFE64FC3FF4000001F0007F098FFBFFFEE56000F80CF1FF),
    .INIT_7C(256'hFE6C18FC1F74000001F200FFFB0F6BFFFEF5E00FE488B8E7F2430760F8D01FFD),
    .INIT_7D(256'h03F006FFFD1FCBFDFFDD787F4B93BF8F3EE007C07C69F7F1F7B2FFFF9185D883),
    .INIT_7E(256'h8E475BD70F4F9F007B8006001FABF7FBFFFFFFC003C32C03FF69F5FE1F740FFE),
    .INIT_7F(256'h7744374000CAFAFFFE3BFE03CCFFF803FE7A0BFF1FF01FFC7F2000FFFC3FFBFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hF403C7F03F8781E3FE34277FFFF05FFE7FE0007FFA7F0FFF542E5B90331F8003),
    .INIT_01(256'hFE3BA7FEFFF8FFC7FFE3003FF87637FA00245F9CE07300013054B000002FF3FF),
    .INIT_02(256'hFCF7C03FFDC8A7F000C53C1FCC5300400000C200002FF3FFF01FF0034E93FFE3),
    .INIT_03(256'h8908307E5863FFC08000A403005FF1FFFAFC1FDA7AFFFF1F3C3C3CFDFFF8FFCF),
    .INIT_04(256'h2003A40000DFFBFFF3E3F79743FFFFFFE1CEF8FFFFFDFFC3FC37C03FFF4C8EA4),
    .INIT_05(256'hD7980273807FFFFFF901FFFDEBFFFFC1F807C03FFE403C7C90DBD3E3B193FFE0),
    .INIT_06(256'hFF7BFDFEE1FFFF806007E03F35C8006C8E291C3E43D847F0C007880000DFFFFF),
    .INIT_07(256'h0000003E88A030FC1DE0DFFCDFD9C0718006B00000DFFFFFB86407920078FFFF),
    .INIT_08(256'h98707FF89FE1B6BF0003AC0600DFFFC980C406080038CFFFF838C87BE1FFFF00),
    .INIT_09(256'h0003AE1801DFFF260FC01CE2000007FC1FFE05FFE00FFF026000003FABF0F028),
    .INIT_0A(256'h389E4280000010C0000384FFE00FFF80205C00FF598068009B783FA13FFE05DD),
    .INIT_0B(256'h1FF70FEFE01F7D8000FF01FF5600740036F03F8E7FFF039A0003CFFE015FFCFC),
    .INIT_0C(256'h03FFF9BD5F20200C16F81F8EFFF0078000036C7F811FFDF7FFF80300000000C0),
    .INIT_0D(256'h11F8078CFFF0070000026C33805EFF69FBFC60000000003FE0BBCF7BF80F7F80),
    .INIT_0E(256'h04006801307FA66000038400000001FFC17FDBDBD03FFF002497FE677600181C),
    .INIT_0F(256'h00040A00000007FFC7F8B117003FFE00E7D7C0DF8C4430181DF807CC7EF01F00),
    .INIT_10(256'hC4C0310BC1FFFE05C3DFF40FFE0C70202DF807CE3E607C00DC486821603EEB00),
    .INIT_11(256'hB5CCB598FE31600060B807C73C707801FC48C8F3600BD0000000080000000FFF),
    .INIT_12(256'h58BC0FC7CC61F003F80FCFFB601CE00001E8100000000F6DA0C03101E87FFE12),
    .INIT_13(256'hF007CFFFE0338003FFE7E0000006087F3CF01F01F21F9C3F9F03B63DFFFC1000),
    .INIT_14(256'hFFEFC00000000E6AFE780B607D1F00DC0F8E6715FFF08000481E0FE3E020F003),
    .INIT_15(256'hFF9C2FF03FAFF7B0D3501D17BEF80200D30F0FC3E070F087F00FCFFE6047000F),
    .INIT_16(256'h409AC89A7C820400B3078FC7F800F01FF71F83FEE30E007FFFEF802000001FED),
    .INIT_17(256'h8767CF87FFF1E19FEFFF87FFE63C01FFFF9D000000001CCFFFEE1F781FCDE513),
    .INIT_18(256'h87FFAFFEE67907FFFFD080100000381F83EC9B7E0FDB48F8012C30ADF8440C00),
    .INIT_19(256'h802200080000003F00E4F37F8FFAEB3807C46B73F1080800E773FF1FFF87C39F),
    .INIT_1A(256'h0068711FCFFC055C07F7C9F3FF181000EDFBFE3FFF0007DE0FFFFFFFECF10FFF),
    .INIT_1B(256'h83F2F17FFC303000ECF9FE3FFF0FFFE06FFFDE7CD9C01FF0075F000000000040),
    .INIT_1C(256'hE0FC78FF3F0FFFE27FFF1C7BCFC43F81FC06000400000080009E011FC3FC1DA0),
    .INIT_1D(256'h7EFF1C31DFC87E0F86BE000200000080003F619FCFFC7A8700DF96FC9F20C000),
    .INIT_1E(256'h3D18000100000000001F3CFE37FCF81E00BF3D18FF40800060E631FC3E67FFF6),
    .INIT_1F(256'h00079EF9CFFFF4F8007C7F3FF8C000003AF60700386FFFF67FFFDC03AF88F03C),
    .INIT_20(256'h00F9FFFCF78000003EE30600200FFF14FFFFD8017F0FC1F004C8000180000200),
    .INIT_21(256'hEEC0FC00E03FFFB1FFFED8037C1F03FFC0E80001C00004000003CB7200FB2FE0),
    .INIT_22(256'hFFFE7802FC1E1FFFF9100000C00000000003ED3801FFBFE38003FFF7DF000000),
    .INIT_23(256'h09C8000180000000C003EF800FFF7BFF002FFFEBFF0400008FC0F800CFFFFEA0),
    .INIT_24(256'h0001F7001FFFEFFFC0CFFFEFFE0000008FC6307CC7FFFFA2FFE5B001F0381C00),
    .INIT_25(256'h8087FFDCFE000000B70F07F1079FFC4070F2806DC1ED007FF070000000001000),
    .INIT_26(256'hA10F8FF30FFFFE4FF999201B03815FB005800001000000000001F33FFFF9DFFF),
    .INIT_27(256'h0186001A03472003F1F00000000000000003F761FFF7FFFF0083FF7FFC000000),
    .INIT_28(256'h086000020000000000000C01FFFFFFFFC00EFFFFF8000000E93FFFF3068FF787),
    .INIT_29(256'h00008003FF9FFFFFE00C71FFF980000054BFFFF6018FE00F028E0034001F97FC),
    .INIT_2A(256'h00000033BFFFFFFF56DFFFE60000000B011C403C003F8F800C00000000000000),
    .INIT_2B(256'h184FFFC3FFFFFFFFFFBE3E201900006FCD3FFFF8000000000000878030040800),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFF000000000001FFFFFFFFFFFFF001F801005E00F80FFC00000FFFFFFFFFF),
    .INIT_01(256'h1FFFFFFFFFFFFF001E001803F40183FFC000007FFFFFFFFF6BDE807FC003F9FF),
    .INIT_02(256'h0FE01C03FE06D3DF8000007FFFFFFFFF687E99E7C003F9FFFFFFFC0000000000),
    .INIT_03(256'h8000003FFFFFFFFFFFD68BE0C0831DFFFFFFFF80000000001FFFFFFFFFFFFF00),
    .INIT_04(256'hFFD5B7E080900EFFFFFFFFE0000000001FFFFFFCFFFFFF8007FE0F038F9310DF),
    .INIT_05(256'hFFFFFFE0000000001FFFFFF867FFFF8007FDC7830F96F0300000001FFFFFFFFF),
    .INIT_06(256'h3FFFFFF807FFFF0007FE3FC3835C8FB80000001FFFFFFFFFFFD597D180F10EFF),
    .INIT_07(256'h07FE07B0FB9601F00000001FFFFFFFFFFF9591DD01E184FFFFFFFFFC00000000),
    .INIT_08(256'h0000001FFFFFFFFFFF91F06F01E083FFFFFFFFFC000000003FFFFFF8007FFF00),
    .INIT_09(256'hFF955E7C03E082FFFFFFFFFE000000007FFFFFF80000060007FC03F87FFB3860),
    .INIT_0A(256'hFFFFFFFE000000003FFFFFF8000002000FF000F4712C07000000001FFFFFFFFF),
    .INIT_0B(256'h3FFFFFF0000001000FF0033368C000C60000000FFFFFFFFFFFB7421002C0017F),
    .INIT_0C(256'h1FF8018FC680003000000187FFFFFFFFFF2B21300080017FFFFFFFFE00000000),
    .INIT_0D(256'h00000187FFFFFFFFC6471F30008001FFFFFFFFFF800000003FFFF9F000000000),
    .INIT_0E(256'h80D78330000041FFFFFFFFFF800000003FFFF9E0000000001FE000C23300001D),
    .INIT_0F(256'hFFFFFFFF800000001FFFFE0F000000001FC00079BC00000240000187FFFFFFFF),
    .INIT_10(256'h1FFFF80F000000101FE0184CF800000190000187FFFFFFFF80AFF1300000417F),
    .INIT_11(256'h0FE01B27F800000060000007FFFFFFFFA1AFF9300000417FFFFFFFFF80000000),
    .INIT_12(256'h20000007FFFFFFFF87AFF530000040FFFFFFFFFF800000001FFFF00F4000000C),
    .INIT_13(256'h8F5FF530000040FFFFFFFFFF000000001FFFF00FE00000020FE00D9FF0000000),
    .INIT_14(256'hFFFFFFFF000000000FFFE00FE000000007F83CFFE000000060000007FFFFFFFF),
    .INIT_15(256'h6FFFC006E000000007F9A3FFE0000000C0000003FFFFFFFF8C5FF51F000040BF),
    .INIT_16(256'h03F59FFFC000000380000003FFFFFFFF087FF51F8000403FFFFFFFFF00000000),
    .INIT_17(256'h00000003FFFFFFFF18BFF5C78000403FFFFFFFFE000000007FFFC01060000000),
    .INIT_18(256'h913FF5C78000803FFFFFFFFE000000007FFFC0380000000003EC7FFFC0000007),
    .INIT_19(256'hFFFFFFFC000000007FFFC03C000000000333FFFF8000000800000003FFFFFFFF),
    .INIT_1A(256'h3FFF803C00000000009FFFFF8000047900000003FFFFFFFF937FF5F48000801F),
    .INIT_1B(256'h02EFFFFF000017F880000007FFFFFFFFC6FFF5F08000418003FFFFF800000000),
    .INIT_1C(256'h6000000FFFFFFFFFDCFFF5AEC001818000FFFFE000000001FFFF001800000000),
    .INIT_1D(256'hE3FFF45AC0018180003FE00000000003FFFF0000000000000B0FFFFF000001C0),
    .INIT_1E(256'h0028000000000003FFFE000000000000080FFFFF000007801800001FFFFFFFFF),
    .INIT_1F(256'hFFFC0000000000017007FFFE00003D000C00011FFFFFFFFFEFFFF486C0010180),
    .INIT_20(256'h4003FFFC0001FCC00300033FFFFFFFFFF1FFE884400340800000000000000003),
    .INIT_21(256'h8180003FFFFFFFFFF3FFE9506003C7800000000000000007FFFC00000000000E),
    .INIT_22(256'hF2FFEB404003C6800000000000000007FFFC00000000003BC000FFFC02037860),
    .INIT_23(256'h0000000000000007FFF800000000006BC0007FFF07E1F0100065003FFFFFFFFF),
    .INIT_24(256'hFE80000000000167C0007FFF9FE0F00000B7807FFFFFFFFFF87FF1C0C002C3C0),
    .INIT_25(256'hE0001FFFBFF8E00060E1B0FFFFFFFFFFFC3FD5C68004C1C00000000000000007),
    .INIT_26(256'h18F07DFFFFFFFFFFFE5FCDE10009C5C0000000000000000FFC0000000000058F),
    .INIT_27(256'hFE2FCDFF0019CFE0000000000000001FF00000000020061FE0001FFFEFFFC000),
    .INIT_28(256'h000000000000003FF00000000000181FE0000FFFEFFFC0004E1DBDFFFFFFFFFF),
    .INIT_29(256'hE00000000008201FE0000FCFCFFF0000070E5FFFFFFFFFFFFF9F8DAA00390FE0),
    .INIT_2A(256'hF0000FCF8FF70000418F13FFFFFFFFFFFF802D34006F3BE0000000000000007F),
    .INIT_2B(256'h3003EBFFFFFFFFFFFE83646800CFF7F8000000000000007FE00000000018600F),
    .INIT_2C(256'hF40043D001BFF7FC001C0000000000FF800000000271801FF000079F8F3F0000),
    .INIT_2D(256'h00028000000003FE000000003FE3003FF000003F8FBE00001803F6BFFFFFFFFF),
    .INIT_2E(256'h00000000FFC4001FF000007FEF1C00000603FD5FFFFFFFFF40008FB00EFFEFFE),
    .INIT_2F(256'hF00000FFE71C00000013FE4FFFFFFFFF2001E0383FFFFFFF0016400000003FFC),
    .INIT_30(256'h0041FF87FFFFFFFF1001FFFFFFFFCFFF0C07A00000003FF8000000007F88001F),
    .INIT_31(256'h0803FFFFFFFFFFFF8F8BD0000001FFF0000000003F10003FF1FC01FFF3F80200),
    .INIT_32(256'h0FFBE79981FDFFE000003C000E2000FFF7FFCFFFF3F902000000FFE3FFFFFFFF),
    .INIT_33(256'h10007F000E4000FFEFFFFFFFF7F8060000003BFCFFFFFFFF0407FFFFFFFF9FFF),
    .INIT_34(256'hDFFFFFFFFFF8000000000FFF7FFFFFFF0087FFFFFFFF9FFF2FFFF33FFFFFFF80),
    .INIT_35(256'h000027FC1FFFFFFF0087FFFFFFFDFFFF0FFDF9F7FFFFFF00FB81FFC0008001FF),
    .INIT_36(256'h0043FFFFFFF9BFFF0FFDFCDFFFFFFC03FFFFFFF8010003FFFFFFFFFFFFF80000),
    .INIT_37(256'h4FFFFE5FFFFFF807FFFFFFFF02000BFFBFFFFFFFFFF00000000009FE0FFFFFFF),
    .INIT_38(256'hFFFFFFFF04801FFF7FFFFFFFFFE000000000047F83FFFFFF0011FFFFFFE1BFFF),
    .INIT_39(256'hFFFFFFFFFFC000000000003FEDFFFFFF0007FFFFFFC1FFFF7FFFFEEBFFFFD807),
    .INIT_3A(256'h00000003FF3FFFFF0001FFFFFF03FFFE7FFEFF67FFFF9007FFFFFFFFABE0FFFF),
    .INIT_3B(256'hC0001FFFFC07BFFE3DFEFFE6FF173037FFFFFFFF4FFEFFFFFFFFFFFFFFC00000),
    .INIT_3C(256'hBCFEFF92FE06607FFFFFFFFE5FFFFFFFFFFFFFFFFF80000000000003FE6FFFFF),
    .INIT_3D(256'hFFFFFFF8B1FFFFFFFFFFFFFFFF80000000000001FF9FFFFF900000FCC007BFFE),
    .INIT_3E(256'hFFFFFFFFFF00000000000002FDEFFFFFA00000000007FFFE641AEFD17C07C07F),
    .INIT_3F(256'h000000043CF0FFFF1C000000000F7FFE640B93D06005C07FFFFFFFF2C0FFFFFF),
    .INIT_40(256'h0C000000000F7FFC6418CDF0800F807FFCFFFFC90007FFFFFFFFFFFFFF000000),
    .INIT_41(256'h742A8E60400A80FFF87FFF960003FFFFFFFFFFFFFE000000000000061CFC7FFF),
    .INIT_42(256'hE01FFF6E0003FFFFFFFFFFFFFE000000000000008EBE3FFF0E000000000FFFFC),
    .INIT_43(256'hFFFFFFFFFC00000000000000411F9FFF0A000000000F7FFD747D070FC00F00FF),
    .INIT_44(256'h00000000601FD7FF02000000000FFFFD64F80310000543FFC80FFCBE0003FFFF),
    .INIT_45(256'h02000000000E7FFC65D00187C00A03FF0006797F0001FFFFFFFFFFFFF8000000),
    .INIT_46(256'h6CF0008FC01E03FF000022FF0001FFFFFFFFFFFFF000000000000000303FF3FF),
    .INIT_47(256'h80004BFF0000FFFFFFFFFFFFE0000000000000001C1FF2FF00000000000F7FFC),
    .INIT_48(256'hFFFFFFFFE7000000000000000003FC3F00000000001EFFFC65601ECC601003FE),
    .INIT_49(256'h000000000081FF1F00000000001FFFFE60C03E41E3C107FFE00157FF00007FFF),
    .INIT_4A(256'h00000000001DFFFE648072461BD9FFFFE003AFFE00003FFFFFFFFFFFC7C20000),
    .INIT_4B(256'h6300E143E3D1FFFFF80E9FFF00001FDFFFFFFFFFC1C60000000000000000FFF5),
    .INIT_4C(256'hFC293FFF00000FBFFFFFFFFFC1C000000000000000007FF508000000003FFFFE),
    .INIT_4D(256'hFFFFFFFFC04000000000000000003FF924000000007DFFFE6B00DE6063E1FFFF),
    .INIT_4E(256'h0000000000000FFE59800000007BFFFE6E81B12003DFDFFFFFF63FFF0000033F),
    .INIT_4F(256'h6E80000000FFFFFE22C346E801E7FFFFFB987FFE0000007FFFFFFFFF80000000),
    .INIT_50(256'h23624F281AA7FFFFECC07FFC000000FFFFFFFFF30000000000000000000003FF),
    .INIT_51(256'hB200FFFC000001FFFFFFFFF30000000000000000000020FF33C0000000F3FFFC),
    .INIT_52(256'hFFFFFFF600000000000000000000007F3800000001F7FFFC3D629FA818C7FFFF),
    .INIT_53(256'h000100000000001D0300000001EFFFFC31F2DFA00487FFFE91FFFFFC000007FF),
    .INIT_54(256'h0000000001E3FFFC3D514FA024E7FFF85FFFFFC000003FFFFFFFFFFC00000000),
    .INIT_55(256'h36622F20366FFFE37FFFFFC00001C7FFFFFFFFDC000000000000000000000005),
    .INIT_56(256'hFFFFFF80000403FFFFFFFFD800000000000000C0000000030000000003D3FFF4),
    .INIT_57(256'hFFFFFFD000000040000000C0000000310000000007C7FFF4B7AD1720327FFF8B),
    .INIT_58(256'h000000C0000000000000000007C7FFF4B1C6EB20127FF32FFFFFFE00003000FF),
    .INIT_59(256'h0000000003E7FFF4B1E1BE20121FCCBFFFFFF00000C000FFFFFFFFF000000004),
    .INIT_5A(256'h75F7A7E0229024FFFFFFF0000E00007FFFFFFFE0000000030000000000000004),
    .INIT_5B(256'hFFFFE000F803803FFFFFFFE00000000300000000000000010000000003EFFFF4),
    .INIT_5C(256'hFFFFFFC0000000018000000000000000000000000365FFF43717E260259093FF),
    .INIT_5D(256'hF8000000000000000000000001F07FF432093CC03A824FFFFFFFE0070003E01F),
    .INIT_5E(256'h0000000002C40FE07386F86026193FFFFFF800730003E01FFFFFFF8000000000),
    .INIT_5F(256'hF26738403804FFFFE013FFEFF000F017FFFFFF00000000003F00000000000000),
    .INIT_60(256'h01FFFFDFFE007803FFFFFF70000000000F800000000000000000000001E01FFB),
    .INIT_61(256'hFFFFFE7C0000000003E00000000000000000000005803FF813FFE5B06093FFFE),
    .INIT_62(256'h00000000000000000000000009C03E652BBDFD8B670FFF003FFFFFDFFF801C01),
    .INIT_63(256'h00000000138033EA23DFFF7ABABFF003FFFFFF99FFE01C01FFFFFC7E00000000),
    .INIT_64(256'hB7EF807FF33F400FFFFFFF103FFE0F80FFFFFC6F000000000000000000000000),
    .INIT_65(256'hFFFFFE000FFF0F807FFFF807C00000000000000000000000000000002280CFBF),
    .INIT_66(256'h3FFFF043E001000000000200000000000000000043037C3AB4FF801FE160003F),
    .INIT_67(256'h000002F000000000000200008706F8272CFFC049C06001FFFFFFF00003FFC380),
    .INIT_68(256'h00020001030D89FC657FC0C5824007FFFFFF8000003FF9E01FFFE0707C000000),
    .INIT_69(256'h793FE38E814FFFFFFFE3FE00000FFFC01FFFC0F03E00000E0000007800000000),
    .INIT_6A(256'hFF3FFE000007FFFE0FFF81F00F00003E0000007C0000000000000002071A0630),
    .INIT_6B(256'h0FFF106007E0003E0000003FC0000000000000041F660841D77FFFD8C23FFFFF),
    .INIT_6C(256'h0000001FC0000000000000103ECC069F977E7E59543FFFFFF9FFFE0000007FFE),
    .INIT_6D(256'h000000205F980CBE3F1E1FB0B27FFFFF9FFFFE0000021FFE07FF000001E00000),
    .INIT_6E(256'hE81F02FF7F7FFFF9FFFFFE0000030FFFC3FE088000F8000000000007F0000000),
    .INIT_6F(256'hFFFFFE00000387FFE3FC0001003C000004000007FC000000000000C0BF301A3E),
    .INIT_70(256'hF1F80001001F000000040007FFC00000000003813E203473F801003E8FFFFF9F),
    .INIT_71(256'h001C40C7FFE0000000000F003C406C77F80082C607FFF3F3FFFFFE00000181FF),
    .INIT_72(256'h00003E003C409E0FFC005D0C0FFF70FBFFFFFF800000C03FFEF00000000F8000),
    .INIT_73(256'hFC01B6BBFFF70063FFFFFFC0000040079D6000000007C000001CC0E3FFF80000),
    .INIT_74(256'hFFFFFFC000000003770E00000000F000001DC063FFF80000000FFE3419416F1F),
    .INIT_75(256'h39C7080000C07800001FE1E7FFFF000003FDFFE824A19F7FFE021F77FE61807B),
    .INIT_76(256'h001FE3FFFFFFC000EE00FFD0382A7AFFFE033D9BFB03807FFFFFFFC00000100F),
    .INIT_77(256'hEC00FFA0140D2BFFFB0138825A00007FFFFFFFF000000002387F800006C03F00),
    .INIT_78(256'hF900910611C0607FFFFFFFE0000000001F77470001860F80001FAB7FFFFEFE00),
    .INIT_79(256'hFFFFFFF00000000003F1F000038307E5803FFFFFFFC0FFE8EC00FE40680627FF),
    .INIT_7A(256'h01FCCC00018381FDFE3FFFFFFFFFF8FCE8007C80D806DFFFFC80508182C001FF),
    .INIT_7B(256'hFEFFFFFFFFF7E0FCA801F900B80435FFF6401A806CE001FFFFFFFFF800000000),
    .INIT_7C(256'h881FFA01730D7607F92826001BC001FFFFFFFFFC00000000000FCB8807C1067E),
    .INIT_7D(256'hF0860950FF000FFFFFFFFFFE00000000000FE6C007C1FFFF7FFFFFFFFFFEE0FC),
    .INIT_7E(256'hFFFFFFFF00000000002FF3703FCFFFDFFFFFFFFFFFFFE03E4FFFF002E70DF400),
    .INIT_7F(256'h004FBE0F30FF3FFFFFFFFFFFFFFFF03E9FFFF007E70CFC003005C630FE700FFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFF9FE3FFFA005C71DF0003042E1E07F0807FFFFFFFFFF80000000),
    .INIT_01(256'h01FF40038FDFF000727C60003D780FFFFFFFFFFFE0000207F1C78F87107FFFFF),
    .INIT_02(256'h7369B0003B900FFFFFFFFFFFF00003FFF3E3E1E9E03FFFFFFFFFFFFFFFFFFFFE),
    .INIT_03(256'hFFFFFFFFFC8007FFFFF1E034783FFFFFFFFFFFFFFFFFFFFFFFFC800F8FEDF800),
    .INIT_04(256'hFFF8781C3FFFFFFFFFFFFFFFFFFFFFFFFFC100170FE5F0007368280FB59207FF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFF82001E0FE0F00073C819F0C9F307FFFFFFFFFFFF801FFF),
    .INIT_06(256'h9F0C000C0FC8F00879C839C6B4E183FFFFFFFFFFFFF03FFFFFFC7C1F3DF7FFFF),
    .INIT_07(256'hF8C8158F29E003FFFFFFFFFFFFFEFFFFFFFC3F18E7E7FFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFC1FFFF8087FFFFFFFFFFFFFFFFFFF1E1000383009F008),
    .INIT_09(256'hFFFF8FFFFF031FFFFFFFFFFFFFFFFFFFBE6000107005F07FFEC809C2AD7003FF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFBCC00040F025F3FF8FF809FF5E7801FFFFFFFFFFFFFFF83F),
    .INIT_0B(256'hB1800019E025FFF3807815FE1FFC01FFFFFFFFFFFFFFE0177FFF9FFFFFC087FF),
    .INIT_0C(256'hF83C00401FBC01FFFFFFFFFFFFFF8002F9FFFFFFFFF833FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFE0000C07FFFFFFFFC0DFFFFFFFFFFFFFFFFFFE300007FE079FFF9),
    .INIT_0E(256'h001FFFFFFFFE00FFFFFFFFFFFFFFFFFFCFC001C3EFD9FFFDFFCE0800011A01FF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFF8C1C0783EFD9FE4F03F388000114007FFFFFFFFFFFFC0000),
    .INIT_10(256'hB003FF9FCFD9FE0F00F9E00000F6037FFFFFFFFFFFF80000003FFFFFFFFF803F),
    .INIT_11(256'hE05C500003FF813FFFFFFFFFFFF80000002FFFF0FFFFF02FFFFFFDFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFF0001800FFFF07FFFF81BFFFFFDFFFFFFFFFF6E901F9D8FD9FFF0),
    .INIT_13(256'hC00FFFF01FFFFF007FFFFEFFFFFFFFFFFE58801C0FDC43E007DCC00003F1007F),
    .INIT_14(256'h3FFFFFFFFFFFFFFF7F40891E0FDC3DE1C03F800003F0007FFFFFFFFFFFFFE001),
    .INIT_15(256'h9F203F9D12C012E1FE050000007F303FFFFFFFFFFFFFFFF3801F7FA003F7FFE0),
    .INIT_16(256'hFFCA8000003D183FFFFFFFFFFFFFFFFFC03F7E004041FFF007FFFFFBFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFF3F640000007FFC03FFFFFFFFFFFFFF2FE833EC83008B61),
    .INIT_18(256'hFF62400000003FFE007FFFFFFFFFFFFF87FF3FEC820189E1FFE300000009081F),
    .INIT_19(256'hD01FFFFFFFFFFFFF97B9FFEE400004A3FFFA00000000000FFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h0BBE1FEE200000E1F1FE00000000080FFFFFFFFFFFFFFFFFFF40000000001FFF),
    .INIT_1B(256'hF1FA000000001C07FFFFFFFFFFFFFFFFFF8000000000071FBC03FFFFE7FFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFF8FFF0000000000000FFF007FFFE7FDFFFF48D70FFC20000641),
    .INIT_1D(256'hF800000000000001F3E00FFFFFF9FFFF449407FC10040631F1E2000000B00403),
    .INIT_1E(256'hFDF003FFFDFBFFFF4893FFFE0E043B30F7F600016E2C0400FFFFFFFFFFFFFF0F),
    .INIT_1F(256'h08B9FFFFE104FF50C7E8000C3F8C00007FFFFFFFFFFFDF0FC000000000000001),
    .INIT_20(256'h83C0202F7F8A00007FFFFFFFFFFFCE0C00000000000000117DFC00FFFFDBFFFF),
    .INIT_21(256'h1FFFFFFFFFFFCE0000000000000000313E5F801FFFC1FFFF08F87FFFE907FDBC),
    .INIT_22(256'h00000000000000787743C00171E3FFFF08F83FFFFD07FEE8807007277FD20000),
    .INIT_23(256'h23CE0CFE3E93DC1F80F81FEFF51FC1D400E00F077FD338000FFFFFFFFFFFD800),
    .INIT_24(256'h80F807EFF49F80FF81400C077FC330100FFFFFFFFFFFE0000000000000000078),
    .INIT_25(256'h81F0000F3FC0B0200FFFFFFFFFFFC0000000000000000038FDF23FE07961D8E4),
    .INIT_26(256'h07FFFFFFFFFF80000000000000000001F8001F800781D8CFC0F003CFF6C3802A),
    .INIT_27(256'h0000000000000001FC00010001E6599FF0B0000FF6C30F9581F8403FBFD4B420),
    .INIT_28(256'hFE0001000004583EE1F0000FF6C39FD441C4003FBFF5B05003FFFFFFFFFF0000),
    .INIT_29(256'hE1F0000FF2C7CFFA83CC0037BBFDF69003FFFFFFFFFE00000000000000000001),
    .INIT_2A(256'h6388C03399F5F86B01FFFFFFFFFC00000000000000000001FC0000000000C87E),
    .INIT_2B(256'h41FFFFFFFFFC000000000000000000023000000000000302E3E0000FF0C7CFE5),
    .INIT_2C(256'h01180000000000000000000000001E0083C0001F41C7E7E593B0C0339FF1A1D7),
    .INIT_2D(256'h0000000000000C00CFC00C1F81E7E7F6C5F04031DFF5C79740FFFFFFFEF80000),
    .INIT_2E(256'hCF981FDF01E7E7F06BE00019FFFF871F40FFFFFFF818000001FC000000000000),
    .INIT_2F(256'h27C00019FFFD819FC07FFFFE3800000001FE0000000000000000000000000002),
    .INIT_30(256'h803FFE000000000003FF00000000000000000000000000029D981FFF03E7F3F3),
    .INIT_31(256'h03FFBC0FC00000000000000000000006F9381FF707E7F3F3938000187FFF833E),
    .INIT_32(256'h0000000000002006F07C1FEB03E0F9F35900001017FE063F8007E00000000000),
    .INIT_33(256'hE0FC1FFA01E07CE32C00001006901E7D800000000000000007FFFF9FF0000000),
    .INIT_34(256'h24F8001007001CFB800000000000000007FFFFFFFC000000000000000000203E),
    .INIT_35(256'h800000000000000007FFFFFFFF80000000000000000020FEC1FC1FFA01E03F03),
    .INIT_36(256'h07FFFFFFFF80000000000000000003FE031C1FF801E01FFF927E001007001AFB),
    .INIT_37(256'h00000000000037FE061C3F8900300073090600100700D9F7E000000000000000),
    .INIT_38(256'h8C0E3FC0001F80000CA038180108F7FFC0000000000010007FFFFFFFFFF80000),
    .INIT_39(256'h0C5003000009EFEF4400000000001C00FFFFFFFFFFFFE0000000000000003FFF),
    .INIT_3A(256'hA00000400001FFFFFFFFFFFFFFFFFDB00000000000003FFF300E3FE0801FF803),
    .INIT_3B(256'hFFFFFFFFFFFFFFF80000000000003FFF000E7FF0000FFFFFCE680000008D71FF),
    .INIT_3C(256'h0000000000003FFFFFFC3FFC60A0FFFFFF300000008E41DF500000000007FFFF),
    .INIT_3D(256'hFFFC3FFF00B60FFE0F18000000CE20BF6A0000000007FFFFFFFFFFFFFFFFFFFE),
    .INIT_3E(256'h038C00000608E0FEDE00000000001FFFFFFFFFFFFFFFFFFFF000000000001FFF),
    .INIT_3F(256'hC4800000002FEBFFFFFFFFFFFFC7FFFFFF00000000401FFFF7FC3FFF803F8190),
    .INIT_40(256'hFFFFFFFFFE03FFFFFF80000003C03FFFFE0C2FFFC03FE00000020000003AF07F),
    .INIT_41(256'hFFC000000380FFFFF8E63FFFC03FF800000180000014F9FD62C0000000800EFF),
    .INIT_42(256'hF1F23FFFC21FFE000000C0000000FDFD37C00000038007FFFFFFFFFFFC00FFFF),
    .INIT_43(256'h00F0600000319BFD9FC000000E0067DFFF87FFFFF8001FFFFFE000001F83FFFF),
    .INIT_44(256'h47000000240001FC1FFE07FEF8000FFFFFE00001FFDFFFFFC7FD3FFFF11FFF00),
    .INIT_45(256'hFFFFFE00000003FFFFF00803FFFFFFFF9FE33DBFF80FFF8000FE30000071BBF9),
    .INIT_46(256'hFFFFEC07FFFFFFFF3FEC38FFF837FFE000FF840000EBF7F830100000940000E7),
    .INIT_47(256'h7FCC9C7EF809FFF80FFFC100015BCFF20E7800011800065F9FFFFFF0000000FF),
    .INIT_48(256'h4FFFE0C003B0FFF207780004000010FF3FFFC7FF0000003FFFFFFE07FFFFFFFF),
    .INIT_49(256'h01FC0011100033FEFFFFAFFFE000000FFFFFFF07FFFFFFFFFFCD9E3EF006FFFE),
    .INIT_4A(256'h7CFFFFFFF000000FFFFFFF0FFFFFFFFFFFC09E1C9007FFFFFFFBF83E0778FFE0),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFE9E0C9003FFFFFFF3FE03F8BEFFE001FC003CC000E7FB),
    .INIT_4C(256'hFFFCDE000003F7FFFFE7FF00087BFFC400F800B36003AFF7E07F5FFFD780000F),
    .INIT_4D(256'hFFEFFFE0000FFFC400FE036660070FE000384FFFCFC00007FFFFFFFFFFFFFFFF),
    .INIT_4E(256'h03FF0FACE00E4714000023F877000000FFFFFFFFFFF9FFFFFFF9DE000001F9FF),
    .INIT_4F(256'h0087800130F800000FFFFFFFFFF9FFFEFFC3EF000000F8FFFFCFFFFFBFFFFFC8),
    .INIT_50(256'h0FFFFFFFFFFDFFFE1F87EF008000FF3FFFDFFFFFFFFFFF8802FFFB5DB81EC026),
    .INIT_51(256'h803C678880007F8FFFFFEFFFFFFFFF8002FFF6F9483FE02A0FBFFC0FFF880000),
    .INIT_52(256'hFFFFE7FFFFFFFF1001FFEEF028FFF0080F8801F1BFF4000003FFFFFFFFFFFFFE),
    .INIT_53(256'h05FFDDFC1FFD385C79F7FFF13F26000001FFFFFFFFFFFFFEF8F8707C00003FC7),
    .INIT_54(256'hC7CFFFE33F450000003FFFFFFFFFFFE07F6C1E7E00001FF3FFFFE7FFFFFFFE00),
    .INIT_55(256'h003FFFFFFFFFFF803F7F18FF80000FF0FFFFE3FFFFFFFE0003FFA9FD9F7DF058),
    .INIT_56(256'h1FBC19FFC00007FC7FFFE3FFFFFFFC0007FF51DD8EF963838E1FFBFC3E4F0000),
    .INIT_57(256'h3FFFE1FFFFFFFC0003FEA13F0DF84F9E30FF8FE03CAE8000001FFFFFFFFFFF80),
    .INIT_58(256'h47FD407E1C799F5787F87C0078DF8000001FFFFFFFFFFF009FB6F1FFC00003FC),
    .INIT_59(256'h7FE1F00079FFF800000FFFFFFFFFFF003DFAE1FFC00001FC1FFFE1FFFFFFF800),
    .INIT_5A(256'h000FFFFFFFFFF90002A2E3FFE02000DE07FFE1FFFFFFF001EFFA807C1CBA03B0),
    .INIT_5B(256'hFE05C1FFFC00004307FFC07FFFFFF00BFFF700F41CFA0C43FFC3C000F9BFF800),
    .INIT_5C(256'h03FFA07FFFFFE00E3FEA01C31DFAD07FFD830000FA7FFC000007FFFFFFFFFF00),
    .INIT_5D(256'hFFC6210B19FA40FFF9000001FE7FFC00000FFFFFFFFFFE00FE76E0FFFA030021),
    .INIT_5E(256'hF1000001FCFFFC000007FFFFFFFFFC00FB1B00FFF943801001FE667FFFFFF406),
    .INIT_5F(256'h0003FFFFFFFFFC00F58F80FFF8C7B00800FE66FFFFFFC0B9FFDC443F1CFA07FF),
    .INIT_60(256'hFC07E07FFC87FDF4007824FFFFFF009DFFA88C751CFBFFFFE0000E61FCFFF000),
    .INIT_61(256'h003004FFFFFE03FFFF510DC51EF3FFFFC001FFF1FBFFE0000001FFFFFFFFFD08),
    .INIT_62(256'hFF220B151FF3FFFFC007FFF3F1FF00000001FFFFFFFE7F9CCE07FE00FD8FFFFE),
    .INIT_63(256'hE007FFFBF5FE000000003FFFFFFE3DFCCA27F3C01FFFBFFF0010004FFFFF073F),
    .INIT_64(256'h00020FFFFFFE3DFCF80FC43C0FFFFFFF4020001FFFEE6E3FFE45CA451FF1FFFF),
    .INIT_65(256'hF81DDF9E0FFFDFFBA000003FFFDEFEFFFD01DC0B1FF3FFFDF307FFFFE10E0000),
    .INIT_66(256'hF400006FFFDFFD7FFCA3BC3B1FF3FFFFFF8FFFFFF800006000030FFFFFFE3CFC),
    .INIT_67(256'hF94FBFF31FF1FFFFFF8FFFFFC000006000030FFFFFFC00F8FA1DD06E0FFFDFFD),
    .INIT_68(256'hFFDFFFFFA0000060000007FFFFFC2078F886D7960DFFFFF7F80800EFFFFFFDFF),
    .INIT_69(256'h00000FFFFFFE2070F94ACFCA09FFFFF7FE5C00FFFEAFF9FFFA1FAFE51FF1FFFF),
    .INIT_6A(256'hF902DF9A019FFFFFFFF400FFFEBFFAFFFC5BA8051FF9FFFFFFFFFFFF60000000),
    .INIT_6B(256'hFFFCB7FFFDEFFBFFF8FB88051FFBFFFFFFFFFFFF0000000000001FFFFFFFE078),
    .INIT_6C(256'hF9DBC80F1FFBFFFFFFFFFFFE0000000000003FFFFFFFF000F9A2A03301BFFFFF),
    .INIT_6D(256'hFFFFFFFD8000000000003FFFFFFFF002F9A2EFC781BFFF3FFFFE7FFFFBEFFDFF),
    .INIT_6E(256'h000FFFFFFFFFF002FDA3F087809FFE3FFFFF1FFFFBEFF5FFE3DFCC1F0FF9FFFF),
    .INIT_6F(256'hFD87FC8F882FFEDBFFFD7FFEFFEFF5FFDFCFEFFF0FFDFFFFFFFFFFCC00000000),
    .INIT_70(256'hBFFFFFFFFFFFF7FFDFEFEFFF0FFFFFFFFFFFFFCE00000000001FFFFFFFFFF03A),
    .INIT_71(256'h8F6FEFDF0FFFFFFFFFFFFF8200000000001FFFFFFFFC2006FD87741F981F9C9D),
    .INIT_72(256'hFFFFFF80000000000003FFFFFFF00006FD86F71DFC6F083C00FFFFFFFFFFF5FF),
    .INIT_73(256'h0073FFFFFFE00006FCC773FDFE7FD0F800DFFFFFFF9FFDFF2F6FEE0F07FFFFFF),
    .INIT_74(256'hFCF7F3FA03F08078001FFFC4B81FFE7FEF6FEE1F87FFFFFFFFFFFF1400000010),
    .INIT_75(256'h001FFF80001FFF7F4F6FEE1F87FFFFFFFFFFFF2C0000001800FFFFFFFFE00006),
    .INIT_76(256'h8FEEE23F83FFFFFFFFFFFE5C0000000800FFFFFFFDE00002FCD7F3807FB04300),
    .INIT_77(256'hFFFFFCBF8000000000FFFFF87FE00000FC4BF837FF000002001FFF80001FFF3E),
    .INIT_78(256'h01FFFFE06FF00000FE0BE7E7FD080000003FFF80FFEFFFFA8FFDE3BFC3FFFFFF),
    .INIT_79(256'hFE0F61FFF3BFE000005FE787FC0FFFA1EFFDE7FFC3FFFFFFFFFFF8BFFE000000),
    .INIT_7A(256'h0A07C70FF02FFF9FEFFD63FFC1FFFFDFFFFFF17FFE00000001FFFFC03FF00000),
    .INIT_7B(256'hFFE4E7FFE1FFF3C7FEFE62FFFFF4000001FFFF80F7F00000FE1F67FFF4F3FE00),
    .INIT_7C(256'hFE7C05FFFFF4000001FFFF0007F08800FE1FE7FFEBF7C7F80C03071FF83FFFFD),
    .INIT_7D(256'h03FFFF0003E01400FF3767FF476FC07FC000073FFC0FFFF1FFFEFFFFE1FFB883),
    .INIT_7E(256'h8E374BC703FFE0FFFC0006FFFFAFFFFBF7FFFFFFFC035C03FF780FFFFFF40FFE),
    .INIT_7F(256'h8C6116FFFFEEFFFFF63BFFFFCF000003FE79FFFFFFF01FFC7F3FFF0003C05801),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFE00F807FFFFFFC00000000000000000000000000000000003FFFFFF),
    .INITP_01(256'hFFFFFF300000000000000000000000000000000007FFFFFFFFFFFFF0FFFFFFFF),
    .INITP_02(256'h0000000000000000000000000FFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFF807C07),
    .INITP_03(256'h000000001FFFFFFFFF7FFFFFFFFFFFFFFFFFFFFBFFF01E03FFFFFE0400000000),
    .INITP_04(256'hFE3FFFFFFFFFFFFFFFFFFFF07FFC0F01FFFFFC06000000000000000000000000),
    .INITP_05(256'hFFFFFF000FFE0700FFFFF801800000000000000000000000000000001FFFFFFF),
    .INITP_06(256'hFFFFF000000000000000000000000000000000007FFFFFFFFE1FFFFFFFFFFFFF),
    .INITP_07(256'h000000000000000000000000FFFFFFFFFF0FFFFFFFE3FFFFFFFFFE0003FF83C0),
    .INITP_08(256'h00000001FFFFFFFFFF03FFFFFF6FFFFFFFFFFC00007FF1E07FFFF00030000000),
    .INITP_09(256'hFF01FF7FFF7FFFFFFFFFFC00003FFFF83FFFE0001C0000000000000000000000),
    .INITP_0A(256'hFFFFFE00000FFFF81FFFC00006000000000000000000000000000003FFFFFFFF),
    .INITP_0B(256'h1FFF800002000000000000000000000000000007FFFFFFFFFF00FEFFFE7FFFFF),
    .INITP_0C(256'h00000000000000000000000FFFFFFFFFFFC039E17C7FFFFFFFFFFF0000047FFC),
    .INITP_0D(256'h0000003FFFFFFFFFFFF001E1B07FFFFFFFFFFF0000021FFF0FFF800000C00000),
    .INITP_0E(256'hFFFC00F3803FFFFFFFFFFF00000207FFC7FF0000004000000000000000000000),
    .INITP_0F(256'hFFFFFF00000103FFE7FE00000018000000000000800000000000007FFFFFFFFF),
    .INIT_00(256'hA4C4C4C4E4E42A6E8E8EF7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7B1CECE),
    .INIT_01(256'h4040406060606062626262626262626262626262626262626282828282A2A4A4),
    .INIT_02(256'h8686868686868686868484848686868686A6A6A6A6A6A6A6C6C6C8C6A6A6A6A6),
    .INIT_03(256'hA6A8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A6A6A6A6A68686868686868686868686),
    .INIT_04(256'h868686868686868686868686868686868686868686868686868686868686A6A6),
    .INIT_05(256'hE4E4E4E4E4E6E4E4E4E4E4E4E4E6E6E6E4E4E4E4E4E4C486280AEAE8C8A68686),
    .INIT_06(256'h4E4C4C4C2C0A0AE8C8C8C6C6C6C8E8E80A0A0A0A0AE8C8C6A6A6A6A6E686E6E4),
    .INIT_07(256'h222222424242426484848484A4A4A4A4A4A4A4A4A4A4C4C4C4C4E6AA4C4C4C4E),
    .INIT_08(256'h6AACAC8A8AAAAA888664AACEAA88664444242424242424242424242424444422),
    .INIT_09(256'hF3D3D1AC888A460448AAA8A8A8A8CACAEAECECECEEF0F5F7F9FBD748E4C2C2C4),
    .INIT_0A(256'hA4C4C4C4E4086C6C6EB3F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7B1AFF3),
    .INIT_0B(256'h4040404040606062626262626262626262626262626262626282828282A2A4A4),
    .INIT_0C(256'h86868686868686848484868484848686848684848686A6A6A6A6A6A6A6A6A6A6),
    .INIT_0D(256'hA6A6A6A6C8C8C8C8C8C8C8C8C8C8C8C8C8C8A6A6A6A686868686868686868686),
    .INIT_0E(256'hA68686868686868686A686868686868686868686868686868686868686868686),
    .INIT_0F(256'hE4E6E6E6E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C48406E8E80A0AEAC8A6A6),
    .INIT_10(256'h2C4E4E4E4E4E2C2C0AE8E8E8C6C8C8E8E80A0A0A0A0AE8C8C6C6A6A6A606A6E4),
    .INIT_11(256'h222244646464848484848484A4A48484A2A2A2A4C4A4C4C4C4C6AA4C2A2A2C2C),
    .INIT_12(256'hD1CECCCCCAA8A8868488AC686644242424242424242422222222222222222222),
    .INIT_13(256'hF5FBF9F5D08A4604C48C8A88A8A8A8CACAEAEACACACACCF0F7FBFDD1662628B0),
    .INIT_14(256'hA4C4C4E4064C6C6C90F9F9F9F9F9F9F9F9F9F9F9F9F9F9F7F7F4F4F7D7D5F5F4),
    .INIT_15(256'h42424040404040626262626262626262606262626262626282828282A4A2A4A4),
    .INIT_16(256'h868686868686868686848684848484848484848484848484848486A6A6A6A6A6),
    .INIT_17(256'h8686A6A6A6A6C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A6A6A68686868686868686),
    .INIT_18(256'hA6A6A6A68686868686A686868686868686868686868686868686868686868686),
    .INIT_19(256'hE4E6E6E6E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4A426C6A6A6C8EAEA0AE8C8),
    .INIT_1A(256'h2C2C4C4E4E4E4E4E4C2C0A0AE8C8C8C8E8E8E80A0A0A0AE8E8C8C6A6A6A626C6),
    .INIT_1B(256'h4464646464648484848484848484848482A2A4A4A4A4A4C4A4884A2C0AE80A0A),
    .INIT_1C(256'hEECCCAA8A8A8CACACCF08A462424242424222202020202020222020222224444),
    .INIT_1D(256'hF7FBF9F7F58A6606C4068A8AA8A8A8C8CACACACAC8C8A8C8CACED0EEAACACEF1),
    .INIT_1E(256'hC4C4C4064A6C6C6ED5F9F9F9F9F9F9F9F9F9F9F9F7F5F4F4F4F4F4F7F7F5F4F4),
    .INIT_1F(256'h42424242626262626262626262626262626262626262628282828282A4A4A4A4),
    .INIT_20(256'h8686868686868686868686848484848484848484848484848484848486A6A686),
    .INIT_21(256'h8686A6A6A6A6A6A6C6C6C8C8C8C8C8C8C8C8C8C8C8A8A6A6A6A6868686868686),
    .INIT_22(256'hC8C8A6A686868686868686868686868686868686868686868686868686868686),
    .INIT_23(256'hC6E4E4E6E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4C4A446C6A6A6A6A6C6E80A0AEA),
    .INIT_24(256'hEA0A0A2C2C4E4E6E4E4E4C2C2A0AE8E8C8E8E8E80A0A0A0AE8E8C6A6A686C646),
    .INIT_25(256'h646464646464646462628484848484848282A4A4A4A4A48646280A0AEAC8E8E8),
    .INIT_26(256'hCACACACAC8C8ECEEF2D248242424040202020202020202020202022222444444),
    .INIT_27(256'hFBFBF9F7D38846E6C6C4086A8AA8A8A8CACACACAC8A8A8A8A8A8A8A8A8A8A8AA),
    .INIT_28(256'hC4C4E64A4C6C6CB3F9F9F9F9F9F9F9F9F9F9F7F5F4F4F4F4F4F4F4F4F4F4F4D4),
    .INIT_29(256'h424242626262626282828282626262626262626262626282828282A2A2A4A4A4),
    .INIT_2A(256'h8686868686868686868686848484848484848484848484848484848484868686),
    .INIT_2B(256'h868686A6A6A6A6A6A6A6C6C8C8C8C8C8C8C8C8C8C8C8C8A8A6A6A6A686868686),
    .INIT_2C(256'h0AE8C8A6A6868686868686868686868686868686868686868686868686868686),
    .INIT_2D(256'h86E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C466C6A686A6A686A6C6C8EA0A),
    .INIT_2E(256'hE8E8E8EA0A2C2C4E4E4E4C4C4C2C0AEAE8C8C8E8E80A0A0AEAE8E8C8A6A686C6),
    .INIT_2F(256'h646444646464626262626262848484848484848484846626E8C8E8E8E8C8C8C8),
    .INIT_30(256'hC8EAEAEAE8E8ECF0F46A46020202020202020202020202020222224444444444),
    .INIT_31(256'hFDF9F9F78C682AE6C6C4C4066A8AAAA8A8A8A8C8C8C8A8A8A6A686888AAAA8A8),
    .INIT_32(256'hC4064A4C6C6C8EF9F9F9F9F9F9F9F9F9F9F6F4F4F4F4F4F4F4F4F4F4F4F7FBFD),
    .INIT_33(256'h424242626262626282828282826282626262626262626282828282A2A2A4A4A4),
    .INIT_34(256'h8686868686868686868686868686848484848484848484848484848484848484),
    .INIT_35(256'h868686868686A6A6A6A6A6A6A6C8C8C8C8C8C8C8C8C8C8C8A8A8A8A6A6868686),
    .INIT_36(256'hEAEAEAC8A6A6A686868686868686868686868686868686868686868686868686),
    .INIT_37(256'h06A6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C486E6A68686868686A6A6A6C8E8),
    .INIT_38(256'hE8E8E8E8E8E80A0A2C2C4C4C4C4C4C2C0AE8E8E8E8E80A0A0A0AE8E8C6A6A6A6),
    .INIT_39(256'h4444444442626262626262626262626464646446462608E8E8C8C8E8E8C8C8C8),
    .INIT_3A(256'hCAEAEAE8C8C8ECF2902624E2E2E2020202020202020202022424244444444444),
    .INIT_3B(256'hD9F9F7F3688E7108C6C4C4C406488AAAA8A8A8C8C8A8C8A8A6A88A8A8ED3AEA8),
    .INIT_3C(256'h064A4C6C6C6CD7F9F9F9F9F9F9F9F9F7F4F4F4F4F4F4F4F4F4F4F4F7FBFDFDDB),
    .INIT_3D(256'h4242426262626282828282828284A48262626262626262828282A2A2A2A4C4C4),
    .INIT_3E(256'h8686868686868686868686868686848484848484848484848484848484848484),
    .INIT_3F(256'h86868686868686A6A6A6A6A6A6A6A8A8A8A8C8C8C8C8C8C8C8C8C8C8A6A68686),
    .INIT_40(256'hC8E80A0AE8C8A6A6868686868686868686868686868686868686868686868686),
    .INIT_41(256'hC626C6E4E4E4E4E6E4E4E4E4E4E4E4E4C4C4A426A6868686868686A6A6A6A6A8),
    .INIT_42(256'hE8E8C8C8C8E8E8E8E80A2C4C4C4C4C4C2C2C0A0AE8E8E80A0A0A0AE8E8C8C6A6),
    .INIT_43(256'h42424242424262626262626264446466464848280808E8E8E8E8E8E8E8E8E8E8),
    .INIT_44(256'hAAE8C8C8C8C8ECD2E62624E20202020202020202020222222424242222224242),
    .INIT_45(256'hD7D5B08A88D5510AC6C4A4A4C4E6488AA8A8A8C8A8C8A8888826084F714E2A68),
    .INIT_46(256'h4A4A4C6C6CB3F9F9F9F9F9F9F9F9F7F4F4F4F4F4F4F4F4F4F2D4FBFDFDDBD9D7),
    .INIT_47(256'h4242426262626282828484828284A48262626262628282828282A2A2A4A4C406),
    .INIT_48(256'h8686868686868686868686868686868684848484848484848484848464848464),
    .INIT_49(256'h868686868686868686868686A6A6A6A6A6A6A8C8C8C8C8C8C8C8E8C8C8A8A6A6),
    .INIT_4A(256'hA6C8E80A0A0AE8A6A68686868686868686868686868686868686868686868686),
    .INIT_4B(256'hA6C646C6E4E4E4E6E6E4E4E4E4E4E4E4C4A446C686A68686A6A68686A68686A6),
    .INIT_4C(256'hE8E8C8C8C8C8C8C8E8E80A0A2A4C2C4C4E4E2C2C0A0A0A0A0A0A0A0A0AE8C8C6),
    .INIT_4D(256'h2222224242424244444446686A6C6C6C4C4C2A2A0A0AEAE8E8E8E8E8E8E8E8E8),
    .INIT_4E(256'h88C8A8A8A8CAD008824822020222220222222222222222222224242222222222),
    .INIT_4F(256'hD5D58E8EAE93712AC6C4A4A4A4A4E428688AA8C8A8A88826E44FB7D7B5D7D528),
    .INIT_50(256'h4A4A4C6CB1F7F9F9F9F9F9F9F9F7F4F4F4F4F4F4F4F4F4B0D3FBFDFBD9D7D7D5),
    .INIT_51(256'h424242626262628284A4A4828282A482626262626282828282A2A2A2A2C4084A),
    .INIT_52(256'hA6A6868686868686868686868686868686848484848484848484848464848464),
    .INIT_53(256'h86868686868686868686868686A6A6A6A6A6A6A6C8C8C8C8C8E8E8E8C8C8C8A8),
    .INIT_54(256'hA6A6A6C8EA0A0AE8C8A6A6868686868686868686868686868686868686868686),
    .INIT_55(256'hC8A6E686E6E4E4E6E6E4E4E4E4E4E4C4A446C6A686A68686A6A6A68686868686),
    .INIT_56(256'hE8E8E8E8C8C8C8C8C8E8E8E8080A0A2A2C2C2C2C2C2C2C2C2A0A0A0A0AEAE8E8),
    .INIT_57(256'h2222222222242446486A8C6E6E6E6E4E4E4C4C4A2A0A0AE8E8E8E8E8E8E8E8E8),
    .INIT_58(256'h06A8A8A8A8CE2A80824824442422242424242424242422222222222222222222),
    .INIT_59(256'hB5D5D38E4A6E6E2CC6C6C4A4A4A4A4C6064888A8A86804E671D9B54A4A8F8F91),
    .INIT_5A(256'h4A4A6C8EF7F9F9F9F9F9F9F9F7F4F4F4F4F4F4F4F4D2B0D5FBFBD9D7D7D7D7D5),
    .INIT_5B(256'h4042424262626284A4A4A4A4A4828282626262626262828282A2A2A2C4282A4A),
    .INIT_5C(256'hC8A8A6A686868686868686868686868686868686848484848484846464848686),
    .INIT_5D(256'h868686868686868686868686868686868686A6A6A6C6C6C8C8E8E8E8E8E8C8C8),
    .INIT_5E(256'h86A6A6A6C8E80AEAEAE8A8A68686868686868686868686868686868686868686),
    .INIT_5F(256'hE8C8A606A6E4E4E6E6E4E4E4E4E4E4C464E6A6A68686868686A6868686868686),
    .INIT_60(256'hE8E8E8C8C8C8C8C8C8C8E8E8E80AE8E8E80A0C2C2C4E4E4C2C2A0A0A0A0AEAE8),
    .INIT_61(256'h2222222446686A6C6C6E6E6E6E6E6E6E6E4C4C2C2A2A0A08E8E8E8E8E8E8E8E8),
    .INIT_62(256'hE866A8A8AC286260826A44442422242424242424242202020202020202020222),
    .INIT_63(256'hD5B14A8E8EAE906E4C06E4E4C4A4A4A6C6E6264846E4C62D95B92DE2E2E4C24C),
    .INIT_64(256'h4A4A6EF7F7F9F9F9F9F9F9F7F4F4F4F4F4F4F4F4D0B0F5F9FBFBD7D7D7D5B5B5),
    .INIT_65(256'h2040404042626282A4C4C4A4A48282626262626262828282A2A2A4E6282A4A4A),
    .INIT_66(256'hC8C8A8A8A6A68686868686868686868686868686868484848484848484868686),
    .INIT_67(256'h86868686868686868686868686868686868686A6A6A6A6A6C8C8E8E8E8EAEAE8),
    .INIT_68(256'h8686A6A6A6A6C8EA0A0AE8A8A686868686868686868686868686868686868686),
    .INIT_69(256'hE8E8C8A626C6E6E6E6E4E4E4E4C4C48606A68686868686868686A68686868686),
    .INIT_6A(256'hE8E8E8C8C8C8C8C8C8C8C8C8C8E80AC8C8E8E80A2C2C4E4E4E4E4C2C2A2A0A08),
    .INIT_6B(256'h04284A6C6C6C6C6E6E6E6E6E6E6E6E6E6E6E4E4C2C2A0A08E8E8E8E8E8E8E8E8),
    .INIT_6C(256'h2CC42806A2608280802624242424220202040402020202020202020202020204),
    .INIT_6D(256'h6C4A4AB08AA8888AACAC6A26E4E6C6A6C6C6E6E6C6A4840C73B771C4C2C2A24F),
    .INIT_6E(256'h4A8EF5F7F7F9F9F9F9F9F9F4F4F4F4F4F4F4F4D0B0F7F7F9FBF9D7D7D5D5D7D5),
    .INIT_6F(256'h2040404040626282A4C4C4A4A28282626262628282828282A2C4082A2A4A4A4A),
    .INIT_70(256'hEAE8C8C8A8A6A6A6868686868686868686868686868484848484848486868686),
    .INIT_71(256'h86868686868686868686868686868686868686A6A6A6A6A6A6C8C8E8E8EAEAEA),
    .INIT_72(256'h86A6A6A6A6A6A6C8EA0AEAEAC8A6A6A6868686868686A6868686868686868686),
    .INIT_73(256'h0A0AE8C8E666C6E6E6E4E4E4C4C48426A686A6A6A6868686A6A6A68686868686),
    .INIT_74(256'hE8E8E8E8E8E8C8C8C8C8C8C8C8E80AEAE8C8C8E8E80A2C4E4E4E4E4E2C2C2A2A),
    .INIT_75(256'h6C6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4C4C2C2A08E8E8E8E8E8E8E8E8),
    .INIT_76(256'h2DA482626282E4E2C2E224240404020202020202020202020202020404264A4C),
    .INIT_77(256'h4A4868AEAAC6C6A6868664462606E6C6C6C6C6C6C8C882C60C73950CA4C42C73),
    .INIT_78(256'h8ED5F7F7D7F9F9F9F9F9F6F4F4F4F4F4F4F4D0B0F7F7D7F9F9D7D7D5F7D58E4A),
    .INIT_79(256'h20404040406282A2C4C4C4C4C4A2826262626282828282A2E608282A2A4A4A4A),
    .INIT_7A(256'h0AEAEAEAC8C8C8A6A6A6A68686868686868686868686868484848484868686A6),
    .INIT_7B(256'h8686868686868686868686868686868686868686A6A6A6A6A6A6C8C8E8E8EAEA),
    .INIT_7C(256'hA6A6868686A6A6A6C8E8EA0A0AE8C8A68686868686A686868686868686868686),
    .INIT_7D(256'h2C2C0AE8C60686C6E4E4E4E4C4A446C6A6A6A6A6A6A6868686A6A6A6A6A6A6A6),
    .INIT_7E(256'hE8E8E8E8E8E8C8E8E8E8C8C8C8C8E80AE8C8C8C8C8E80A0C2C4C4E4E4C4E4C4C),
    .INIT_7F(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4C4C4C2A0AE8E8E8E8E8E8E8E8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:7]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF3FC0000000C00000000000060000000000000FFFFFFFFFFFFF8001703FFC1FF),
    .INITP_01(256'h0000000070000000006001FFFFFFFFFFFFF800C007F81FFFFFFFFF800001807F),
    .INITP_02(256'h00F003FFFFFFFFFFFFE000000FC1FFFFFFFFFFC00000801FFFF8000000070000),
    .INITP_03(256'hFFE00080091FFFFFFFFFFFC000000007FFF80000000300000000000030000000),
    .INITP_04(256'hFFFFFFE000000003FFF8000000000000000000000000000000FF03FFFFFFFFFF),
    .INITP_05(256'hFFF2000000000000000000000000000001FF87FFFFFFFFFFFFE0006001FFFFFF),
    .INITP_06(256'h000000000000000007FFCFFFFFFFFFFFFFE0000003FFFFFFFFFFFFF000000003),
    .INITP_07(256'h07FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFF8000000001FFF000000000000),
    .INITP_08(256'hFFE0000030FFFFFFFFFFFFFE000000000FFFC000000000000000000000000000),
    .INITP_09(256'hFFFFFFFF0000000003FFE00000000000000000000000000007FFFFFFFFFFFFFF),
    .INITP_0A(256'h00FFF80000000000000000000000000007FFFFFFFFFFFFFFFFF00000047FFFFF),
    .INITP_0B(256'h000000000000000007FFFFFFFFFFFFFFFFF00300003FFFFFFFFFFFFF30000000),
    .INITP_0C(256'h0FFFFFFFFFFFFFFFFFF80040001FFFFFFFFFFFFFF0000000000FFE0000000000),
    .INITP_0D(256'hFFFC0000001FFFFFFFFFFFFFFF0000000007FF00000000000000000000000000),
    .INITP_0E(256'hFFFFFFFFFF00000000073FC000000002000000000000000007FFFFFFFFFFFFFF),
    .INITP_0F(256'h00070FF800000000800000000000000007FFFFFFFFFFFFFFFFFF0000000FFFFF),
    .INIT_00(256'hEAA6848482C4040404020202020202020202E2E2E2E2E20404284A6C6E6E6E6E),
    .INIT_01(256'h6A68686ACCC6C6C6A684644422E2C4C4C6C6C6C6C8E8C8E8C8C6EA0CEA717351),
    .INIT_02(256'hD3F7D7D7D7F9F9F9F9F7F4F4F2F2F2F2F2D2B0F5F7F5B3FBF9D7D7F7B36C6A6A),
    .INIT_03(256'h20404040406282A4E4E6E4E4C4A4A2828282828282A2C4E80808282A2A4A4A8C),
    .INIT_04(256'hEA0A0AEAEAE8C8C8C8A8A686868686868686868686868686848484868686A6A8),
    .INIT_05(256'h8686868686868686868686868686868686868686A6A6A6A6A6A6A6C8C8E8E8EA),
    .INIT_06(256'hA6A68686A6A6A6A6A6A6C8EA0A0AEAC8A6A6A6868686A6868686868686868686),
    .INIT_07(256'h4E4E2C0AE8E82686C4C4C4C4C446E6A6A6A6A6A6A6A6868686A6A6A6A6A6A6A6),
    .INIT_08(256'hE8E8E8E8E8E8E8E8E8E8E8C8C8C8E80A0AE8C6C8C8C8E8E8EA0A2C2C4C4E4E4E),
    .INIT_09(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4C4C4C2A2A08E8E8E8E8E8E8E8),
    .INIT_0A(256'hA6A6A4A4E40404040402020202E2E2E2E2E4E40626486A6C8E8E8E8E6F6F6E6E),
    .INIT_0B(256'h68484848AAE8E6C6A684642402C2A282A4E6C6C6C6C6E8C80A0CC8A6C6E8C8C8),
    .INIT_0C(256'hF5D5D7D7D7F9F9F9F9F4F4F2F2F2F2F2F2B0F5F7D5B0D5FBF9F9D78E6A6A6A68),
    .INIT_0D(256'h204040406062A2C4E60606E6E4C4A282828282A2C4E6E80808082A2A4A4A8CD3),
    .INIT_0E(256'hEA0A0A0AEAE8E8C8C8C8A8A6A686868686868686868686868686868686A6A8A8),
    .INIT_0F(256'h868686868686868686868686868686868686868686A6A6A6A6A6A6A6C8C8E8EA),
    .INIT_10(256'hA6A6A686A6A686A6A6A6A6C8E80A0A0AC8A6A6A6868686868686868686868686),
    .INIT_11(256'h4E4E4E4E4E2E4C6886A4C4C486E6A686A686A6A6A6A6868686A6A6A6A6A6A6A6),
    .INIT_12(256'hE8E8E8E8E8E8E8E8E8E8E8C8C8C8C8E80AEAC8C8C8C6C6C8C8E8EA0A0A2C4E4E),
    .INIT_13(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4C4C4C2C2A0A08E8E8E8E8E8E8),
    .INIT_14(256'hA6A4C4E4040404020202E2E2E2E2E406486C6E8E8F8F8F8F8E6E6E6E706F6E6E),
    .INIT_15(256'h484848488AC8E6E6C68444E2C2A2828280A4E8A4A484C6EAA6C8E8C6848484A6),
    .INIT_16(256'hD5D5D7D7F7F9F9F9F7F4F4F2F2F2F2F2D0D3F7F5B0B0F7FBF9D56E6A6A6A6A48),
    .INIT_17(256'h404040406082A4C406060606E4E4C4A2A2C4C6E6E6E60808082828484A8CD3F5),
    .INIT_18(256'hE8EA0A0AEAEAE8E8E8C8C8C8A8A6A68686868686868686868686868686A6A8C8),
    .INIT_19(256'h868686868686868686868686868686868686868686A6A6A6A6A6A6A6A8A8C8C8),
    .INIT_1A(256'hA6A686868686868686A686A6C8E80A0AEAE8C8A6A68686868686868686868686),
    .INIT_1B(256'h4E5193B5D7B5934A4684A4A628C6A6A6A6A6A6A6A6A686868686A6A6A6A6A6A6),
    .INIT_1C(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8E8EAE8C8C8C8C6C6C6C6C6E8E80A0C2C),
    .INIT_1D(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C6C6C6C6C4C4C2A2A0AE8E8E8E8E8E8),
    .INIT_1E(256'h84A4C4E404E4E404E4E4E406486C8E9091919191919191919190908F6F6F6E6E),
    .INIT_1F(256'h484848486AECE6E6E6A422C2A2A28282828082A4626282C80CA6848484A684A4),
    .INIT_20(256'hD5D7D7F7F9F9FBFBF7F4F4F2F2F2F2F2D3F7F7D3D0B0F9F9B38C6A6A6A6A4A48),
    .INIT_21(256'h404040606282C4E40606262606060806E6E6E6E6E6E80808082848488CD2F5D5),
    .INIT_22(256'hC8E8E8EAE8E8E8E8E8C8C8C8C8A8A8A6A6A686868686868686868686A6A8A8C8),
    .INIT_23(256'h868686868686868686868686868686868686868686A6A6A6A6A6A6A6A8A8A8C8),
    .INIT_24(256'hA6A6A6A686868686868686A6A6C8C8E8EAEAEAC8A6A6A6868686868686868686),
    .INIT_25(256'h4F95B5B593704E2C2A4666480AEAC8A6A6A6A6A6A6A6A6A6868686A6A6A6A6A6),
    .INIT_26(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8E8E8C8C8C8C8C8C6C6C6C6C8E80A2C),
    .INIT_27(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C6C6C6C6C6C6C6C4C4C2A0A08E8E8E8E8E8),
    .INIT_28(256'h626282A2C4E4E4064A6EB0B1B3B3B1909091919191919191919090906E6F6E6E),
    .INIT_29(256'h4848484848CCE8E6E6A602A2A2A2A4A4A4A6A48262626262C80C0CEAA6846262),
    .INIT_2A(256'hD7D7D7F7F9FBFDFBF9F7F4F4F2F2F2D2F5F7D3D0D0B2F7908C6A6A6868484848),
    .INIT_2B(256'h6262626282A4E606284A4A6A6A4A4A2808E6E6E6E80808082828488CD0F5D5D5),
    .INIT_2C(256'hC8C8C8E8E8E8E8E8E8E8C8C8C8C8C8C8A8A6A6868686868686868686A8C8C8C8),
    .INIT_2D(256'h86A6868686868686868686868686A6A6A6A6A686A6A6A6A6A6A6A6A6A8A8A8A8),
    .INIT_2E(256'hA6A6A6A686868686868686A6A6A6A6C6C8EAEAE8C8A8A6A68686868686868686),
    .INIT_2F(256'h2F4F2E4E6E6F4F4E4E2A2808E8EA0CEAA6A6A6A6A6A6A6A686868686A6A68686),
    .INIT_30(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8E8E8C8C8C8C8C6C6C6C6E8E80A0C),
    .INIT_31(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C6C6C4C4C6C6C6C4E4C4C2A0A08E8E8E8E8),
    .INIT_32(256'h6262626282E691B3D7B3B3B3B3B3B290909191919191919191909090706E6E6E),
    .INIT_33(256'h484848282868CAE6E6A402A2A2A2A2A4A4A4C6C68282846262A6A68662626262),
    .INIT_34(256'hD7D7F7F9FBFDFDFBF9F9F9F7D4F2F2D5F7F5B0B0D2D58E8A8A6A6A6848484848),
    .INIT_35(256'hA4A4A482C408284A6A6A6A6A6A4A4A4A0808E8E80808082828488CD0F5D5D5D7),
    .INIT_36(256'hC8C8C8C8C8E8E8E8E8C8C8C8C8C8C8C8C8C8A8A6A6A6A6A6A6A6A6A6A8C8C8A8),
    .INIT_37(256'h86A6868686868686868686868686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A8),
    .INIT_38(256'hA6A6A6A68686A6A68686A6A6A6A6A6A6A6C8C8E8EAEAC8C8A6A6868686868686),
    .INIT_39(256'hC8C8EA0C4C4F4F6F6F4E4C2C0A0A0A0CEAC8A6A6A6A6A6A6A6868686A6A68686),
    .INIT_3A(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_3B(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6C6C6C6C4C4C4C6C6C4C4C4C2A2A0A08E8E8E8),
    .INIT_3C(256'hA6A684626284E895D9B5B3B3B3B3B3B39191919191919191919090906E6E6E6E),
    .INIT_3D(256'h4848282828288AE8E6C622A2A2A2A2A2A4A4C6C6C8A484846262424042426284),
    .INIT_3E(256'hD7D7F9F9FDFDFBF9F9FBF9F9F9D4D5D5F7D3D0D3D08C8A6A6A68684848484848),
    .INIT_3F(256'hA4A4C682C608284A6A6A6A6A6A4A4A4A0808080808282828488CD2F5D5D5D5D7),
    .INIT_40(256'hA8A8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A8A8A8A8A8A8A8A8A8C8C8A8),
    .INIT_41(256'hA6A6A68686A6A686868686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8),
    .INIT_42(256'h868686868686A6A6A6A6A6A6A6A6A6A6A6A6A6C6C8E8EAE8C8A6A6A6868686A6),
    .INIT_43(256'hC6C6C8E80A0A2C4E4F4E4E4E4F2C2C2C2D0AC8A6A6A6A6A6A6A6A6A6A6A6A686),
    .INIT_44(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C8C8C6C6C6C6C6C6C6C6),
    .INIT_45(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C4C4C4C4C4C6C6C6C4C4C2A2A0A0808E8),
    .INIT_46(256'hEBEB0D0FEB8484C893D7B3B3B3B3B3B3B39090919191919191909090906E6E6E),
    .INIT_47(256'h28282626262846AAC8C644C2A2A2A2828282A4E8E9E9A46040404242628484A6),
    .INIT_48(256'hD7D7FBFDFDFDFBF9F9FBF9F9F9F9D5F7F7B1D2AE6A6A6A6A6868684848484848),
    .INIT_49(256'hC6C6C6A2C608284A6A6A6A6A6A4A4A4A282828282828486A8CD0F5D5D5D5D7D7),
    .INIT_4A(256'hA8A8A8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8),
    .INIT_4B(256'hA6A686A6A6A68686868686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8),
    .INIT_4C(256'h86868686A6A686A6A6A6A6A6A6A6A6A6A6A6A6A6A6C8E8E8EAE8C8A8A6A6A6A6),
    .INIT_4D(256'hC6A6C6C6C8E80A2C2C2C4C4E4F4F4F2C2C2C0CC8A8A6A6A6A6A6A6A686868686),
    .INIT_4E(256'hE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C8C6C6C6C6C6C6C6C6),
    .INIT_4F(256'h6E6E6E6E6E6E6E6E6E6E6C6C6E6E6E6C4C4C4C4C4C4C4C6C4C4C4C2A2A0A0808),
    .INIT_50(256'h8282A4E9EB0DC884C8B5B5B3B3B3B3B3B3B3B3919191919090909090906E6E6E),
    .INIT_51(256'h2826262626262646CAA68402A2A2A2A282A2A4C6C9EBEB846240404042424062),
    .INIT_52(256'hD7FBFDFFFDFDF9F9F9F9F9F9F9D7D5F7D3D08C6A6A6A6A686868684848484828),
    .INIT_53(256'hC6C6C6A4E6082A4A6A6A6A6A6A4A4A4A4A28282848486A8CB0D5D5D5D5D7D7F7),
    .INIT_54(256'hA8A8A8A8A8A8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8CAC8C8A8),
    .INIT_55(256'hA6A6A6A6A6A686A68686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8),
    .INIT_56(256'h86868686A6A686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C8C8E8EAEAEAC8A8A6A6),
    .INIT_57(256'hC6C6C6C6C6C8E8EA0A0A0A2C2C4C4F4F2C2C4F2F0CC8A8A6A6A6A6A686868686),
    .INIT_58(256'hE8E80808E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C6C6C6C6C8C6C6C6),
    .INIT_59(256'h6E6E6E6E6E6E6E6E6E6E6C6E6E6E6E6E4C4C4C4C4C4C4C4C4C4C4C4C2A0A0808),
    .INIT_5A(256'h62828284A4C8E9C9A6E8B3B3B3B3B3B3B3B3B3B391919190909090908E8E6E6E),
    .INIT_5B(256'h262626260626262646A8A664E4A2A2A282A2C4C6C6C92D2DEA84404040424040),
    .INIT_5C(256'hD9FDFDFFFDFBF9F9F9F9F9F9F9D5F7F7B18C6A6A8A8A8A8A6A6A484848482828),
    .INIT_5D(256'hC6E8E8A4E6282A4A6A6C6C6C6C6A4A4A28282848486A8CB0F5D5D5D5D5D7D7D7),
    .INIT_5E(256'hA8A8A8A8A8A8A8A8A8C8C8A8A8A8A8A8A8A8C8C8C8C8C8C8C8C8EAEAEAE8C8C8),
    .INIT_5F(256'hA6A6A6A6A6A686A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A8A8),
    .INIT_60(256'h86A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C8C8EAEAEAEAC8A6),
    .INIT_61(256'hC6C8C6C6C6C6C6C8E8E8E8EA0A0A2C2C2C2C2F7173510CEAC8A6A6A6A6A6A686),
    .INIT_62(256'h08080808E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C6C6C6C6C6C6C6C8),
    .INIT_63(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C4C4C4C4C4C4C4C4C6C4C4C4C2A2A08),
    .INIT_64(256'h6262828282A4C6C6A6A6E8B3B3B3B3B3B3B3B3B391919190909090908E8E6E6E),
    .INIT_65(256'h26262626486A4A4A2646666646E4A2A2A2A2A2A4A4A6C8E9C90DA64240404040),
    .INIT_66(256'hFDFFFFFDFDF9F9F9F9F9F9F9F7D5F7D56C6A6A6A8A8A8A8C8C8C8C8C6A484826),
    .INIT_67(256'hC6E8E8A4084A4A4A6A6A4A4A4A4A484848484848688CD2F5D5D5D5D7D7D7D7D9),
    .INIT_68(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A6A8A8A8A8C8C8C8C8EAEAEAEAE8C8),
    .INIT_69(256'hC8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A8A8),
    .INIT_6A(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8C8EAEAEAEAC8),
    .INIT_6B(256'hC8C8C6C6C6C6C6C8C8C8E8E8E80A0A0A0A0C2C2F5193732FECC8A8A6A6A6A6A6),
    .INIT_6C(256'h0808080808080808E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_6D(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6C4C4C4C4C4C4C4C4C4C4C4C4C2C2A0A),
    .INIT_6E(256'h6262628282828284A4A4A408B3B3B3B3B3B3B3B3B09090909090908E8E8E6E6E),
    .INIT_6F(256'h4A4828286C4A6C6C280626464648E4C2A2A2A2A2A284A4C6C9C8A66240404040),
    .INIT_70(256'hFFFFFDFDFDF9F9F9F9F9F9F9D7D5F78E6A6A6A6A8A8A8A8C8C8C8C8C8C6A6A6A),
    .INIT_71(256'h84A4A4A2E6082828484A4A4A4A4A4A48484848488EF5F7D5D5D5D7D7D7F7D7FB),
    .INIT_72(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A6A6A6A8A8C8C8E8EAEAEAEAE8),
    .INIT_73(256'hE8C8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A6A6A6A6A6A8A6A6A8A8A8),
    .INIT_74(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C8EAEA0AEA),
    .INIT_75(256'hC8C8C8C8C6C6C6C8C8C8E8E8E80A0A0AE8E80A0C2F4F9395510CEAC8A8A6A6A6),
    .INIT_76(256'h0A0A0A0808080808E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8),
    .INIT_77(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4C4C4C4C4C4C4C4C4C4C4C4C4C4C2A2A),
    .INIT_78(256'h6262626262628282828282A44CD5D3B3B3B3B3B3B0B0909090908E8E8E8E6E6E),
    .INIT_79(256'h6C6A4A4A6C4A6C4A4A06060606484A06C4C4A2A2828284848482626262404040),
    .INIT_7A(256'hFFFDFDFDFBF9F9F9F9F9F9F9D5F7D36A6A6A6A6A8A8A8A8C8C8C8C8C8C6A8C8C),
    .INIT_7B(256'hA4A482C6E6082828484A6A6A6A6A6A4848486AAEF5F7D7D7D5D7D7D7D7D7D9FF),
    .INIT_7C(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A6A6A8A8A8C8C8EAEAEAEAEA),
    .INIT_7D(256'h0AEAC8A8A8A8A8A8A8A8A8A6A6A6A6A6A6A6A6A6A8A8A6A6A6A6A8A8A8A8A8A8),
    .INIT_7E(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8C8EAEA),
    .INIT_7F(256'hE8E8E8C8C8C6C6C8E8E8E8E8E80A0A0AE8E8E8EA0A2C2E515173512F0CEAC8A8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h10000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[16]),
        .I2(addra[14]),
        .I3(addra[12]),
        .I4(addra[13]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h400000000000000007FFFFFFFFFFFFFFFFDF8000000FFFFFFFFFFFFFFF800000),
    .INITP_01(256'h03FFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFE001FD000703FE00000000),
    .INITP_02(256'hFFFFF000077FFFFFFFFFFFFFFFF03FFFE1C1807F000000000000000000000000),
    .INITP_03(256'hFFFFFFFFFFF87FFFF3E0001FC0000000080000000000000007FFFFFFFFFFFFFF),
    .INITP_04(256'hFFF00007F800000006000000000000000FFFFFFFFFFFFFFFFFFFE00003FFFFFF),
    .INITP_05(256'h03800000000000000FFFFFFFFFFFFFFFFFFFF00083FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h0FFFFFFFFFFFFFFFFFFFF801A3FFFFFFFFFFFFFFFFFFFFFFFFF81801FF000000),
    .INITP_07(256'hFFFFF800B1FFFFFFFFFFFFFFFFFFFFFFFFF81E003FF8000001C0000000000000),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFF80F000FFF800000F00000000000001FFFFFFFFFFFFFFF),
    .INITP_09(256'hFFF8070003FFE000007C0000000000003FFFFFFFFFFFFFFFDFFFFC0001FFFFFF),
    .INITP_0A(256'h001E0000000000003FFFFFFFFFFFFFFF807FFC0000FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h3FFFFFFFFFFFFFF1003FF80000FFFFFFFFFFFFFFFFFFFFFFFFF80780007FF800),
    .INITP_0C(256'hF00FF800007FFFFFFFFFFFFFFFFFFFFFFFFC03C0003FFC00000F000000000000),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFE01F80007FE000007C00000000000FFFFFFFFFFFFFFF1),
    .INITP_0E(256'hFFFF00FF0001FF000000E00000000000FFFFFFFFFFFFFFF0FE07F800007FFFFF),
    .INITP_0F(256'h0000780000000000FFFFFFFFFFFFFFF9FF43F000003FFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h2A2A0A0A0808080808E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8),
    .INIT_01(256'h6E6E6E6E6E6E6E6E6E6E6C6E6E6E6E6E4C4C4C4C4C4C4C4C4C4C4C4C4E4C4C2A),
    .INIT_02(256'h42424242626262828282808008B3D5B3B3B3B3B3B3B2B09090908E8E8E8E8E6E),
    .INIT_03(256'h6A4A48486C4A6C4A4A06E6060604284A06E4C2A2828282826262604240404040),
    .INIT_04(256'hFFFDFDFDFBF9F9F9F9F9F9F7D5D5B16A68686A6A8A8A8A8C8C8C8C8C8C6A8C6C),
    .INIT_05(256'h8282C4E6E6082828484A4A4A484848486A8CD0F5F7F7D7D7D7D7D7D7D7D7FDFF),
    .INIT_06(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A6A8A8A8C8EAEAEAEAE8),
    .INIT_07(256'hEA0AEAC8C8C8A8A8A8A8A8A8A8A6A8A8A8A6A6A6A6A6A6A6A6A6A8A6A8A8A8A8),
    .INIT_08(256'hA8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8C8),
    .INIT_09(256'hEAEAE8E8C8C8C8E8E8E8E8E8E80A0A0AEAE8C8C8C8EA0C0C2C4F51512F2C0CEA),
    .INIT_0A(256'h2A2A2A0A0A0A0808080808E8E8E8E8E8E8E8E8E8E8E8E8080A0A0A0A0A0AEA08),
    .INIT_0B(256'h6E6C6C6C6E6E6E6C6E6C6E6C6C6C6C6C6C6C4C4C4C4C4C4A4A4C4C4C4C4C4C4C),
    .INIT_0C(256'h4040424242826262628282C690B3D3B5B3B3B3B3B2B2B0B090908E8E8E8E8E6E),
    .INIT_0D(256'h6A4848484A4A6C4C2A28284A0606066C6C08E6A2828282606060604040404040),
    .INIT_0E(256'hFDFDFDFBFBF7F9F9F9F9F9D5D5B3AE8A6868686A8A8A8A8C8C8C8C6C6C6A6C6A),
    .INIT_0F(256'h8082A2A4C4E406062848486A6A6A6A6AAED0F5F7F7F7D7D7D7D7D7D7D7DBFFFF),
    .INIT_10(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A8A8A8A8A8C8EAEAEAEAE8),
    .INIT_11(256'hC8EAEAEAEAC8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A6A8A8A8A8A6A8A6A6A8A8A8),
    .INIT_12(256'hEAC8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8),
    .INIT_13(256'h0A0A0AE8E8E8E80A0A0AEAE8E8E8E80A0AEAE8C8C8C8C8E8EA0A2C7173512F0C),
    .INIT_14(256'h2C2A2A2A0A0A0A0A0A080808E8E8E8E8E8E8080808080A0A0A2A2A0A0A0A0A0A),
    .INIT_15(256'h6C6C6C6C6E6E6E6C6E6C6E4C4C4C6C6C6C4C4C4C4C4C4C4A4A4C4C4C4C4E4C4C),
    .INIT_16(256'h40404040622A2A06E42A71B5B3B3B3B3B3B3B3B3B2B2B2B09090908E8E8E6E6C),
    .INIT_17(256'h6A4848284A4A6E6C2A28484A284A4A4AB04C0808A28282606060604040406060),
    .INIT_18(256'hFDFDFBFBF9F7F7F7F7F7F7B3D5D58C8A6A6868686A8A8C8C8C8C8C6C6C6A6C6A),
    .INIT_19(256'hA4C4C4C6E60628484A6A6A6A6A8C8CAED2F5F7D7D7D7D7D7D7D7D7D7D7FDFFFF),
    .INIT_1A(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8CAC8C8C8),
    .INIT_1B(256'hC8C8E8EA0AEAEAC8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A8A8A8),
    .INIT_1C(256'h2F0CEACAC8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8),
    .INIT_1D(256'h2A0A0A0AEAE80A0A0A0A0AEAE8E8C8E8EAEAEAE8C8C8C8C8C8C8E80C5173712F),
    .INIT_1E(256'h4C2C2A2A2A2A0A0A0A08080808E8E8E8E808080A0A0A2A2A2A2C2C2C2C2C2C2C),
    .INIT_1F(256'h6C6C6C6C6C6E6E6E6E6C6E4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4C4C4C4C6C4C),
    .INIT_20(256'hA682604040C68CACACACB3D5B5B3B2B3B3B3B3B3B3B2B2B09090908E8E6E6E6C),
    .INIT_21(256'h4A4848284A6C8E6E2828284A284A6A6A4CB54EC4C682606040404040626282A4),
    .INIT_22(256'hFDFDFBFBF9F7F7F7F7F7F7B3D3F76C8A6A6A68686A8C8C8C8C8C8C6C6A6A6A6A),
    .INIT_23(256'hC4C6E6E6062828486A6A8C8C8CAED0D2F5F7F7D7D7D7D7D7D7D7D7D7FBFFFFFD),
    .INIT_24(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8A8A8A8A8A8A8A8A8A8A8C8C8C8C8C8),
    .INIT_25(256'hA6A8C8EAEA0A0AEAE8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_26(256'h71512E0C0CEACAC8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A6),
    .INIT_27(256'h2C2C2C0C0A0A0C2C2C2C0C0AEAE8C8E8E8EAEAEAE8C8C8C8A8A6C8C8EA0C2F51),
    .INIT_28(256'h4C4C2C2A2A2A2A0A0A0A0808080808080808080A2A2A2A2C2C2C2C2C2C2C2C2C),
    .INIT_29(256'h6C6C6C6C6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4A2A4A4A4A4C4C4C6E),
    .INIT_2A(256'h2AC6C68440826CACACACAED5B5B3B2B2B3B3B3B3B3B2B2B09090908E8E8E6E6C),
    .INIT_2B(256'h4A282828284C6E6E2828284A284A6A6A4A4CD76EC48282626060626284A4C6E6),
    .INIT_2C(256'hFDFBFBFBD9F7F7F7F7F7F7B3D5F56C8A6A6A68688A8C8C8C8C8C8C6A6A6A6A6A),
    .INIT_2D(256'hC6C6C6E60828284A6A6C8CACAED0F2F5F7D7D7D7D7D7D7D7D7D7D7D9FFFFFFFD),
    .INIT_2E(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8A8A8A8A8A8A8A8A8A8A8C8C8C8C8A8),
    .INIT_2F(256'hA6A8C8C8C8EA0A0A0AEAC8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_30(256'h2F7193937373510CEAC8C8A8A6A6A6A6A6A6A6A6A6A6A6A6A8A6A6A6A8A8A8A6),
    .INIT_31(256'h2C2C2C2C0C0C2C2C2C2C2C0A0AE8C8C8C8E8EA0A0AEAE8C8C8A6A6C8C8C8EA0A),
    .INIT_32(256'h6C4C4C2C2A2A2A2A0A0A0A0A0808080808080A2A2A2A2C2C4C4C4C4C4C2C2C2C),
    .INIT_33(256'h6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C2A2A4A4A4A4C4C4C6C),
    .INIT_34(256'h4EE82AE8A4622AACACACACD3D5B5B5B2B2B3B3B3B3B3B2B0B0B0908E8E8E6E6E),
    .INIT_35(256'h4A282606284A4C6C0828284A284A6A6A4A4A6EF94CA2606262626484A4C8E828),
    .INIT_36(256'hFDFBFBFBD7F7F7F7F7D7D5B3F7D38A8A6A6A68488A8C8C8C8C8C8C6A486A6A6A),
    .INIT_37(256'hC4A4C4E60828486A6C8C8EAED0F4F7F7D7D7D7D7D7D7D7D5D5D5B7FDFFFFFDFD),
    .INIT_38(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8A8A8A8A8A8A8A8C8C8C8A8A8),
    .INIT_39(256'hA6A8A8C8C8C8EA0A0C0CEAE8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_3A(256'hC8EA0C51517395737393732F0DC8C8A8A8A6A6A6A6A6A6A6A8A8A6A6A8A8A8A8),
    .INIT_3B(256'h4C2C2C2C2C2C2C2C2C2C2C2C0AE8C8C8C8C8E80A0A0A0AE8C8A8A6C8C8C8C8C8),
    .INIT_3C(256'h6C4C4C4C4C2A2A2A2A0A0A0A0A0A0A0A0A0A2A2A2C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_3D(256'h6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4A2A4A4C4A4C4C4C4C),
    .INIT_3E(256'h08E82A2DE884E68EACACACAED5B5B5B3B3B3B3B3B3B3B2B2B0B090908E8E8E6E),
    .INIT_3F(256'h28060606282A4A4A0828284A284A4A6A4A4A4AD7B5E6826262628484A6C8E8C4),
    .INIT_40(256'hFBFBFBFBD5F5F7F7F7D5D5D3F7D18A6A6A6848688A8C8C8C6A6A6A6A284A4A4A),
    .INIT_41(256'hA4C4E60828484A6A8CAEB0D2F5F7F7F7D7D7D7D7D7D7D5D5D5D5D9FFFFFDFDFD),
    .INIT_42(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8C8C8C8C8C8C8C8C8C8A8),
    .INIT_43(256'hA8A8A8A8A8C8C8EA0A0C0C0AEAC8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_44(256'hC8C8E8EA0A2D2F4F51514F5151512F2F2FEAC8A6A6A6A8A8A8A8A6A6A8A8A8A8),
    .INIT_45(256'h4C2C2C2C2C2C2C2C2C2C2C2C0AE8C8C8C8C8E8EA0A0A0A0AE8C8C8C8C8C8C8C8),
    .INIT_46(256'h6C6C6C4C4C4C2A2A2A2A2A2A2A0A0A0A2A2A2A2C4C4E4E4E4E4E4C4C4C4C4E4C),
    .INIT_47(256'h6E6E6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4A4A4A4C4C4C),
    .INIT_48(256'hA2C6A2C8C8A6A44C8CCCCCACD3D5D5B3B3B3B3B3B3B3B2B2B0B090908E8E8E6E),
    .INIT_49(256'h0606E606060808280608282A084A4A6A4A4A4AB5F90A82626262846462626280),
    .INIT_4A(256'hFBFBFBF9D5F5D5D5D5D5D3D3F5B08A6A6A4848688A8A8A6A6A6A484828282828),
    .INIT_4B(256'hC4C40628284A6A8CAED0F2F5F7F7F7D7D5D7D7D7D7D7D5D5D5D7FDFFFDFDFDFB),
    .INIT_4C(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_4D(256'hA8A8A8A8A8A8C8C8EA0A0C2C0C0AE8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_4E(256'hC8C8C8C8C8EA0A0C2F2F2F2D2D0D0A0C0D512FC8A8A6A8A8A8A8A8A8A8A6A8A8),
    .INIT_4F(256'h4C4C4C4C4C4C4C4C4C2C2C2C0AE8E8C8C8C8C8E8EA0A0A0AEAE8C8C8C8C8C8C8),
    .INIT_50(256'h6C6C6E6C4C4C4A4A2A2A2A2A2A2A2A2A2A2C4C4E6E6F6F6F6F4F4E4E4E4E4E4E),
    .INIT_51(256'h6E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4A4A4A2A2A2A4C4C4C),
    .INIT_52(256'h62826262626262C66CCCCCACD2D5D5B5B5B3B3B3B3B3B3B2B0909090908E8E8E),
    .INIT_53(256'h06E4E6E4E4E6E6E6E608282A084A4A4A4A4A4A93F90882626262626262426260),
    .INIT_54(256'hFBFBFBF7D5D5D5D5D5F5B0D3F5AE8A6A6A4848488A6A6A484848280606060606),
    .INIT_55(256'hE6C428284A6A6CAED0F2F5F7F7F7D7D7D5D5D7D5D5D5D5D5D5F9FDFDFDFDFBFB),
    .INIT_56(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8C8C8C8EAEACAC8C8C8C8),
    .INIT_57(256'hA8A8A8A8A8A8A8C8C8E8EA0C2C2C0AEAC8C8C8C8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_58(256'hC8C8C8C8C8C8C8EAEA0C2D2D2D2F2D2D0C0D2F2F2FEAA8A6A6A8A8A8A8A8A8A8),
    .INIT_59(256'h4D4C4C4C4C4C4C4C4C4C2C2C0AE8E8C8C8C8C8E8EA0A0A0A0AEAE8C8C8C8C8C8),
    .INIT_5A(256'h4C4C6E6E6C4C4C4C4A2A2A2A2A2A2A2C4C4C6E6F71717171716F6F4E4F4E4C4C),
    .INIT_5B(256'h6E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4A4A4A2A2A4A4C4C4C),
    .INIT_5C(256'h606260626262626208ACCCACD0D2D5B5D5D5B3B3B3B3B3B2B2B0909090908E8E),
    .INIT_5D(256'hE6E6E4E4C4C4C4C4C4E60808084A4A4A4A4A4A72B7E682626262424242424060),
    .INIT_5E(256'hFBFBF9F7D5D5D5D5D5D3B0D3D3AE8A6A684848486A48484848280606E4C4E406),
    .INIT_5F(256'hE6E628486A8CAED2F4F7F7F7F7D7D7D7D5D5D5D5D5D5D5D5D5F9F9FBFBFBFBFB),
    .INIT_60(256'hA8A8A8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8C8E8EAEAEAEACAC8CACA),
    .INIT_61(256'hA8A8A8A8A8A8A8C8C8C8C8EA0A2C2C0AEAEAC8C8C8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_62(256'hE8E8C8C8C8C8C8C8E8EA0A0C0C2D2F4F4F2F0C0C0D2FEAA8A6A8A8A8A8A8A8A8),
    .INIT_63(256'h4E4C4E4E4E4F4F4E4C4C4C2C0A0AE8E8C8C8C8E8E8EA0A0A0A0AEAEAEAE8EAEA),
    .INIT_64(256'h4C4C6C6E6E6C4C4C4C4C4C2A2A2C4C4C4E6F71717171717171716F6F4F4F4E4F),
    .INIT_65(256'h8E6E6E6E6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4A4A4A4C4C4C4C4C4C),
    .INIT_66(256'h4042404242424242C6AECCACD0D0D5B5D5D5B5B3B3B3B3B2B2B2909090908E8E),
    .INIT_67(256'h08080606E6E4C4C4C4C4E6E608284A4A4A4A4AB74EA460606060424240404040),
    .INIT_68(256'hF9F9F9F7D3D3D3D3D3D28ED2D28C6A68484848484848484828282828E6C4C408),
    .INIT_69(256'h06284A6A8CB0D2F4F5F7F7F7F7D7D7D5B5B5D5B5B5D5D5D5F7F6F4F4D4F9FBF9),
    .INIT_6A(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8E8EAEAEAEAEAEAC8EACA),
    .INIT_6B(256'hA8A8A8A8A8A8A8C8C8C8C8C8EA0A0A0A0A0AEACAC8C8C8C8C8C8C8C8A8C8A8A8),
    .INIT_6C(256'hEAEAEAEAE8C8C8C8E8E8E8EAEA0A2D4F4F4F2F2D0A0C2FEAA8A8A8A8A8A8A8A8),
    .INIT_6D(256'h4E4E4F6F6F6F4F4F4F4E4C2C2A0A0AEAE8E8E8E8E8E8EA0A0A0A0A0A0AEAEAEA),
    .INIT_6E(256'h4C4C6C6E6E6E6E6E6E6E4C4C4C4C4E6F71919191717171717171716F6F6F6F6F),
    .INIT_6F(256'h8E8E6E6E6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4A4A4A4A4A4C4C4C4C4C),
    .INIT_70(256'h4242424242404242626CAC8CB0B0D2D5D5B5B5B3B3B3B3B2B2B2B0B09090908E),
    .INIT_71(256'h08080808080808E6C4C4C4C4E606284A4A4A4AB30AA460606060424242404242),
    .INIT_72(256'hF9F9F9D5D2D2D2D2D2D28ED0D08C6A48484848484848484848282828E6C6C4E6),
    .INIT_73(256'h064A6C8ED0D2F4B0B0B0F5F5F7F7F7D5D5D5D5B3B3B5D5D4F6F4F2F2F0F9F9F9),
    .INIT_74(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8C8CACAC8E8EAEAEAEAEAEAE8EACA),
    .INIT_75(256'hA8A8A8A8A8A8A8C8A8A8C8C8C8C8E8EA0A0A0AEAEAC8C8C8C8C8C8C8C8C8C8C8),
    .INIT_76(256'hEAEAEAEAEAEAE8EAE8C8C8C8C8E8EA0D2F4F4F2F2F2D4F2FEAC8A8A8A8A8A8A8),
    .INIT_77(256'h6F6F6F6F6F6F6F6F6F4F4F4C2C2A0A0AEAEAEAEAEAEAEAEA0A0A2C2C0C0A0A0A),
    .INIT_78(256'h4C4C4C6C6E6E6E6E6E6E6E6E6E6E6F9191919171717171717171717171717171),
    .INIT_79(256'h8E8E8E6E6C6C6C6C4C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A4C4C4C4C),
    .INIT_7A(256'h424242424242424262A44A90D3B0B0D5D5B5B5B5B3B3B3B3B3B2B2B0B090908E),
    .INIT_7B(256'h2A2A2A2828280808E606E6E6C4C40608282A4A4CE68262626062424242424242),
    .INIT_7C(256'hF9F9F9D5D2D2D2D2D2D28EAEB08C6A48484848484848484A48484A2A08E6E808),
    .INIT_7D(256'h288CAED0F2D2266A8E8E8EB0D0D2D3F5F5F5F5D5D3D2D2F4F4F2F2F0D0F9F9F9),
    .INIT_7E(256'hA8A8A8C8C8A8A8A8A8A8A8A8A8A8A8A8C8C8CACACAE8C8E8EAEAEAEAEAEAEACA),
    .INIT_7F(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8EA0A0A0C0AEAC8C8C8C8C8C8C8A8A8A8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFEFFFFFFFFFFFFFAFFF0F000000FFFFFFFFFFFFFFFFFFFFFFFFFE0FFF000FFC0),
    .INITP_01(256'h7FF870000000FFFFFFFFFFFFFFFFFFFFFFFFFEFFFC000FF000001E0000000000),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFE0007FC0000070000000000FFFFFFFFFFFFFFF0),
    .INITP_03(256'hFFFFFFFFFF0001FF0000008000000000FFFFFFFFFFFFFFE00078E00000007FFF),
    .INITP_04(256'hC000000000000001FFFFFFFFFFFFFFE00009C00000003FFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFE00003800000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001F),
    .INITP_06(256'h0007800000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FF000000000000000),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FC00000000000100EFFFFFFFFFFFFFE0),
    .INITP_08(256'hFFFFFFFFFFFFF800FF80000180000100EFFFFFFFFFFFFFE0400F000000000FFF),
    .INITP_09(256'h6FE00000F0000100F7FFFFFFFFFFFFE0E38F000000000FFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFE0E7DF000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800),
    .INITP_0B(256'h07FF0000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0043F000003C000000),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007F00001E000000FFFFFFFFFFFFFEE0),
    .INITP_0D(256'hFFFFFFFFFFFFFF80000FE0000FC00000FFFFFFFFFFFFFF6007FF0000003007FF),
    .INITP_0E(256'h0607F80007E40000FFFFFFFFFFFFFF30063E000003FC07FFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFB0007C0003FFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80),
    .INIT_00(256'h0A0A0A0AEAEAEAEAEAEAE8E8C8C8E8EA0C0D0D2D2D2F4F2F0D0DEAC8A8A8A8A8),
    .INIT_01(256'h6F6F6F6F6F6F6F6F6F6F6E4E4C2C2C0A0A0A0AEAEAEAEAEA0A0A2C2C2C2C2C0C),
    .INIT_02(256'h4C4C4C6C6E6E6E6E6E6E6E6E6E6F717171717171717171717171919171717171),
    .INIT_03(256'h8E8E8E6E6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_04(256'h6262426262626262626284C60A4E90B5B5B5D5B5B5B3B2B2B3B2B2B0B0909090),
    .INIT_05(256'h2A2A2A2A282A2A2808080808E6C4C4E608088E4CC48262626062424242424242),
    .INIT_06(256'hF9F9F9D5D2D0D0D0D0B08EAEAE8C684848284848484848484A484A2806E808E6),
    .INIT_07(256'h4AB0D2F2D0AC04E48C6C4A6C8C8EAEAEB0D0D0D0D2D2D2F4F2F2F0CE8CB0F9F9),
    .INIT_08(256'hA8A8C8C8C8C8A8A8A8A8A8A8C8C8C8C8C8CACAEAEAC8C8C8EAEAEAEAEAEAEACA),
    .INIT_09(256'hA8A8A8A8A8A8C8A8A8A8A8A8A8A8A8C8C8EAEA0A0C0A0BEAC8C8C8C8C8A8A8A8),
    .INIT_0A(256'h2C0C0A0A0A0AEAEAEAEAEAEAE8EAEAEAEAEAEAEA0D2D4F4F2F2F532FEACAC8C8),
    .INIT_0B(256'h6F6F6F6F6F6F6F716F6F6E4F4C2C2C2C0A0A0A0A0A0A0AEA0A0A2C2C2D2D2D2D),
    .INIT_0C(256'h4C4C4C4C6C6E8E8E8E6E6E6E6E6F71717171717171717171717171719171716F),
    .INIT_0D(256'h908E8E8E6E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_0E(256'h6262626262626262626484A4A4A4C6E84EB5D5D5B5B3B3B2B3B3B2B2B0B09090),
    .INIT_0F(256'hE60608082A28282A0808280808E6A2A2C450D506A28262626262424242424242),
    .INIT_10(256'hF7F7F7D5D0B0B0D0D0B08CD08E8C6848282848484A48484828280606C4C4A4C4),
    .INIT_11(256'hAEF2F2CEACAC8A04266C6C486A6C6C8C8E8C8CAEAEAEAED0D0F0CE8A8A6AF9F9),
    .INIT_12(256'hC8C8C8C8C8C8A8A8A8A8C8C8C8C8C8C8C8CAEAEAEAC8C8C8CAEAEAEAEAEAEAEA),
    .INIT_13(256'hC8A8A8A8A8A8C8C8A8A8A8A8A8A8A8A8A8C8C8EAEA0A0B0AEAC8C8C8C8C8C8C8),
    .INIT_14(256'h2D2C2C2C0A0A0AEAEAEAEAEAEAEAEAEAEAEAEAE8EA0D2D2F2F2F5173730DECEA),
    .INIT_15(256'h6E6F6F6F717171716F6F6F4F4C4C4C2C2C0C0A0A0A0A0A0A0C0A0C2C2D4F4F4D),
    .INIT_16(256'h4C4C4C4C6C6E6E8E8E8E6E6E6E6E706E6F6F6F71716F6F717171717171716F6E),
    .INIT_17(256'h908E8E8E8E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_18(256'h4262426262626262848484A4C6C6C6A6A24CD3D5D5D5B3B3B3B2B2B2B0B0B090),
    .INIT_19(256'hC4C4C4C4C4E4E6E6E8082A0808E6A4A42EF92AC4826262606062424242424242),
    .INIT_1A(256'hF7F7F7D5D0B0B0B0B0B06C9090B0B3D3B16C6A4A4A4A2828060606E4A2A4A4A4),
    .INIT_1B(256'hF2F2AEACACAAAC2604266C4A48486A6CAE8C8C8C8C8C8C8CACCEAC6A6A6AD5F9),
    .INIT_1C(256'hC8C8C8C8C8C8A8A8A8C8C8C8C8C8C8C8CAEAEAEACAC8C8C8C8EAEAEAEAEAEAEA),
    .INIT_1D(256'hEBCAC8A8A8C8C8C8A8A8A8A8A8A8A8A8A8C8C8C8C8EAEAEB0AEACAC8C8C8C8C8),
    .INIT_1E(256'h4F4D2D2C0C0A0A0AEAEAEAEAEAEAEAEAEAEAEAE8E8EAEA0A0D0D2F5195952F0D),
    .INIT_1F(256'h4E4E6F6F71716F6F6F6F6F4F4C4C4C2C2C2C0A0A0A0A0C0C0C0C2C2C2D4F4F4F),
    .INIT_20(256'h4C4C4C4C6C6E6E8E8E8E8E8E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F6F6F4E),
    .INIT_21(256'h90908E8E8E8E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_22(256'h424242426262626264848484A6C8C8E8A4C44AD3D5D5D5B3B3B2B2B2B0B0B0B0),
    .INIT_23(256'hE4E4C4C4C4C4C4C4C4C4E6E808C6A650F96EE4A2826262606062424242424242),
    .INIT_24(256'hF7F7F7F5B0AEB0AEB0B2B5D7F7D5D5D5B3B18E6C6C6C4A06060606C4A2A4A4C4),
    .INIT_25(256'hAEACACACAAAAAA6804264A6A4A484A6C8E8C8C6C8C8C8C8E8CACAC6A6A6AD2F7),
    .INIT_26(256'hC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8EAEAEAEACACAC8EAEAEAEAEAEAEAEAEA0C),
    .INIT_27(256'h2F0DEAC8C8C8C8C8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8EAEAEAEAEACAC8C8C8),
    .INIT_28(256'h4F4F4F2D2D2D0C0A0A0A0A0A0BEAEAEAEAEAEAEAEAE8C8C8C8EAEC0D2FB7B731),
    .INIT_29(256'h4E6F6F6F6F6F6F6F6F6F4F4E4C4C4C2C2D2C0C0C0C0C0C2C2C2D2C2D2D4F4F4F),
    .INIT_2A(256'h4C4C4C4C6C6E6E8E909090908E8E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6F6F4E4E),
    .INIT_2B(256'h90908E8E8E8E6E6E6E6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_2C(256'h42404242626262626262848484A6A6A482A4E48CD5D5D5B3B3B3B2B2B2B0B0B0),
    .INIT_2D(256'hE6E6E6E6C4C4E4C4C4C4C4C4C4A473F96EE6C282826262626062424242404240),
    .INIT_2E(256'hF5F5F5D28E8EB0D5F7F7D5D5D3D3D3D3B1B18F8E2A4A6C28060606C4A2A4A4C4),
    .INIT_2F(256'h8CAE266AAAAAAA8A2404286A6C4A4A4A6C6C8C6C8C8C8C8E8C8CAE6A6A6AB0D2),
    .INIT_30(256'hC8C8C8C8C8C8C8C8C8C8C8C8C8C8EAEAEAEAEACAC8C8EAEAEAEACACACAEAEAEA),
    .INIT_31(256'h512F0F0DEBCAC8C8A8C8C8A8A8A8A8A8A8A8A8A8A8C8C8C8C8EAEAEAEAEBCAC8),
    .INIT_32(256'h4F4E4F4F4D2D2D0D0D0C0D0D0D0D0B0A0A0AEAEAEAEAC8C8C8C8CAEA0D2FB7B7),
    .INIT_33(256'h4E6E6F6F6F6F6F6F6F4F4E4C4C4C4C4C2D2C2C2C2C2C2C2D2D2D2D2D2D4F4F4F),
    .INIT_34(256'h4C4C4C4C6C6E6E8E8E90909090908E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4E4E4E),
    .INIT_35(256'hB090908E8E8E8E8E6E6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_36(256'h404242424242426262626262848462A482A2C428D2D5D5B5B3B3B2B2B2B2B0B0),
    .INIT_37(256'hE6E6E6E6E4E4E6E6E6E4C4C4A473F98E26C4A282626262626242424240404042),
    .INIT_38(256'hF2F5F5F5D3F7F9F7F7F7F5D5D3D3D3B1B0B3918F4A284C6C080606C4A2A4A4C4),
    .INIT_39(256'hAE6C28C2688AAAA86626284A6E6C4C6C6C6C6C6C6C8C8C8E8C8E8E8C6A6A8CAE),
    .INIT_3A(256'hEAEACAC8C8C8C8C8C8C8C8C8C8C8EAEAEAEAEACAC8CAEA0CEAEACACACAEAEAEA),
    .INIT_3B(256'hB92F2F2F2F0DEAEAC8C8C8A8A8A8A8A8A8A8A8A8A8A8A8C8C8C8C8EAEAEAEAEA),
    .INIT_3C(256'h4F4F4F4F4F4D2D2D0D0D0D0D0D0D0D0D0D0A0AEAEAEAEAC8C8C8C8C8CAEA2FB9),
    .INIT_3D(256'h6E6E6E6E6E6E6E6E6F4F4C4C4C4C4C4C4D2C2C2D2D2C2D2D2D2D2D2D2D4F4F4F),
    .INIT_3E(256'h4C4C4C4C6C6E6E8E9090909090908E8E8E8E8E8E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_3F(256'hB0B090908E8E8E8E8E6E6E6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_40(256'h42424242424242626262626262624082A2A2C4E48ED5D5D5B3B3B3B2B2B2B0B0),
    .INIT_41(256'hE606E6E6E4E6E6E6E6E6E6C473FB9048E4A28262626262626242424242424242),
    .INIT_42(256'hD0F3F5F7F7F7F7F7F5F5D5D3D3D3D3B0B0B1B18F6E28286C4A0808C4A4A4A4C4),
    .INIT_43(256'h6C6C6CE404888A88884626288E6E6E6C6C6C6C6C6C6C8C8C8C8C8E8C6A6A8C8C),
    .INIT_44(256'h0AEAEAEACAC8C8C8C8C8C8C8C8C8EAEAEAEAEACACAEAEA0CEAEACAEAEAEAEAEA),
    .INIT_45(256'hB9950F2F4F2F2F0D0DEACAC8A8A8A8A8A8A8A8A8A8A8A8C8A8C8C8C8EAEAEA0A),
    .INIT_46(256'h4F4F4F4F4F4F2D2D2D2D0D0D0D0D0D0D0D0D0A0A0AEAEAE8EACACACAC8C8CAED),
    .INIT_47(256'h4E4E4E4E4E4E4E4E4F4E4C4D4D4D4C4D4D2C2D2D2D2D2D2D2D2F2F2F2F4F4F4F),
    .INIT_48(256'h4C4C4C4C6C6E8E9090909090B0B0908E8E8E8E908E8E6E6E6E6E6E6E6E6E6E4E),
    .INIT_49(256'hB0B09090908E8E8E8E6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_4A(256'h42424242424262424262626262424062A482C4C44AD5D5D5D5B5B3B3B2B2B2B0),
    .INIT_4B(256'h080806E6E4E6080606E6E6E8F98E6826C4A28262626262626242424242424242),
    .INIT_4C(256'hAED0F5F7F7F7F7F7F5F5D3D3D3D3D3B1B3D3B3916F4A082A4C2A08C4A2A4A4C4),
    .INIT_4D(256'h6C6C6C28E4468888886848288EB1B18E6E6C6C6C6C6C6C8C8C8C8C8C6A6A8A8C),
    .INIT_4E(256'h0A0A0A0AEAEAC8C8C8C8C8C8C8EAEAEAEAEAEACACAEAEA0AEAEAEAEAEAEAEAEA),
    .INIT_4F(256'hECD90FEA0D2F2F2F2F0D0DEACAC8C8C8A8A8A8A8A8A8A8C8C8C8C8C8C8C8EAEA),
    .INIT_50(256'h2F2F2F4F4F4F4F2D2D2D2D2D2D2D2D2D0D0D0D0A0AEAEAEAEACACAC8C8C8C8C8),
    .INIT_51(256'h4E4E4E4C4C6E6E6E6F4C4D4D4D4D4D4D4D2D2D4D4D4D4D4D4D4F2F2F2F2F2F2F),
    .INIT_52(256'h4C4C4C4C4C6C8E9090909090B0B0B0908E8E8E8E8E8E8E6E6E6E6E6E6E6E6E6E),
    .INIT_53(256'hB0B0B090908E8E8E8E6E6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_54(256'h424242424242424262424242424240408282A2C428D3D5D5D5B5B3B3B2B2B2B2),
    .INIT_55(256'h060806E6E4282A080606E608D28A8A26E4A28262626262424242424242424242),
    .INIT_56(256'h8CAEF2F5F7F7F7F5F5D3D3D3D3B3D3B3B3B3B3B16F6F08084C4C08C4A2A4A4C4),
    .INIT_57(256'h6C6C6C6C0624668888AC48288ED5D5B391B1918E8E8E6C8C8C8C8C8C6A6A8A6A),
    .INIT_58(256'hEAEA0C0D0D0AEACAC8C8C8C8EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_59(256'hC82FEAC8EAEA0D0F2F2F2F0FEDEDCAC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_5A(256'h2F2F2F2F4F4F4F4F2F2F2D2D2D2D2D2D2D2D0D0D0B0AEAEAEBEBCBC8CACAC8C8),
    .INIT_5B(256'h6E6E6E6E6E6E6E6E6E4F4D4D4F4D4D4D4D4D4F4F4F4F4F4F4F4F4F4F2F2F2D2F),
    .INIT_5C(256'h4C4C6C6C6C6C6C8E909090909090B090908E8E8E8E8E8E6E8E6E6E6E6E6E6E6E),
    .INIT_5D(256'hB0B0B09090908E8E8E6E6E6E6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_5E(256'h42424242426262624262624240404040628282C4E4B2D5D5D5B5B5B3B3B2B2B2),
    .INIT_5F(256'hE6E6E6E6C44A4A0806060608D2AC8824E2C2C482626242424242424242424242),
    .INIT_60(256'h8C8CAEF3F5F5F5F5D3D3D3D3B3D3B3B3B3B3B3B38F6E4CE6084C2AA2828282A4),
    .INIT_61(256'h6A4A6C6C2A06668888D06A286CD5D7D5B3D3B3B1B08E8E8E8C8C8C8C6A6A6A6A),
    .INIT_62(256'hC8EAEA0D0D0C0CEAEAEAC8EAEAEAEBEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_63(256'hC8C8C8C8C8C8EAEAED0D2F2F0F0D0D0DEBCAC8C8C8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_64(256'h2F2F2F2D4F4F4F4F4F4F2F2F2F2D2D2D2D2D2D0D0D0B0B0BEBEBEBCBCACAC8C8),
    .INIT_65(256'h6E6E6E6E6E6E6E6E6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2F),
    .INIT_66(256'h4C4C6C6C6C6C6C6E8E8E8E909090909090908E90909090909091918F6E6E6E6E),
    .INIT_67(256'hB2B0B0909090908E8E8E8E6E6E6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_68(256'h4242426260626282C6E84E2CE8EA4242608282A4E490D5D5D5D5B5B5B3B3B2B2),
    .INIT_69(256'hE6E6E6E6C42A2A080606066C8CCC6824C2C2C2A4826042424242424242424242),
    .INIT_6A(256'h6A8A8CD0F5F5F5F3D3D3D3D3D3D5B3B3B3B3B3B3B36E4C08E62A4CC4828282A4),
    .INIT_6B(256'h6A4A6C6C4A06466688AC6A484A8EB19191B1B3B191908E8E8E8E8E8E6A686A6A),
    .INIT_6C(256'hC8C8CAEA0A0C2C0C0A0AEAEAEAEBEBEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_6D(256'hC8C8C8CAEBEBC8C8CAEAEAED0D2F2F2F2F0D0DEBEACAC8C8C8C8C8C8C8C8C8C8),
    .INIT_6E(256'h2F2F2D2F2F4F4F4F4F4F4F2F2F2F2D2D2D2D2D2D0D0D0B0B0BEBEBEBCBCBCBC8),
    .INIT_6F(256'h6E6E6E6E6E8F8F8F6F6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_70(256'h4C6C6C6C6C6C6C6C6E6E6E6E6E6E90909090909090909090919191916E6E6E6E),
    .INIT_71(256'hB2B2B0B0909090908E8E8E6E6E6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C6C4C4C4C),
    .INIT_72(256'hE8E8A4C4E6E8082A4C4C6ED570708462406080A2C490D5D5D5D5D5B5B5B3B3B3),
    .INIT_73(256'hC4E4C4C4C40808E6E6E628AEAC6826E4C2E2C2C28260624242424242426282A4),
    .INIT_74(256'h6A6A8CAED0F0D0D3D3D3D3D3D3D3B3B3B3B3B3B3B3914C4CE6E62C0AA28282A4),
    .INIT_75(256'h4A4A6C8C2A064666688A6A48486C6E6E8E8E908E8E8E8E8E8E8E8E8E6A486A6A),
    .INIT_76(256'hA8C8C8CAEA0A0D2C2C0C0AEAEA0BEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_77(256'hC8CACAC8CA2F0DC8C8C8C8CAEB0D2D2F2F2F2F0F0DEBCAC8C8C8C8C8C8C8C8C8),
    .INIT_78(256'h4F4F2F2F4F4F4F4F4F4F4F4F4F4F2F2D2D2D2D2D2D0D0D0B0BEBEBEBCBCBCBCA),
    .INIT_79(256'h6E6E6F6F8F918F8F716F6F6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_7A(256'h6C6C6C6C6C6C6C6C6C6E6E6E6E6E909090B0B19090909090919191918E6E6E6E),
    .INIT_7B(256'hB3B2B2B0B0B090908E8E8E8E6E6C6C6C6C6C6C6C6C6C6C4C4C4C6C6C6C6C6C6C),
    .INIT_7C(256'h4C2A0808082828282A6C6CD5B06E0A4040608082A4B5D5D5D5D5D5D5D5B3B3B3),
    .INIT_7D(256'hC6C4C4C4C4C6E6E6E608B08A8A24E4C2E4E4C2A2A282626262628482C6E8082A),
    .INIT_7E(256'h6A6A6A8CACACAED0D3D3D3D3D3B3B3B3B3B3D3D3D3B34C4C08E6082CE68282A2),
    .INIT_7F(256'h4A4A6C8C08064666688A8A48486A6C6C6E8E8E8E6E6E8E8E8E8E8E8E6A486A6A),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h007C0007FFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800303FE0003FE0000),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE001C07F8000FF0000FBFFFFFFFFFFFF98),
    .INITP_02(256'hFFFFFFFFFFFFFFE0007C3FFFFE7F8000F3FFFFFFFFFFFFCC00F00007DFFE07FF),
    .INITP_03(256'h003F7FFFFFFFFBF8F3FFFFFFFFFFFFEC00C00003CFFE07FFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hF3FFFFFFFFFFFFE600800000C7FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INITP_05(256'h01800000C07F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800077FFFCFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000003FFFFFFFFF73FFFFFFFFFFFFF2),
    .INITP_07(256'hFFFFFFFFFFFFFFFF0000001FFFFFFFFF67FFFFFFFFFFFFF300000000C07F87DF),
    .INITP_08(256'h8000000FFFFFFFFF67FFFFFFFFFFFFF980000000407FC7DFFFFFFFFFFFFFFFFF),
    .INITP_09(256'h67FFFFFFFFFFFFFDC0000000407FC31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hC0000000406FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FC001FFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFFFFFFF6FFFFFFFFFFFFFFE),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFF4FFFFFFFFFFFFFFE6000000040CFC03F),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFF30000000000F003FFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hBFFFFFFFFFFFFFFF900000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hD8000000000001BF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hC8C8C8C8CAEA0A0A2C2C2D0C0C0D0CEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_01(256'hCBCACACAC8CA0F2FCAC8C8C8C8EA0B0D2F2F2F2F2F2F0DEBCAC8C8C8C8C8C8C8),
    .INIT_02(256'h4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2D2D2D2D2D2D2D0D0D0DEBEBEAEBEBCBCA),
    .INIT_03(256'h8F8F8F919191919191716F6F6F4F4F6F6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_04(256'h6C6C6C6C6C6C6C6C6C6C6C6E6E6E8E909090B19190909091919191918E8E8F8F),
    .INIT_05(256'hB3B2B2B2B0B0B090908E8E8E8E8E8E6E6C6C6C6C6C6C6C4C4C6C6C6C6C6C6C6C),
    .INIT_06(256'h4A28060608082828284A4AB3B04C706040606060A4D5D5D5D5D5D5D5D5D5B3B3),
    .INIT_07(256'hC4C4C4C4A4C4E6E6C6B26A8A2404C2A2C2C4E6A2A2A282A4A4A4E8A4E8080828),
    .INIT_08(256'h486A488C8AACAED0D3D3D3D3D3B3B3B3D3D5D5D5D5D5914C2AE6E62A2AA482A2),
    .INIT_09(256'h2A6C6C6C06E44466688A6848486A6C6C6C8E8E6E6C6C8E8E6E8E8E8E4A484848),
    .INIT_0A(256'hC8C8C8C8CAEAEAEA0A0C2D2D2D2D0D0AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_0B(256'hCBCBCACACAC8C80F9553EDC8C8C8EAEAEA0D2F2F2F2F2F2F0DEBEBCAC8C8C8C8),
    .INIT_0C(256'h4F4F4F4F4F4F4F4F4F6F6F6F4F4F4F4F4F2F2D2D2D2D2D0D0D0D0AEAEBEBCBCA),
    .INIT_0D(256'h919191919191919191716F6F6F6F6F6F6F6F6F6F6F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_0E(256'h6C6C6C6C6C6C6C6C6C6C6C6C6C6E6E8E9090B391909090919191919191919191),
    .INIT_0F(256'hB3B3B3B2B2B0B0B090908E8E8E8E8E8E6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_10(256'h4A08E606082A2828082A4CB0B34A90824060626082B5D7D7D7D5D5D5D5D5B5B3),
    .INIT_11(256'hC4C4C4C4A4C4C6C42A6E2626E2C2C2C2A2A2C4A2C4C4C6C6C4A4E6C4C6080808),
    .INIT_12(256'h486A486A8A8AACB0D1D3D3D3D3B3B3D5D5D5D5D5D5D5D56F2C2AE6E82C088282),
    .INIT_13(256'h2A6C6C6CE6E4246668886848486A6A6A6C6C8E6C6C6C6E8E6C6E6E8E4A484848),
    .INIT_14(256'h2F3151310D0F0DEAEA0A2C2D4F2F2C0C0AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_15(256'hCBCACACAEBCACACAED53B975310FEAEAEAEA0D0D2F2F2F2F312F0F0F0F0F3151),
    .INIT_16(256'h4F4F4F4F4F4F4F4F4F4F6F6F6F6F4F4F4F4F2D2D2D2D2D0D0D0C0AEAEAEBEBCB),
    .INIT_17(256'h919191919191919191716F6F6F6F6F6F6F6F6F6F6F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_18(256'h6C6C6C6C6C6C6C6C6C6C6C6C6C6E6E6E8E909190909191919191919191919191),
    .INIT_19(256'hB3B3B3B3B2B0B0B090908E8E8E8E8E8E6E6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_1A(256'h4A08E6E60828080808284A8EB34A90A46062626282B5D7D7D7D5D5D5D5D5B5B5),
    .INIT_1B(256'hC4C4C4C4A2C4C4C46C08C4C2A2A2C4C2C2A2A2C4E6E6C6C6C4A4A2A4C4E80806),
    .INIT_1C(256'h486A486A6A6A8CAED1D3D3D3D3B3B5D5D5D5D7D7D7D7D7B34C2A08C4082CC682),
    .INIT_1D(256'h086C6C6CE6E4246668886848484A4A6A6A6C6C6C6C6C6C6C6C6C6C6C48484848),
    .INIT_1E(256'hB9D9D9D9FBFDFBB975312D2C4F4F2C2C0C0A0B0A0AEA0B0B0B0B0B0A0AEAEAEA),
    .INIT_1F(256'hEBEBCACBEDCBCACAC8CA0D97DBFBD90DEB0D0D2F5173B7D9D9DBDBDBDBDBDBB9),
    .INIT_20(256'h4F4F4F4F4F4F4F4F4F4F4F6F6F716F4F4F4F2F2D2D2D2D2D0D0C0C0AEAEBEBEB),
    .INIT_21(256'h91919191919191919171717171716F6F6F6F6F6F6F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_22(256'h6C6C6C6C6C6C6C6C6C6C6C6C6E6E6E6E6E8E9091919191919191919191919191),
    .INIT_23(256'hB5B3B3B3B2B0B0B0B090908E8E8E8E8E8E6E6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_24(256'h2A08E6E6E808080808284A6CB34C8E2C6262626282B5D7D7D7D7D590D5D5D5D5),
    .INIT_25(256'hC4C4C4A4A2C4C4E64AE4A2A282A2A2C4C2A2A2C4E4C4C4C4C4A4A4A4C4E6E6E6),
    .INIT_26(256'h486A486A6A6A8A8CB0B3D3D3D5D5D5D5D5D7D7F7F7F7F7D7932C2AC6C62C0AA4),
    .INIT_27(256'h082A6C4CC4E42466666848484A6A4A4A4A6A6C6C6C6C6C6C6C6C6C6C48484848),
    .INIT_28(256'h0D0CEAEA0C0F5175B7DBFBB7714F4D4C2C0C0B0A0A0B0B0B0A0A0A0D0D0C2D2F),
    .INIT_29(256'hEAEACACACACAEBCACACACACAEB0D510DEB0D2F2F51517373737373512F2F2F2D),
    .INIT_2A(256'h4F4F4F4F4F4F4F4F4F4F4F6F6F716F6F4F4F4F2D2D2D2D2D2D0D0C0A0AEBEBEB),
    .INIT_2B(256'h91919191919191919191919191917171716F6F6F6F6F6F6F6F6F6F6F6F4F4F4F),
    .INIT_2C(256'h6C6C6C6C6C6C6C6C6C6C6E6E6E6E6E6E8E909191919191919393939191919191),
    .INIT_2D(256'hD5B3B3B3B2B2B2B0B09090908E8E8E8E8E6E6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_2E(256'h082AE6E6E8E8E6E6E6082A4AB36E6E91C66062626293D7D7D7D7902CD5D5D5D5),
    .INIT_2F(256'hC4C4C4A4A2A4C40606C4A2828282A2A2C4C4A2C4C4C4C4C4A4A4C4C4C4E6E6E6),
    .INIT_30(256'h486A484A6A6A6A8CAEB0B1B1B1B3D5D7F7F7F7F7F9F9F9F9F7712A0AC4E84CE8),
    .INIT_31(256'hE8082A2AC4E42466686648484A6A6A6A4A6A6A4A4A4C6C6C6C6C6C6C48484848),
    .INIT_32(256'h4F2F2D0D0D0A0A0A0A2F51B7DBD9734E2C2C0D0A0A0B0B0D0C0C2D7173939393),
    .INIT_33(256'hEAEAEAEAEAEBEBEBCBCBEBEBEBEBEBEBEBEBEBEAEAC8CACAEAED0D0D2F2F2F51),
    .INIT_34(256'h4F4F4F4F4F4F4F4F4F4F4F4F6F6F6F6F4F4F4F4F4F2D2D2D2D2D0D0D0B0B0BEA),
    .INIT_35(256'h91919191919191919191919191919171717171716F6F6F6F6F6F7171716F4F4F),
    .INIT_36(256'h6C6C6C6C6C6C6E6E6E6E6E6E6E6E6E6E8E919191919191919393939191919191),
    .INIT_37(256'hD5D5B3B3B3B2B2B0B0B090908E8E8E8E8E8E6E6E6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_38(256'h080AC6E6E6E6E6E6E6082A28B36E4C916E8262626270D7D7D7B5E82CD5D5D5D5),
    .INIT_39(256'hE6C4A4A2A2A2C4E6C4A4A48462628282A2C4C4C4C4C4C4C4C4A4C6C6C4C6C6E6),
    .INIT_3A(256'h484A484A6A6A6A8AAEB0B1B1B3B3B3D5F7F7F9F9F9F9F9F9F9F74D0AE8C46F2A),
    .INIT_3B(256'hE80808E6C4044666684648486A6A6A6A4A4A6A4A4A4A6C6C6C6C6C6C48284848),
    .INIT_3C(256'h5171514F4F2F2D2C0C0C0C2F51B7FBB74F2C2D2C2C0D2D2C2C2D71B5B5B5B593),
    .INIT_3D(256'hEAEAEAEAEAEAEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEBEBEB0D0D2D4F51),
    .INIT_3E(256'h4F4F4F4F4F4F4F4F4F4F4F4F4F4F6F6F4F4F4F4F4F2F2D2D2D2D2D0D0D0D0B0A),
    .INIT_3F(256'h9191919191919191919191919191919171717171717171717171717171716F6F),
    .INIT_40(256'h6C6C6C6E6E6E6E6E6E6E6E8E6E6E6E90919191B1939191919393939191919191),
    .INIT_41(256'hD5D5B5B3B3B3B2B2B0B0B090908E8E8E8E8E6E6E6E6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_42(256'hE608E6E6C6C6C6E6E608080891902A9090086262622CD7D7B5088270D7D5D5D5),
    .INIT_43(256'h0AC4A4A282A2C4C6C4A284A48462628282A4A4A4A4A4A4A4A4A4C6C6C4C6C6C6),
    .INIT_44(256'h484A48486A6A6A6AAEB0B1B3B3B3B3D5D5D7F7F9FBFBF9F9F9F9D72C0AC6E871),
    .INIT_45(256'hE80808C4C40646686866484A6A6A6A6A4A6A6A4A4A4A4A4A4A4A4A4A28262848),
    .INIT_46(256'h4F71717151514F4F2F2D2D2F2F2C51B7DB732D2C2C2D4F4F4F71B5B5B5B5B593),
    .INIT_47(256'h0AEAEAEAEAEAEAEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEBEBEBEB0B0D2D4F),
    .INIT_48(256'h7171714F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2D2D2D2D2D2D0D0D0D0A),
    .INIT_49(256'h9191939393939393939393919191919191919191917171717171717171717171),
    .INIT_4A(256'h6C6C6C6E6E6E6E6E6E6E6E8E8E8E9091919191B3B3B391919393939191939391),
    .INIT_4B(256'hD5D5D5B3B3B3B2B2B0B0B09090908E8E8E8E8E6E6E6E6C6C6C6C6C6C6C6C6C6C),
    .INIT_4C(256'hE608E8C6C6C4C4C6E60808086E904A90904C826262C6702CC6A4A492D5B5D5D5),
    .INIT_4D(256'h2C08A4A282A2C4C4A4A4A4A48462628284A4A4A4A4A4A4A4A4A4E6C6C4C4C6C6),
    .INIT_4E(256'h484A48486A6A6A6AAEB0B1B3B3D3D3D5D5D5D7F9FBFBFBFBF9F9F9930A0AC608),
    .INIT_4F(256'hE80808C4E426668888686A6A6C6A6A6A4A4A4A4A4A4A4A4A4A4A4A4A26262828),
    .INIT_50(256'h2F4F717171717171514F4F4F4F2F2F2F95FBB74F4E4F939393B5B5B5B5B5B593),
    .INIT_51(256'h0A0C0AEAEA0A0B0B0B0B0B0B0B0BEBEBEBEBEBEBEBEBEBEBEBEBEB0B0D0D2D2F),
    .INIT_52(256'h717171716F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2F2D2D2D2D2D2D0C),
    .INIT_53(256'h9393939393939393939393939393939191919191919191717171717171717171),
    .INIT_54(256'h6E6E6E6E6E6E6E6E6E6E8E8E8E9091919191B3B3B3B3B3B3B3B3939393939393),
    .INIT_55(256'hB3D5D5B5B3B3B3B2B0B0B0B090908E8E8E8E8E8E8E8E6E6E6C6C6C6C6C6C6C6C),
    .INIT_56(256'hC408E8E6C6C4C4C4E80808E62A8E2A6E6E4C826262628282A4A4A493704C6E90),
    .INIT_57(256'h082AE68282A2C4A4A2A4A48482826282C6A4A4A4A4A4A4A4A4A2C6C6C4C4C4C4),
    .INIT_58(256'h484A48486A6A6A6A8EB0B1B1B3D3D3D5D5D5D7F7F9FDFDFBFBF9F9F9710A08C4),
    .INIT_59(256'hE80806C4044688AA88688C6C8C6C6C4A4A4A4A4A4A4A4A4A4A4A4A2A06282848),
    .INIT_5A(256'h2D4F4F4F71717171717171714F4F4F4F2F51D9D97393B5B5B5B5B5B5B5B5B593),
    .INIT_5B(256'h0D0D0C0C0D0B0B0B0B0D0D0D0D0D0D0D0BEBEBEBEBEBEBEBEBEB0D0D0D0D2D2D),
    .INIT_5C(256'h71717171716F6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2D2D2D2C2D),
    .INIT_5D(256'h939393B3B3B3B3B3B39393939393939393939391919191919191717171717171),
    .INIT_5E(256'h6E6E6E6E6E6E6E6E6E8E8E8E8E9091919193B3B3B3B3B3B3B3B3B39393939393),
    .INIT_5F(256'h4C70D5B5D5B3B3B2B2B0B0B09090908E8E8E8E8E8E8E8E8E6E6E6C6C6C6C6C6C),
    .INIT_60(256'hC408E8E8E6E6E6E60808E6E62A912A6C6E4C8262628284A4A4A408902C2C2C2C),
    .INIT_61(256'hC6080AA482A4A4828484848282828262A6A4A4A4A2A2A2A2A4A2C6C6C4C4A4A4),
    .INIT_62(256'h4A4A4A4A6A6C8C8EAEB0B1B1D3D3D3D5D5D5D7D7F9FBFDFDFBFBF9F7D74E0AE6),
    .INIT_63(256'hE808E4E426688AACAA8A8C8E8E8C6C6A4A4A4A4A2A2A4A4A4A4A4A280628484A),
    .INIT_64(256'h2F2F4F4F4F5171717173737171716F4F4F2F4FB7D7B5B5B5B5B5B3B3B3B5B593),
    .INIT_65(256'h2D2D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0B0BEDEDED0D0D0D0D0D2D2D2D2D),
    .INIT_66(256'h7171717171717171714F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2D2D2D2D),
    .INIT_67(256'hB3B3B3B3B3B3B3B3B3B3B3B3B3B3939393939393939393919193919171717171),
    .INIT_68(256'h6E6E6E8E8E8E8E8F8E8E90909091919191B3B3B3B3B3B3B3B3B3B3B3B393B3B3),
    .INIT_69(256'h2C4ED5D5D5B5B3B3B2B2B2B0B09090908E8E8E8E8E8E8E8E8E8E8E6E6E6E6E6E),
    .INIT_6A(256'hA4E8E8E6E8E8E8E6E8E6E6E608902A08E6C662626284A4A484E62A4E2C2C2C2A),
    .INIT_6B(256'hE6C60A08A2A48282848482828282826084A482A2A2A2A2A2A2A2C6C6C4A4A4A4),
    .INIT_6C(256'h4A4A4A4A4A6C6C8E8EB09091B3D3D3D5D5D5D5F7F9FBFFFFFDFBF9F9F7B52A0A),
    .INIT_6D(256'h0808E406488AACCCAAACAEB0AE8E8C6C4A4A4A4A28284A282A4A4A2806282848),
    .INIT_6E(256'h4F4F4F4F4F4F4F7171717393717171714F4F4F71B5B5B5B5B5B3B3B3B3B3B593),
    .INIT_6F(256'h2D2D0D0D0D0D0D0D0D2D2D2D2D2D2D0D0D0D0D0D0D0D0D0D0D0D2D2D2D2D4F4F),
    .INIT_70(256'h7171717171717171716F6F4F4F4F4F4F4F4F4F717171514F4F4F4F4F4F4F2D2D),
    .INIT_71(256'hB3B3B3B3B3B3B3B3B3B3B3B3B5B3B3B393939393939393939393919191919191),
    .INIT_72(256'h6E6E8E8E8E8F91919191919090919191B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_73(256'h2A4CD5D5D5D5B5B3B2B2B2B0B0B0B0B0908E8E909090908E8E8E8E8E8E6E6E6E),
    .INIT_74(256'hA4E6E6C6E8E6E8E6E6E6C6E6C6E6C6E6C6A26062828484A4E8082A4C2C2C2C2A),
    .INIT_75(256'h08C6E60AE68282828282828282828260628282A2828282A2A2A2C4C6C4A4A4A4),
    .INIT_76(256'h4A4A4A4A4A6C6C8E8E8E6EB1B3D3D3D3D5D5D5D7F9FBFFFFFDFBF9F9F7D7912A),
    .INIT_77(256'h08E604268AACCCCEACCEB0D0B0AE8E6C4A4A4A482828282828282A0606282828),
    .INIT_78(256'h4F4F4F4F4F4F4F6F717171719393939171717193B5B5B5B5B3B5B3B3B3B5B593),
    .INIT_79(256'h2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0D0D0D0D0D0D0D2D2D2F2F2F4F4F4F),
    .INIT_7A(256'h939391919171717171716F6F6F4F4F4F4F4F717171717171714F4F4F4F4F4F2D),
    .INIT_7B(256'hB3B3B3B3B3B3B3B3B3B3B3B3B5B3B3B3B3B39393939393939393939391919393),
    .INIT_7C(256'h8F8F8E8E8E9191919191919191919191B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_7D(256'hE66ED5D5D5D5D5D5D3B2B2B2B0B0B0B0B090B0B0B090909090908E8E8E8E8E8F),
    .INIT_7E(256'hA4C6E6C4E6E6E6C6C4A4C4C4C4C4A4C4C48260628282E80A2AE82A2C2C2C2C2C),
    .INIT_7F(256'h2A08C4080AA4828282828282828282606082828282828282A2A2C4C6C4A4A4A4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFC80000000000033F),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFE40000000000077E7FFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFC3FFFFFFFFF200000000000E7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hF900000000001CFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFC00000000001DF8),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFC000000000039F87FFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFF00FFFFFFFFFE000000000073F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFF0000000000F7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFF8000000000EFE0),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFC000000001CFC0FFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFF803FFFFFFFFFE000000003DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFF000000007BF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71FFFFFFF),
    .INIT_00(256'h4A4A4A4A4C6CB0B08E8E6CB1B3D3D3D3D5D5D5D5D7F9FDFFFFFDFBF9F7D5D54C),
    .INIT_01(256'h06042668ACCCEEEECED0D2D2D2B08E6C4A4A4A28282828282828280606082828),
    .INIT_02(256'h4F4F4F4F4F4F4F4F6F4F71717193939391719393B5B3B3B3B3B3B5B5B5B5B593),
    .INIT_03(256'h2F2D2D2D2D2D2D2D2D2F2F2F2F2F2D2D2D2D2D2D2D2D2D2D2F2F4F4F4F4F4F4F),
    .INIT_04(256'h93939393939391917171716F6F6F6F6F71717171717171717171716F6F4F4F4D),
    .INIT_05(256'hB3B3B3B3B3B3B3B5B5B5B5B5B5B3B3B3B3B393B3939393939393939393939393),
    .INIT_06(256'h91919191919191919191919191B1B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_07(256'hC691D7D5D5D5D5D5D3D3B2B2B2B0B0B0B0B0B0B0B09090919191919191919191),
    .INIT_08(256'hA4A4C6C4C4A4C4A4A4A4A4A4A4C4C4C4C482626282E82C2CE8E82C2C2C2A2A0A),
    .INIT_09(256'h4C0AE6C408E8848282828282828282826082828282828282A2A2A4C6C4A4A4A4),
    .INIT_0A(256'h2A4A4A4A4A8E8E8E8E8E6CB3B3B3D3B3D5D5D5D5D7F9F9FDFFFDFBF9F7D7B5B3),
    .INIT_0B(256'h48688AACEEEEF0F0F2F2F4F4D2B08E6C6A4A4A2828282828282808E6E6062828),
    .INIT_0C(256'h4F4F4F4F4F4F4F4F4F4F4F7171717191939193B3B5B3B3B3B3B5B5B3B5B5B593),
    .INIT_0D(256'h4F2F2D2D2F2F2F2F2F4F4F4F4F4F4F2D2D2D2D2D2D2D2D2F4F4F4F4F4F4F4F4F),
    .INIT_0E(256'h93939393939393919171717171716F6F717171717171717171717171716F4F4F),
    .INIT_0F(256'hB3B3B3B3B3B3B5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3B3B393939393939393),
    .INIT_10(256'h9191919191919191919191B1B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_11(256'hC693D7D5D5D5D5D5D5D3D3B3B3B2B2B2B0B0B0B1B191B1919191919191919191),
    .INIT_12(256'hA2A2A4C4A4A4A4A4A4A4A4A4A4A4A4A2A2826282C62C2C08E60A2C2C2A2A2AC6),
    .INIT_13(256'h912C0AE6C60AC682828282828282A2826062828282828282A2A2A2C6A4A4A4A4),
    .INIT_14(256'h2A4A4A4A4A6C6C6E8E6E6CB1B3B3B3B3D5D5D5D5D5D7F9FBFDFBFBF9F7D7D5B3),
    .INIT_15(256'hACACCCEEF0F0F2F2F4F4F6F4D4B2B08C6A4A4A2828282828282806E6E6E6282A),
    .INIT_16(256'h4F4F4F4F4F4F4F4F4F4F4F4F6F6F71717191B3B3B3B3B3B3B3B5B5B5B5B5B593),
    .INIT_17(256'h4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2F2F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_18(256'h9393939393939393939191717171717171717171717171717171717171716F4F),
    .INIT_19(256'hB3B3B3B3B3B3B5B5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3B3B3B39393939393),
    .INIT_1A(256'h9191919191919191919191B1B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_1B(256'hC693D7D7D5D5D5D5D5D3D3D3B3B3B3B3B3B3B3B3B3B1B1B19191919191919191),
    .INIT_1C(256'hA482A2A4A4A4A4A4A4A4A4A4A482A2A2828262A44C2C0AE8E82C2A2A2A2AE8C6),
    .INIT_1D(256'h91912A08C6C60AC6828282828282A28262608282828282A2A2A2A2C6A4A4A4A4),
    .INIT_1E(256'h2A4A4A4A4A4C6C6E6E6E6EB1B3B3B3B3B3B3D5B3B5D5D7D9FBFBF9F9F7D7D5B3),
    .INIT_1F(256'hCEEEF0F2F2F2F2F4F6F6F8F6F4D2B08E6C4A4A28282828280808E6E6E6E6082A),
    .INIT_20(256'h716F4F4F4F4F4F4F4F4F4F4F6F6F6F6F7191B3B5B5B3B3B5B5B5B5B5B5B5B593),
    .INIT_21(256'h6F7171714F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F6F6F6F7171717171),
    .INIT_22(256'hB393939393939393939391919171717171717171717171717171919171717171),
    .INIT_23(256'hB3B3B3B3B3B3B5B5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_24(256'h9191919191919191919191B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_25(256'hC6B5D7D7D7D5D5D5D5D5D3D3D3B3B3B3B3B3B3B3B3B3B3B391919191B1919191),
    .INIT_26(256'hA482A2A4A4A4A4A4A48282A2A2A282A28282824E2A2CE8C62A2C2A2A2A0AC6C4),
    .INIT_27(256'hB3916E2A08C6E608C6C6E6C6A4A2A28262626262828282A2A2A282C6A4A4A4A4),
    .INIT_28(256'h2A4A4A4A4A4C6C6C6C6E6E91B3B3B3B3B3B3B3B5B5B5D5D5D5D7D7F7F7D5D5B3),
    .INIT_29(256'hF0F2F2F4F4F4F4F6F8F8F8F6F6D2B08E6C4A4A28282828080808E6E6E6E6E62A),
    .INIT_2A(256'h71716F717171716F4F4F4F6F6F6F6F71719193B5B3B3B5B5B5B5B5B5B5B5B593),
    .INIT_2B(256'h71717171717151515151514F4F4F4F4F4F4F4F4F4F6F71717171717171717171),
    .INIT_2C(256'hB5B5B3B3B3B3B393939393939191919191919191919171717191919191919191),
    .INIT_2D(256'hB3B3B3B3B3B3B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B5B3B3B3B3B3B3B3B3B3B5),
    .INIT_2E(256'h91919191919191919191B1B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_2F(256'hC6B3D7D7D7D7D5D5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B39191919191919191),
    .INIT_30(256'h82828284A4A4A4A4A48282A2A4A282A28282E82C2C08C60A2C2C2A2A2AE8C4C4),
    .INIT_31(256'hB3918F6C0A08C4E8E8A4C6E6E8E8C4A48262628282828282A2A282C6A4A4A282),
    .INIT_32(256'h2A2A4A4A4A4A6C6C6C6C6C91B191B1B3B3B3B3B3B3B3B3B3B3B3B3B3B3D5D5B3),
    .INIT_33(256'hF2F4F6F6F4F4F6F8FBFBF9F8F6D4B08E6C4A4A28080828080808E6E6E6E6E42A),
    .INIT_34(256'h71717171716F716F4F7171716F6F7171719193B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_35(256'h9191917171717171717151514F4F4F4F4F4F6F71717171717171717171717171),
    .INIT_36(256'hB5B5B5B5B3B3B593939393939393939393939391919191919191919191939193),
    .INIT_37(256'hB3B3B3B3B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B5B5B3B5B5B5B5),
    .INIT_38(256'h919191919191919191B1B1B3B3B3B3B3B3B3B5B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_39(256'hE64C6ED7F7D7D7D5D5D5D5D5D5B5B3B3B3B3B3B3B3B3B3B39391B1B1B1919191),
    .INIT_3A(256'h8282828282A4A4A4A28282A2A4A282A2A4C66F2C2AE6E84C2C2C2A2A0AC4C4C4),
    .INIT_3B(256'hB391916F4C0AE8C4E8E8828282C6C6A48282828282828282A28282A4A4828282),
    .INIT_3C(256'h2A2A4A4A4A4A4C6C6C6C6C9091919191919191B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_3D(256'hD2F4F4F4F6F6F8FBFBFBFBF8F6F4D2B06C4A4A280808280806E6E6E6E6C6C608),
    .INIT_3E(256'h71717151716F6F6F5171716F6F6F71717193B5B5B5B5B5B5B5B5B5B5B5B5B595),
    .INIT_3F(256'h939391917171717171717171514F4F4F6F6F7171717171917171717171717171),
    .INIT_40(256'hB5B5B5B5B5B5B5B5B5B393939393939393939393939393939393939393939393),
    .INIT_41(256'hB3B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_42(256'hB1919191919191B1B3B3B3B3B3B3B3B3B3B5B5B5B5B3B3B5B5B5B3B3B3B3B3B3),
    .INIT_43(256'hE84C2A6CD5F7D7D7D5D5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B3B3B1B1919191),
    .INIT_44(256'h82828282828282A4A482A282A4A282A2A44E2C2CE8E64C4C2C2C2A2AC6A4A4C4),
    .INIT_45(256'hB3B1918F6E2C0AE8C4E8E882828282828282E8E8A4A4A2A2828282A4A4828282),
    .INIT_46(256'h4C2A2A4A4A4A4C4C6C4C6C6E6E6E8E8E8E9191919191B1B1B1B1B3B1919191B3),
    .INIT_47(256'hF6D4D4F6F8FAFBFDFDFDFBFBF8F4D2B08E6C4A2808080606E6E6E6C4C4C4C4C4),
    .INIT_48(256'h717171716F6F6F6F7171716F6F6F71717193B5D7B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_49(256'h939393919171717171717171714F6F6F71717171717191939191919191917171),
    .INIT_4A(256'hB5B5B5B5B5B5B5B5B5B5B5B5B3B3B3939393B393939393939393939393939393),
    .INIT_4B(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_4C(256'hB1919191919191B1B3B3B3B3B3B3B3B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B3),
    .INIT_4D(256'h0A4C2A2A4C90F7D7D7D5D5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B3B3B3B1B1B1),
    .INIT_4E(256'h8282828282828282A4A2A282A4A2A2A24C4E4C08C62C4E4C4C2C2C08A4A4A4C4),
    .INIT_4F(256'h9191918F6E4C2A0AE8C6E8C6826282828282A4A4A4A4A4A4A282828282828282),
    .INIT_50(256'h082A2A4A4A4A4C4C4C4C6C6C6E6C6E6E6E8E8E8E8E9191919191919191916E6E),
    .INIT_51(256'hF7FBFAFAFBFDFDFDFDFDFDFBF8F6F4D0AE8C6A2828080606E6E6E6E6C4C4C4C4),
    .INIT_52(256'h717171717171717171716F6F6F7171717193B5B5B5B5B5B5D7D7D7D7D7D5B5B5),
    .INIT_53(256'h9393939391919171717171717171717171717171719193939393939191919171),
    .INIT_54(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B3B393B3B39393B393939393),
    .INIT_55(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_56(256'hB191919191B1B3B1B3B3B3B3B3B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_57(256'h2C6F4C2A4A4AD5D7D7D5D5D5D5D5D5D5D5B3B3B3B3B3B3B3B390B3B3B3B3B3B3),
    .INIT_58(256'h8282808282828282A4A4A282A4A4A2E6714E2CE6086F6F4E4C2C2AC6A4A4A4A4),
    .INIT_59(256'h6C6E918F6E6E4C2A08E6C6E8A46262628282828282A2A2A28282828282828282),
    .INIT_5A(256'hC44C2A2A4A4A4A4A4A4C4C6C6C6C6C6C6C6E8E8E8E8E8E8E8E8E8E8E8E8E6E6E),
    .INIT_5B(256'hF7F9FBFBFDFDFFFFFFFDFDFBF8F6F4D2AE8C6A4848280606E6E6E6E6E6E6C4C4),
    .INIT_5C(256'h717171717171717171717171717171717193B5B5B5B5B5B5D7D7D7D7D7D7D7B5),
    .INIT_5D(256'h9393939393939391717171717171717171717191937393939393939391919171),
    .INIT_5E(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B5B5B5B3B3B3939393),
    .INIT_5F(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_60(256'hB3B3B3B3B3B3B3B3B3B3B3B3B5B5B5B5B5D5D5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_61(256'h7193716E4C2AB3D7D7D7D5D5D5D5D5D5D5B5B5B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_62(256'h82A2A28282828082A4A4A2A2A4A4A46F6F4EE6E6916F6F4E4E2CE6A4A4A4A4A6),
    .INIT_63(256'h6C4C6C6E6E6E6E4C2A08E6C6E8A4606262626282828282828282828282828282),
    .INIT_64(256'hC4E64E2A4A4A4A2A284A2A2A4A4A4A4C6C6C8E6E6E6E6E8E8E6E8E8E6E6E6E6C),
    .INIT_65(256'hF6F6F6F8F8FAFAFAFAFAFAFAFAF6F4F2D0AE8C6A48280606E6E6E6E6E6E6E6C4),
    .INIT_66(256'h717171717171717171717171717171717193B5B5B5B5B5D7D7D7D7D7D7D7D7B5),
    .INIT_67(256'h9393939393939393917171717171717171717191939191939391939391919191),
    .INIT_68(256'hB5B5B5B5B5B5B5B5B5B7B7B7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B39393),
    .INIT_69(256'hB5B5B5B5B5B5B5B5D5D5D5D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_6A(256'hB3B3B3B3B3B3B3B3B3B3B5B5B5D5D5D5D5D5D5D5D5D5B5B5D5D5D5D5B5D5B5D5),
    .INIT_6B(256'h93B5B5916E4C70D7D7D7D5D5D5D5D5D5D5D5D5D3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_6C(256'h82C2A2A2828282A4A4A4A2A2A4C42C719308C67191716F6F4E0AA4A4A4A4A4C6),
    .INIT_6D(256'h4C4C4A4C6C6E6E6E4C2A08E6C6E8826060626262828282826262628282828282),
    .INIT_6E(256'hC4A40A2C2A2A2A2A062A2A062828282A4A6C6C6C6C6C6C6E6E6C6E6E6C6C6C6C),
    .INIT_6F(256'hF6F6F8F8F8FAFAFCFCFAFAFAFAF8F6F2F0CEAC8A6848060606E6E6E6E6E6E6E6),
    .INIT_70(256'h91919191939393939393917171917171719393B5B5D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_71(256'hB3B3B5B593939393939391717171717171717191919191939191919391939391),
    .INIT_72(256'hB5B5B5B7B5B5B5B7B7B7D7D7B7B7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3),
    .INIT_73(256'hD5D5D7D5B5B5B5D5D5D7D7D7D7D7D7D7D5D5D5D5B5B7B5B5B5B5B5B5B5B5B5B5),
    .INIT_74(256'hB3B3B3B3B3B3B3B3B3B3D5D5D5D5D3D3D3D3D5D5D5D5B5B5B5B5B5B5D5D5D5D5),
    .INIT_75(256'hB5B5D7D5936E6ED5D7D7D5D5D5D5D5D5D5D5D5D3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_76(256'hA2C2A4A2A4A4C4A4A4A2A2A2A40A91B32CC64E9391716F6F2CC4A4A4A4A4C6E8),
    .INIT_77(256'h4C4C4A4A4A4A6C6C4C2A2A08E6C6E88260626262626262626262626282828282),
    .INIT_78(256'hE6C4A44C2A2A2A2A2A4A2808282828282A4A4A6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_79(256'hF6F8F8F8FAFAFCFEFCFCFCFCFCF8F6F2F2EECC8A6848280606060606E6060606),
    .INIT_7A(256'h91939393939393939393939393939393939393B5D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_7B(256'hB3B3B3B5B3B3B5B5939393917171717171719191919191917171919191939393),
    .INIT_7C(256'hB5B5B7B7B7B7B7D7D7D7D7D7D7D7B7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_7D(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B7B7B7B7B5B7D7D7D7D5),
    .INIT_7E(256'hB3B3B3B3B3B3B3B3D5D5B04A280604040404266AAED3D5D5D5B5B5B5D5D7D7D7),
    .INIT_7F(256'h9393B7D7B79371D5D7D7D7D7D7D5D5D5D5D5D5D5D5B3B3D3D3D3D3D3D3B3B3B3),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8FFFFFFFFFF8000000077F01),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFBFC7FFFFFFFFFC0000000EFF01FFFFFFFFFFC3FFFF),
    .INITP_02(256'hFFFFFFBF81FFFFFFFFFF0000001DFE01FFFFFFFFFF001FFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFF8000001DFC03FFFFFFFFFE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFC000003BF803),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFE0000077F007FFFFFFFFFC00007F),
    .INITP_07(256'hFFFFFFFE000FFFFFFFFFF80000EFE0067FFFFFFFF80001FFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFF0001DFC00E1FFFFFFFF00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'h1FFFFFFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFFFFC003BF800E),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFE8003FFFFFFFFFFFF077E000C1FFFFFFFE0003FFF),
    .INITP_0C(256'hFFFFFFFF8001FFFFFFFFFFFFFFFC001C1FFFFFFFE0003FFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFE0001C0FFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'h4FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFF),
    .INITP_0F(256'hFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFC00001E),
    .INIT_00(256'hA4A2A28282828282A4A4C4A4C691B36FC62CB39391716F71E6A4A4A4A4A4C62C),
    .INIT_01(256'h4C4A4A4A4A2A2A4C4C4C2A2A08E8C6E882626262626262626262626282828282),
    .INIT_02(256'h08E6C4C42A2C2A2A2A4C2A2828282828282A2A4A4A6C6C6C6C6C6C6C6C6C4C4C),
    .INIT_03(256'hF6F8F8FAFCFCFEFFFFFFFFFFFCFAF6F4F2F0AC888868480606E6060606060606),
    .INIT_04(256'h939393939393939393939393939393939393B5B5D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_05(256'hB5B5B5B5B5B5B5B5B39393939171717171719191919191919191919191939193),
    .INIT_06(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B7B5B5B5B5B5B5B5B5B5B5),
    .INIT_07(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_08(256'hB3B3B3B3D3D5B5D5B028E4E2E2E404040404040404468CD3D5D5B5D5D5D7D7D7),
    .INIT_09(256'h939395B5B7B593B3F7D7D7D7D7D5D5D5D5D5D5D5D5D5B3D3D3D3D3D3D3B3B3B3),
    .INIT_0A(256'hA2A4828282828282828282A46FB391E60AB5B5B39371932AA4A4A4A4A4C6E82C),
    .INIT_0B(256'h4A4A4A4A4A4A2A2A2A4A4A2A2A0AE8E6E8828262626262626262626282828282),
    .INIT_0C(256'h0808C4A4C40A2A2A2A4C2A2828282828282828282A4A4A6A6C6C6C6C6C4C4C4A),
    .INIT_0D(256'hF8F8FAFCFCFFFFFFFFFFFFFFFDFAF8F4F2F0CC8A8868480606E6060606060606),
    .INIT_0E(256'h939393939393939393939393939393B3B3B5B5B7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_0F(256'hB5B5B5B5B5B5B5B5B59393939391717171919191919191919191919191939393),
    .INIT_10(256'hD7D7D7D7D7D7D7D7D7D7D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5),
    .INIT_11(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_12(256'hB3B3B3B3B5D5D56CE4E2E2E2E2E2E2E2E2E2E20204042448B0D5D7D7D7D7D7D7),
    .INIT_13(256'h71719393B5B5B5B0F7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D3D3D3D3D3D3D5D5B3),
    .INIT_14(256'hA2A28282828282828282820A9393E808B5B5B5B593936FC4A4A4A4A4C6E6E84E),
    .INIT_15(256'h4A4A4A4A4A4A4A2A2A2A2A2A2A2A2A08E6E882626262626262626262828282A2),
    .INIT_16(256'h08E6C4C4A4A4E62A2A4C2A282828282828282828284A4A4A6A6C6C6C4A4A4A4A),
    .INIT_17(256'hF8FAFCFCFFFFFFFFFFFFFFFFFFFDFAF6F4F0CC8A8868484806E6060606060606),
    .INIT_18(256'h939393B3B3B5B5B5B39393939393B5B5B5B5B5D7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_19(256'hB5B5B5B5B5B5B5B5B5B593939393919191939393939391919191939393939393),
    .INIT_1A(256'hD7D7D7D7D7D7D7D7D9D9D9D9D9D9D7D7D9D9D7D7D7D7D7D7D7D7B7D5B5B5B5B5),
    .INIT_1B(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7B7B7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_1C(256'hD5B5B5B5D7F94CE4C2C2C2C2E2E2E4E4C4E4E4C2C2E40424266CD5D7D7D7D7D7),
    .INIT_1D(256'h4E7171939393958EF7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_1E(256'hA4828282828282828282E66E9108E8B5B5B5B5B5B593C6A4A4A4A4C6C6E8084E),
    .INIT_1F(256'h4A4A4A4A4A4A4A4A2A28282828282A2A2AE8E8828262626262626262628282A2),
    .INIT_20(256'h08C6C6C6C4A4A2E62A4C2A282828282828282828284A4A4A4A6C6A4A4A4A4A4A),
    .INIT_21(256'hFAFCFFFFFFFFFFFFFFFFFFFFFFFFFDF8F4F2CE8A886846480806060606060606),
    .INIT_22(256'h939393B3B5B5B5B5B5B393B5B5B5B5B5B5B5D5D7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_23(256'hB5B5B5B5B5B5B5B5B5B5B59393939393939393939393939393939393939393B3),
    .INIT_24(256'hD7D7D7D7D7D7D7D9D9D9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7B7B7B5),
    .INIT_25(256'hDBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFBDBD9D9D9D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_26(256'hD5B5D7FBFB90E4E2C2C2C2E2E4C2A282806060828282C4E406488CF5D7D7D9D9),
    .INIT_27(256'h0A2C4F717193936CD7F7F7F7D7D7F7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_28(256'hA28282828282828282C64E6E0AE893B5B5B5B5B593E6A4A4A4A4C4C6E6E8084E),
    .INIT_29(256'h4A4A4A4A4A4A4A4A2A2828282828082A2A2AE8E8A482828282626282628282A4),
    .INIT_2A(256'hE6E6C6C6C6A4A4A2C42A4E2A282828282828282828284A4A4A4A4A4A4A4A4A4A),
    .INIT_2B(256'hFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F2CEAA886846462806060606080608),
    .INIT_2C(256'hB5B3B3B3B5B5B5B5B5B3B5B5B5B5B5B5B5B5B5D7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_2D(256'hD7B5B5B5B5B5B5B5D7D7B5B39393939393939393939393939393939393B3B5B5),
    .INIT_2E(256'hD9D7D7D7D7D9D9D9D9D9D9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_2F(256'hFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBDBD9D7D7D7D9D9D9),
    .INIT_30(256'hD7FBFDFBD506E2C2C2C2C2C2826060404042626262848484C6288CB3F9FDFDFF),
    .INIT_31(256'h080A2C2C4F71716CD5F7F7F7F7D7F7F7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_32(256'hA282828282828282C42C4E0AE671B3B5B5B5B5B5E6C4A4A4A4A4C6E6E8082A0A),
    .INIT_33(256'h4A4A4A4A4A4A4A4A2A2A282828282828082A2AE8E8C6828282828282828282A4),
    .INIT_34(256'hE6E6C6C6C6A4A4A2A2A4E84E4C2828282828282828284A4A48484A4A4A4A4A4A),
    .INIT_35(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6F2CEAC8A6846462828060808080808),
    .INIT_36(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7D7D7D7D7D7D7D7D7B7),
    .INIT_37(256'hD7B7B7B7B7B5B5B5B5B5B5B5B3B3939393939393939393939393939393B3B5B5),
    .INIT_38(256'hD9D9D9D7D9D9D9D9D9D9D9D9D9F9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7),
    .INIT_39(256'hFFB9BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFDDBDBD9D9),
    .INIT_3A(256'hFDFDF7D228C2C2C2C2C2A260404042424262626484A6C80C73B7FBFDFFFFFFFF),
    .INIT_3B(256'hE80A0A0A2C2C4E4AD7F7F7F7F7D7F7F7F7F7F5D5D5D5D5D5D5D5D5D5D5D5D5D9),
    .INIT_3C(256'hA2828282828282C62C4E2AE64E919393939393C6A4A4A4A4A4C4C6E6E8084CE8),
    .INIT_3D(256'h4A4A4A4A4A4A4A4A2A2A2A2A2A2A2A2A08080A2A0AE8E8C6828282828282A2A4),
    .INIT_3E(256'hE6E6C6C6C6A4A4A4A28282A2084A4A4A2828282828284A4A4828284A4A4A4A4A),
    .INIT_3F(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8F4F0AC8A68464626282806080808E6),
    .INIT_40(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7D7D7D7D7D7D7D7B7),
    .INIT_41(256'hD7D7D7D7D7B5B5B5B5B5B5B5B5B5B3B39393939393B3B3939393939393B5B5B5),
    .INIT_42(256'hFBD9D9D9D9D9D9D9D9D9D9D9F9F9F9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7),
    .INIT_43(256'hB9B9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFDBD9DBFDFFFFFFFFFFFFFFFFFDFD),
    .INIT_44(256'hFBF5AE8CE4C2C2A2A2A2604040424242426284A6EC95DBFDFFFFFFFFFFFFFFFD),
    .INIT_45(256'hE8E8EA0A0A0C2C28F7F9F7F7F7F7F7F7F7F7F7D5D5D5D5D5D5D5F5D5D5D9FBFD),
    .INIT_46(256'hA28282828282E64C4C2AE62C6F719193934EC6A4A4A4A4A4A4C4C6E608084CE8),
    .INIT_47(256'h4A4A4A4A4A4A4A4A2A2A4A4A2A4A2A28280808082A2A0A08E8C6A4828282A4A4),
    .INIT_48(256'hE6E6C6C6C4A4A4A4A4828282A4284A4A4A28282828484A4848482828284A4A4A),
    .INIT_49(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8F4F0CE8A684846262628060608E6E6),
    .INIT_4A(256'hB5D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7D7D7D7D7D7B7),
    .INIT_4B(256'hD7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B5B3B3939393939393B5B5B5),
    .INIT_4C(256'hFFFDFDFBD9F9F9F9F9D9F9F9F9F9D9D9D9D9D9D9D9D9D9D9D7D9D9D7D7D7D7D7),
    .INIT_4D(256'hB7FDFFFDFDFDFDFBFDFDFDFDFFFFFFFFFDB793D7FDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hF5CEAC26C2A2C2A2A2604040424262626284A60CD9FDFFFFFFFFFFFFFFFFFDD9),
    .INIT_4F(256'hE8E8E80A0A0A2C28F7F9F9F7F7F7F7F7F7F7F7F7F5F5F5F5F7F7F5D7FBFDFBFB),
    .INIT_50(256'hA2A2A2A2A2C64C4C0AE62C4E4E6F71710AC6C6A4A4A4A4A4C4C6E6E8080A2AE8),
    .INIT_51(256'h4A4A4A4A4A4A4A2828282A2A4A4A4A2A28280808082A2C2A2A08E8E8E6C6C4A4),
    .INIT_52(256'hE6E6C6C6C4A4A4A4A4828282820828284A4A482828484848484828282828484A),
    .INIT_53(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F2CEAC8A6846262626280806E6E6),
    .INIT_54(256'hD5D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7D7D7D7D7D7B7),
    .INIT_55(256'hD7D7D7D7D7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B39393939393B5B5B5),
    .INIT_56(256'hFFFFFFFDFBFBFBFBF9F9FBFBFBF9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D7D7D7D7),
    .INIT_57(256'hD9FDFDFBFBFBFBFBFBFBFDFDFDFDFDFBB593B5FBFDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hCE8A68E2C2A2A2A2624042424262626484A62CFBFDFDFFFFFFFFFFFFFDB9B795),
    .INIT_59(256'hE8E8E80A0A0A2A48F9F9F9F9F9F7F7F7F7F7F7F7F7F7F5F5F7F7F9FDFFF9F7F3),
    .INIT_5A(256'hE6E6C6C6C6082A08E62A4C4C4C4E4CE8C6C6A4A4A4A4A4C4C6C6E6E8082AE8E8),
    .INIT_5B(256'h4A4848484A4A4A4A4A2A4A4A4A4A2A2A2A2808080808082A4C4C2A2A0A2A0808),
    .INIT_5C(256'h06E6C4C6C4A4A4A4A484828282C6282848484A4A4A484A484848282828282848),
    .INIT_5D(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F2F0AC8A684646262626060606E6),
    .INIT_5E(256'hD7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5D5D7D7D7D7D7D7D7D7D7B7),
    .INIT_5F(256'hD7D7D7D7D7D7D7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B3B393B3B5B5B5B5),
    .INIT_60(256'hFFFFB995D9FDFDFBFBFBFBFBFBF9D9D9F9D9D9D9D9D9D9D9D9D9D9D9D7D7D7D7),
    .INIT_61(256'hFBFBFBF9F9F9D9D9F9FBFBFDFDFDFBB77193D7FBFDFDFFFDFFFFFFFFFFFFFFFF),
    .INIT_62(256'h8A4828C2A2A2A2826040424262626484A6EAD7FBFDFDFDFDFFFDFDFDB79593B5),
    .INIT_63(256'hE8E8E80A0A0A2A4AF9F9F9F9F7F7F7F7F7F7F7F7F7F7F5F7D7FBFFFFFBD3F2CE),
    .INIT_64(256'h2A2A0A0808082A2A2C2C4C4C2C08C6C6C6C4A4A4A4A4C4C4C6E6E8080A2CE8E8),
    .INIT_65(256'h284848484848484A4A4A4A4A4A4A2A2A2A28282808080808082A4C4C4C4C2C2A),
    .INIT_66(256'h06E4A4A4A4A4A4A4A4A4828282A4E6062828484A4A4A4A484828282828282828),
    .INIT_67(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF8F4F0CEAA68484626262606060606),
    .INIT_68(256'hD7D7D7D7D7D7D7D7B5D5B5B5B5B5B5B5B5B5B5B5B5D5D7D7D7D7D7D7D7D7D7B5),
    .INIT_69(256'hD7D7D7D7D7D7D7D7D7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7),
    .INIT_6A(256'hFDB77171B7FDFDFDFDFBFBFBFBFBD9D9F9F9D9D9D9D9D9D9D9D9D9D9D9D7D7D7),
    .INIT_6B(256'hF9F9D9D9D7D7D7D7D7D9FBFBFBFBD7717193D7F9FBFBFBFBFBFDFDFDFDFDFDFD),
    .INIT_6C(256'h4828C4A2A2A2826262424262628484C6E851FBFBFDFDFDFDFDFDFBD9937171D7),
    .INIT_6D(256'hE8E8E8EA0A0A288EF9F9F9F9F7F7F7F7F7F7F7F7F7F7F7D7FDFFFDF9D3F0CEAC),
    .INIT_6E(256'h4C4C4C2A2A2A2A2C2A0A08E8E6E6C6C6C6A4A4A4A4A4C4C6C6E6E8080A2AE8E8),
    .INIT_6F(256'h284A484A484848484A4A4A4A4A4A2A2A2A2A2A2808080808080808282A4C4C4C),
    .INIT_70(256'h06E4A2A2A2A2A4A4A4A4828282A2A4080628484A4A6A4A4A4828282828282828),
    .INIT_71(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFAF6F2CEAC88484626060606060606),
    .INIT_72(256'hD7D7D7D7D7D7D7D7B5D5B5B5B59371B5B5B5B5B7D7D5D7D7D7D7D7D7D7D7D7B5),
    .INIT_73(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7D7),
    .INIT_74(256'h932C0A2C719595B7D9FBFBFBFBFBF9D9F9F9D9F9F9D9D9D9D9D9D9D9D9D7D7D7),
    .INIT_75(256'hD9D7D7D7D7D7D7B7B7D9F9F9F9D7734F4F73B5D7D7B7B7B7B7B7B7B7B7D7D9D9),
    .INIT_76(256'hE6E6C682A2A28262624262626484A6C80AD7FBFBFBFBFBFBFBFBF993714E71D7),
    .INIT_77(256'hE808EAEA0A0A28B2F9F9F9F9F9F9F9F9F7F7F7F7F7F7D9FDFFFDF9F5CECE8C4A),
    .INIT_78(256'h082808080808E8E6E6E6E6E6E6C6C6C6C6A6C6A4A4A4C6C6C6E8E8082A0A08E8),
    .INIT_79(256'h2828484A48484A4A4A4A4A4A4A2A2A2A2A2A4A2A282808282828282808080808),
    .INIT_7A(256'h06C4A2A2A2A2A4A4A4A4A482828282C4082828484A4A6A4A4A48282828282828),
    .INIT_7B(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFAFAF8F4F0CC8A684626260606060404),
    .INIT_7C(256'hD7D7D7D7D7D7D7D7B7D5B5B5B59371B5B5B5B5D5D5D5D7D7D7D7D7D7D7D7B7B5),
    .INIT_7D(256'hD9D9D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_7E(256'hEAC8C6C8E8E80A0A2CB5D7B5B5FBFBFBF9F9F9F9F9D9D9D9D9D9D9D9D9D9D9D9),
    .INIT_7F(256'hD7D7D7D7B5B5B5B5B5D7D7D7D7932E2C2E51737371717151515151717193934E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFF800003CFFFFFFFE0000FFFF),
    .INITP_01(256'hFFFFFFFC80007FFFFFFFFFFFF800003DFFFFFFFE0000FFFFFFFFFE1E004FFFFF),
    .INITP_02(256'hFFFFFFFFF800007FFFFFFFFE0000FFFFFFF80000001FFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFC0000FFFFFFF00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFF),
    .INITP_04(256'hFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFF800007F),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF80000FFFFFFFFFD8000FFFF),
    .INITP_06(256'hFFFFFFE0000007FFFFFFFFFFF80001FFFFFFFFFD0080FFEFFC000000003FFFFF),
    .INITP_07(256'hFFFFFFFFF80001FFFFFFFFFF0180FFFFF0000000003FFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFF0301FFFF80000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000003FF),
    .INITP_09(256'h00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000001FFFFFFFFFFF80003FF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFF80007FFFFFFFFFF0301FFF0),
    .INITP_0B(256'hFFFFFFE00400007FFFFFFFFFF00007FFFFFFFFFF0101FC400000000000FFFFFF),
    .INITP_0C(256'hFFFFFFFFF0000FFFFFFFFFFF0101F0000000000001FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFF0101C0000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFC01200003F),
    .INITP_0E(256'h0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFC01803001FFFFFFFFFF00001FF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFE018C3800FFFFFFFFFE000007FFFFFFFFF00000000),
    .INIT_00(256'hC6C8C6A482826262626262648484A6C82CD7F9F9F9F9F9F9F9D9B7714F2C93D7),
    .INIT_01(256'h080A0A0A0A0A48D5F9F9F9F9F9F9F9F9F9F9F7F7D7DBFFFFFBF7D3D0CE8C48E6),
    .INIT_02(256'h0808080808E6E6E6E6E6E6E6E6C6C6C6C6A6C4A4A4C6C6C6E8E8080A2C08E8E8),
    .INIT_03(256'h282828284848484A4A4A4A4A4A4A28282A4A4A4A282828282828282828080808),
    .INIT_04(256'h06C2A2A2A2A2A4A4A2A4C4A4A28282A208282828484A4A4A6A6A4A2828282828),
    .INIT_05(256'hFDFFFFFFFFFFFFFFFFFFFFFFFFFEFCFCFAF8F8F6F2CE8C684826262606060404),
    .INIT_06(256'hD7D7D7D7D7D7D7D7B7D5B5B5B5B5B5B5B5D5D7D7D7D7D7D5D7D7D7D7D7D7D7B5),
    .INIT_07(256'hD9D9D9D9D7D7D7D7D7D7D7D7D7B7B7D5D5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_08(256'hA684A4A6A6C6C6C6C60AE8EAB5FBFBFBF9F9F9F9F9F9D9F9F9D9D9D9D9D9D9D9),
    .INIT_09(256'hD7B7B7B5B5B5B5B5B5B7B5B5932E0A0A0A0C2C2C0C0A0AEAEAEAEA0C0C2C0CC6),
    .INIT_0A(256'hC6A6C6C6A4826262626264848484A6C62CD5D7D7D7D7D7D7D7D793512C4FB5D7),
    .INIT_0B(256'h0A0A0A0A0A284AF9F9F9F9F9F9F9F9F9F9F9F9D9FBFFFFFBF7D0EEAE8C4A08C6),
    .INIT_0C(256'h0808080808E6E6E6E6E6E6E6C6C6C6C6C6A4C4C4C6C6C6C6E8E80A0A0A08E80A),
    .INIT_0D(256'h282828282828284A4A4A4A4A4A4828284A4A4A4A4A2828282828282828080808),
    .INIT_0E(256'h06C2A2A2A2A2A4A4A2A4C4A4A48282A4C428284848284A4A4A6A6A4A28282828),
    .INIT_0F(256'hFCFDFDFFFFFFFFFFFFFFFEFEFEFCFCFAFAF8F8F6F4D0AC6A484826260606E4E4),
    .INIT_10(256'hD7D7D7D7D7D7D7D7D7D7D7D7D5B5B5D5D5D5D7D7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_11(256'hD9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_12(256'h848484A684A6A6A6A4A4C62CFBFBFBFBFBF9F9F9F9F9F9F9F9D9D9D9D9D9D9D9),
    .INIT_13(256'hD7B7B5B5B59595939373714F2CC8C6C8C8C8C8C8C8C6C8A6A6A6C6C6C8EAC8A4),
    .INIT_14(256'hE8C6A4C6C682626284848484848484A62CB3B5D5D5D5D5D7D7B5714F2C71B7D7),
    .INIT_15(256'h0A0A0A0A0A288EF9F9F9F9F9F9F9F9F9F9F9D9FBFFFDF9D3D0CEAE8C4A2A0AC6),
    .INIT_16(256'h0808080806E6E6E6E6E6E6E6C6C6C6C6C6C4C4C6C6C6C6E8E8080A2C0A0A0A0A),
    .INIT_17(256'h282828282828284A4A4A4A48484828484A4A4A4A4A2828282828282828080808),
    .INIT_18(256'hE6C2A2A2A2A2A4A4A2A2A4A2A2A4A4A4C4E6284A4A48284A4A4A4A6A6C4A2828),
    .INIT_19(256'hFAFCFCFCFCFFFFFFFEFCFCFCFCFAFAFAF8F8F8F6F6F4D2AE8C6A48280606E4E4),
    .INIT_1A(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D7D7D7D7D7D7D7D7D7D7D7D7D7B5),
    .INIT_1B(256'hD9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_1C(256'h626284A6848484848484C695FBFBFBFBFBFBF9F9F9F9F9F9F9D9D9D9D9D9D9D9),
    .INIT_1D(256'hD7B5B59373514F2E2E2E2E0CE8A6A6A6A6A6A6A6A6A68684848684A6C8EAC884),
    .INIT_1E(256'hEAC6A6A6A684848484848484648462A60A93B3B5B5B5B5D7D7B5712C0AB5D9D9),
    .INIT_1F(256'h0A0A0A0A0A48D5F9F9F9F9F9F9F9F9F9F9D9FBFFFDF9F3D0CEAE6C4C4C0AE8E8),
    .INIT_20(256'h0808080806E8E6E6E6E6E6C6C6C6C6C6C6C4C4C6C6C6E6E8E80A0A0A080A0A0A),
    .INIT_21(256'h484828282828484A4A4A48484848484A4A4A4A4A4A4A28282828282828282808),
    .INIT_22(256'hC4A4A2A2A2A4A4A4A2C4A2A4A282A4A4A4C4E4084A484828284A4A4A6C6C4A28),
    .INIT_23(256'hFBFAFAFAFAFCFAFCFCFCFCFDFCFCFDFDFDFDFBFAF8F6F4B08C4A280606E6E6C4),
    .INIT_24(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D7D7D7D7D7D5D5D5D5D5D5D5D7B5),
    .INIT_25(256'hD9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B7D7D7),
    .INIT_26(256'h626284848484848484A40AD9FBFBFBFBFBFBFBF9F9F9F9F9F9F9F9D9D9D9F9D9),
    .INIT_27(256'hB593714F2F2C2C0C0C0AEAC8A68484848484848484848484848486C8EACAA684),
    .INIT_28(256'h0AC6C6A6A48484A4C8848684846462842C9393B5B5B5B7D7D9B54F0A2CD7F9D7),
    .INIT_29(256'h0A0A0A0A2A6CF9F9F9F9F9F9F9F9F9F9D9FBFFFDF7D3D1CEAE6C6C4C2C0AE80A),
    .INIT_2A(256'h0808080808E8E6E6E6E6E6C6C6C6C6C6C6C6C6C6C6E6E8E8080A0A0A080A0A0A),
    .INIT_2B(256'h4848282828484A4A4A28282828284A4A4A4A4A4A6A4A4A282828282828282828),
    .INIT_2C(256'hC4C4A2A2A2A4A4A4C4A4A2A4A4A282A4A4C4C4C40628484828484A4A6A6A6C6A),
    .INIT_2D(256'hFBFBFAFAFAFAFAFAFAFCFDFFFFFFFFFFFDFDFBF8F6F4D28E6A482806E6C6C6C4),
    .INIT_2E(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D7D7D5D5D5D5B5B5D5D5B5),
    .INIT_2F(256'hD9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_30(256'h626284848484848484C673FBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9),
    .INIT_31(256'h7371514F2C0CEAE8C8C6A6A6848484848484646464646484A6A6A6A684846262),
    .INIT_32(256'hEAC6C6C6A4A4A6E82C84A684846262A64F9395B5B7D7D9FBFBB74FEA71B7B593),
    .INIT_33(256'h0A0A0A0A2AD2FBF9F9F9F9F9F9F9F9D9FBFFFBF7D1D1AFAE6C6E6F2C0A0AE80A),
    .INIT_34(256'h0808080808E8E6E6E6E6E6C6C6C6C6C6C6C6C6C6C6E8E808080A0A0A0A0A0A0A),
    .INIT_35(256'h6C4848484A4A4A4A4A28282828484A4A4A4A4A4A6A6C4A282828282828282828),
    .INIT_36(256'hC4C4A2A2A4A4A4C4C6A2A2A4A4A4A4A4A4C4C4C4C40828484A48284A6A6A6A6C),
    .INIT_37(256'hF9FBFBFAFAFAF8F8FAFDFDFDFFFDFBFBFBFBF9F6F4D2B06C4A2806E6C4C4C4C4),
    .INIT_38(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D7D5D5D5D5D5B5B5D5D5B5),
    .INIT_39(256'hD9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_3A(256'h6282848484848484A4EAD9FDFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9),
    .INIT_3B(256'h4F2F0C0AE8C8C6A6A6A6A6846464646464626262848486A68484646262626262),
    .INIT_3C(256'hE8C6C6C6A4A6C82E2C848484846262EA71B5B5D9D9D9DBDBD9B7512E93959371),
    .INIT_3D(256'h0A0A0A2A6CF9FBF9F9F9F9F9F9F9F9FBFFFBF7D3D1AFAF8E8F6F4C2A2A2A0A2C),
    .INIT_3E(256'h0808080808E8E6E6E6E6E6C6C6C6C6C6C6C6C6C6E6E8E8080A0A0A0A0A0A0A0A),
    .INIT_3F(256'h6C6C4A484A4A4A4A28482848484A4A4A4A4A4A4A6C6C4A282828282828282808),
    .INIT_40(256'hC4C6A4A2A4C4C4C6A4A2A4C4A4A4A4C4C4C4C4C4C4C40828484A4A284A6A6A6A),
    .INIT_41(256'hFBFBFBFAF8F8F8F8FAFDFAFAFBFDFBD9F8F8F6F4D2D08E6C4A2806E6C4C4C4C4),
    .INIT_42(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5B5B5D5D5B5),
    .INIT_43(256'hD9D9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5B5B5D7D7D7),
    .INIT_44(256'h6284848484848284C670FBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9),
    .INIT_45(256'h0AEAC8C8A6A6A684848484646262626262646484868464626262626262626242),
    .INIT_46(256'hC8C6C6C6A4C60A51C88484848462620C95B7D7D9D9DBDBDBD9954F2E712E0C0C),
    .INIT_47(256'h0A0A0A2AB5F9F9F9F9F9D9F9F9F9FDFFFDF7D3D1B18F8F916F4C2C2C2C2C2C4F),
    .INIT_48(256'h0808080808E8E6E6E6E6C6C6C6C6C6C6C6C6C6C6E8E8080A2A2A0A0A0A0A0A0A),
    .INIT_49(256'h6C6C8C4A4A4A4A4A4848484A4A4A4A4A4A4A4A6A6C6C4A2A2A2A2A2A28282828),
    .INIT_4A(256'hC6C4C4A4C4C4C4C6A2A4C6C4C4C4C4C4C4C6C4C4C4C4C4082A4A4A4A4A4A6A6A),
    .INIT_4B(256'hF7F9F6F6F6F6D4F6F8D8FAF8F6F9FBD9F6F6F4D2B2B08E6C4A2806E6C4C4C6C4),
    .INIT_4C(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7F9D7D7D5D5D5B5D5D5D7B5),
    .INIT_4D(256'hF9D9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5D7D7D7D7D7),
    .INIT_4E(256'h64848484848484A4E8D9FDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9),
    .INIT_4F(256'hC6A6A6A684848484848464626262626484848484626262626262626262626262),
    .INIT_50(256'hC8C6C6A6A6C60A51C6C884868462642FB7B9B9D9D9B9977373712C0CEAEAE8C8),
    .INIT_51(256'h2C2C70B5F9F9F9F9F9F9D9D9F9FBFFFDF5D3D1B18F8F91714F4C4C4C4E2C4F71),
    .INIT_52(256'h0808080808E8E6E6E6C6C6C6C6C6C6C6C6C6C6C6E8080A2A2A2A2A2A2A0A0A2A),
    .INIT_53(256'h6C6C8C8E6C4A4A4A4A4A4A4A4A4A4A4A4A4A6A6C6C6C6C4A4A2A2A2A28282828),
    .INIT_54(256'hC6C6C4C4C4C4E6A4A2A4E6C4C4C4C4C6C6C6C6C4C4C4C4E6084A4A4A4A4A4A6A),
    .INIT_55(256'hB0D2D2D0B0B08EF4F8B4F8F8F4F4F6F9D4D4D2D2B08E6C6A4A2806E6C6C6C6C6),
    .INIT_56(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7FBF9D7D5D5B5B5D5D5D7B5),
    .INIT_57(256'hD9D9F9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5D7D7D7B5B5),
    .INIT_58(256'h84A4A484848484C650FBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9D9),
    .INIT_59(256'hA6A6868484846464646462626262648484646262626262626262626262626262),
    .INIT_5A(256'hC6C6C6A6A6C6EA51A6A6648664628451B7B9B9B7730CEAC8EA0AEAC8C8C8A6A6),
    .INIT_5B(256'h2C2CD7F9F9F9F9F9D9F9F9F9DBFFFDF7F3D1B18F9191714F4C4C4C4E6F4E7151),
    .INIT_5C(256'h08080808E8E6E6E6E6E6C6C6C6C6C6C6C6C6C6E6E8082A2C2A2A2A2A2A2C2C2C),
    .INIT_5D(256'h6C6C8C8E8E4A484A4A4A4A4A4A4A4A4A4A6A6C6C6C8E8C4A4A4A2A2A28282828),
    .INIT_5E(256'hE6E6E6E6E606E6A2A2C4C6C4C4C4C6E6E6C6C6C4C4C4C4C4E6284A4A4A6A4A4A),
    .INIT_5F(256'h8C8C8C6C6A6C6CF4F6F4F4F6F4D0D0F6D4D2B2B0908E6C4A280806E6C6C6C6C6),
    .INIT_60(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D9F9D5B5B5B5B5D5D5D7B5),
    .INIT_61(256'hD9D9F9F9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D5B5B5B5B5B5B5D5D7D7D7B5B5D7),
    .INIT_62(256'h84A6A6848484A60AD9FDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9D9),
    .INIT_63(256'h8484848484646464646262626264646462626262626262626262626262626284),
    .INIT_64(256'hC6C6C6A6A6C6EA2EA68664866462A673B795732CEAC8C8C8C8A6A6A6A6A68686),
    .INIT_65(256'h2C93FBF9F9F9F9F9D9F9F9FBFDFDF7D3D1B18F9193714F4E4C4E6F719171954E),
    .INIT_66(256'h08080808E8E6E6E6E6C6C6C6C6C6C6C6C6C6C6E80A2C2A2C2C2C4A2C2C2C2C4C),
    .INIT_67(256'h6C8C8E8E8E8E4A4A4A4A4A4A4A4A4A4A6A6C6C6C6C8E8E4A4A2A2A2828282808),
    .INIT_68(256'hE6E6E608E6E606C6A2E6C4C4C4C6E6E6E6E6C4C4C4C4C4C4C4E4284A4A6A6A6A),
    .INIT_69(256'h6A6A6A4A4A4A6CF4F4B0AED0F4D0AEB0D2B0B0908E6C6C6E2808E6E6C6C6E6E6),
    .INIT_6A(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5D5D5D7B5),
    .INIT_6B(256'hFBF9F9F9D9D9D9D9F9D9D9D9D7D7D7D7D7D7B5B5B5B5B5B5D5D7D7D7D7D7D7D7),
    .INIT_6C(256'hA6A6A4848484E893FDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_6D(256'h8484848464626264626262626262626262626262626262646262626462626284),
    .INIT_6E(256'hC6C6C8A6A6C8C80CA48484A66462A6514F0CEAC8C8C8C8A8A68684A6A6A68484),
    .INIT_6F(256'h70F9FBF9F9F9F9D9D9F9D9FDFDF7F5D1B18FB3B3716F6F4E4F717193B573B72E),
    .INIT_70(256'h08080808E8E6E6E6E6C6C6C6C6C6C6C6C6C6C6A4A4C6E82A2C4C4C4C4C4C4C4C),
    .INIT_71(256'h6C8C8E8C8C8C8E4A4A4A4A4A4A4A4A6A6C6A6A6C6CB0AE4A4A2A2A2828282808),
    .INIT_72(256'hE6E6E60808C4C4E6E6E6E6C4C4E60808E6E6E6E6C6C6C6C6C6C6E4284A4A6A6C),
    .INIT_73(256'h4A4A6A6A48488EF4D248488ACEF0AC8C8E908E6E6E6C6E6C0808E6E6C6E6E6E6),
    .INIT_74(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5D5D5D7D5B5),
    .INIT_75(256'hFBFBF9F9D9D9D9F9D9D9D9D9D7D7D7D7D7D7B5B5B5B5B5D5D7D7D7D7D7D7D7D7),
    .INIT_76(256'hA6A6A48484C62AF9FDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_77(256'h64646464626264646262626262626262626262626464646464646464626262A4),
    .INIT_78(256'hC8C8C8A6C6C6C8EA868484A66462A6EAC8C8C8C8C6A6A6A6A684848686868484),
    .INIT_79(256'hF9FBFBFBF9F9D9D9D9D9FDFDF7F5D3B191B391714F4E4F6F717193B5B593B70C),
    .INIT_7A(256'h080808E8E6E6E6E6E6E6C6C6C6C6C6C6C6A68282828484A4E84A9092704E4E92),
    .INIT_7B(256'h6C6C8E8E8C8C8E8E4A4A4A4A4A4A6A6C6C6C6A6C6CB08E4A4A2A2A2A2A280808),
    .INIT_7C(256'hE6E6E80808C4C4C40808E6C6C6E6080806E6E6E6E6C6C6C6C6C6E6E6284C6C6C),
    .INIT_7D(256'h4A4A6C6A484AB0D24A2628488AACAA8A6C6E6E6E6C4C4A2A080806E6E6E6E6E6),
    .INIT_7E(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D7D7D5D5B5B5B5B5D5D5D5D5B5),
    .INIT_7F(256'hFBFBFBFBFBFBF9F9D9D9D9D9D9D9D7D7D7D7B5B5B5B5B5D7D7D7D7D7D7D7D7D7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFE018038007FFFFFFFFE000007FFFFFFFFF000000000000000003FFFFFF),
    .INITP_01(256'hFFFFFFFFC00400FFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFF00000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807B003),
    .INITP_03(256'h000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07B003FFFFFFFFC00C00FF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFC1FB4077FFFFFFF801C01FFFFFFFFFF00000000),
    .INITP_05(256'hFFFFFFFFFD7F7F1F3FFFFFFF003C01FFFFFFFFFF00000000000000001FFFFFFF),
    .INITP_06(256'h1FFFFFFF007C03FFFFFFFFFF00000000000000003FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFF00000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFE00FC03FF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FC03FFFFFFFFFF00000000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFF801F807FFFFFFFFFF0000000000000000FFFFFFFF),
    .INITP_0B(256'hFFFFFFE0027807FFFFFFFFFF0000000000000001FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFF0000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'h00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0043807FF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000180FFFFFFFFFFF00000000),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFF82C000100FFFFFFFFFFF0000000000000013FFFFFFFF),
    .INIT_00(256'hA6A68484A6E891FBFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_01(256'h64646464626264646262626262626264646464648484848484848484626284A6),
    .INIT_02(256'hC8C8C8A6C6C6C8C8868484A6646286A6A6A6A6A6A6A6A6A68684848686846464),
    .INIT_03(256'hFBFBFBFBF9D9F9F9D9DBFFFBD5D3B1B1B39371714E4E6F719393B5B7D793F90C),
    .INIT_04(256'h080808E8E6E6C6C6C6C6C6C6C6C6E8C684848284848484A4E64AD5F9F9F9D7F9),
    .INIT_05(256'h6C8C6C8E8E8C8C8E8E4A4A4A6A6C6C6C6C6C6C6C6CD26C4A4A2A2A2A2A280808),
    .INIT_06(256'hE6E8E80808E6C4C6E6E6E4E6E6E6082806E6E6E6E6E6C6E6E6E6E6E6E6086C6C),
    .INIT_07(256'h4A6A8C6A6A4AD2B08E280626488A8A6A4A4A8E6E4C4C2A2A280808E6E6E8E8E6),
    .INIT_08(256'hD7D7D7D7D7D7D7D7D7D7D7D5D7D7D5D5D5D5D5D7D7D5D5D7D5D5D5D5D5D5D5B5),
    .INIT_09(256'hFBFBFBFBFBFBFBF9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_0A(256'hC6A684A4E62CD9FDFBFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_0B(256'h64646464626262646262626262646484848484848484848484848484646284A6),
    .INIT_0C(256'hC8C8C8A6A6A6A6C886848486646284848686A6A6A6A6A6A68684848686846464),
    .INIT_0D(256'hFBFBFBFBFBF9F9F9FBFFFBF7D3B191B3937171712C4E7193B5B5B7D9D995FB0C),
    .INIT_0E(256'h0808E8E8E6E6E6C6C6C6C6C6C608E6A4848484848484A4C62A8EF9FBFBFBFBFB),
    .INIT_0F(256'h8E6C8C6C8E8E8E8E8E8E4A6A6C6C6C6C6C6C6C6C8EB04C4A4A2A2A2A2A080808),
    .INIT_10(256'h0808080808E8C4E6E6E6E6E6E606282806E60808E6E6E6E6E6E6E6E6E6E6066C),
    .INIT_11(256'h4A6CAEB06C6CD2B08E8C06062668886848286E6E6E4C4C4A2A2A2A0808080808),
    .INIT_12(256'hD7D7D7D5D5D5D5B7D7D5B5B5D5B5B5B5D5D5D5D7D7D7D7D7D7D5D5D5D7D7D5B5),
    .INIT_13(256'hFBFBFBFBFBFBFBF9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_14(256'hA6A484C60A93FBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9FBFBFBFBFB),
    .INIT_15(256'h646464646262626462626262626484848484848484848484848484848484A4C6),
    .INIT_16(256'hC8C8C8A6A6A6A6A68484848662626484868686A6A6A6A6A68484848484846464),
    .INIT_17(256'hFBFBFBFBFBF9F9DBFDFDF7D3B1B3B391716F71712C7193B5D7D9D9FBD995F90A),
    .INIT_18(256'h0808E8E6E6E6E6C6C6C6C6E62A08C6A4848484848484A6E86CD5FBFBFBFBFBFB),
    .INIT_19(256'h6C8E6E8E6C8E8E8E8E8E8E6C6C6C6C6C6C6C6C6C8E6E4A4A2A2A2A2A2A080808),
    .INIT_1A(256'h2A2A0A080808C6E6E6E6E6E6E6062A2806E62A0AE6E6E6E6E6E6E6E6E6E60828),
    .INIT_1B(256'h4A6C8EB06C8ED2AE8E8C4A060648686848286E7091916E6E4C4C4C2A2A2A2A2A),
    .INIT_1C(256'hD7D7D7D7D5D5B5B5B5B5B5B5B5B5B5B5D5D5D7D7D7D7D5D7D7D7D7D7D7D7D5B5),
    .INIT_1D(256'hFBFBFBFBFBFBFBF9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_1E(256'hA6A4A6E84EF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9D9D9FBFBFBFB),
    .INIT_1F(256'h848484848484848484626262628484848484848484848484848484848484A6C6),
    .INIT_20(256'hC8C8C8A6A6A6A6A684848486644264868686A6A6A6A6A6868484848484846464),
    .INIT_21(256'hFBFBFBFBFBF9FBFDFDF7D3B3B3B3914E4E4E71932C93B7F9F9FBF9F9D793F90A),
    .INIT_22(256'h08E8E8E6E6E6C6C6C6C6E66C4828E6A48484848484A6C62A6EF7FBFBFBFBFBFB),
    .INIT_23(256'hE62A8E6E8E6C8E8E8E8EB08C6C6C6C6C6C6C6C6C6E4C4A4A2A2A2A2A08080808),
    .INIT_24(256'h2A2A2A2A0808E6E8E6E6E60608082A2806E62A2AE808E6E6E6E6E6E6E8080808),
    .INIT_25(256'h4A6A6C6A4A8ED2B08E8C6C060626686846284CB3B3B3B391916F6E4C4C4C4C4C),
    .INIT_26(256'hD7D7D7D7D5D5B5B5B5B5B5B5B5B5B5B5B5D5D7D7D7D7D5D7D7D7D7D7D7D7D7B5),
    .INIT_27(256'hFBFBFBFBFBFBFBF9F9F9F9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_28(256'hA6A6E82AB5FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9B7B7D9F9FBFBFB),
    .INIT_29(256'h848484848484848484646262648484848484848484848484848484848484A6C6),
    .INIT_2A(256'hC8C8C8A6A6A6A6A684848486646264868686A6A6A6A6A6868484848484848484),
    .INIT_2B(256'hFBFBFBF9FBF9FBFFF9D3B3B3B371712C4C4E93B52CB7F9F9F9F9F9D7B593D70A),
    .INIT_2C(256'hE8E8E6E6E6C6C6C6C6E66C6A4826E6A48484848484A6E86CB0F9FBFBFBFBFBFB),
    .INIT_2D(256'hE6E6088E8E8E6C8E8EAEB0B06C6C6C6C6C6C6C6C6C4A4A2A2A2A2A0A08080808),
    .INIT_2E(256'h2A2A2A2A0808E808E606060808082A08E6082A2A08080808E6E6E608082A2A08),
    .INIT_2F(256'h4A4A4A4A488EB2B08E8C8C280828466648282AB5B5D7D7D5B5B3716E6E4E4C4C),
    .INIT_30(256'hD7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5D5D7D7D7D7D5D5D7D7D7D7D7D7D5B5),
    .INIT_31(256'hFBFBFBFBFBFBF9F9F9F9F9F9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_32(256'hA6C60A6EF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9B7B7D7D9FBFBFB),
    .INIT_33(256'h848484848484848484846262848484848484848484848484848484A6A6A6A6C6),
    .INIT_34(256'hC8C8C8A6A6A6A6A68484848664626486868686A6868686868484848484848484),
    .INIT_35(256'hFBFBF9F9F9FBFDFBD5B3B39371514E2C4E71B5B52CB7D9F9D9D7D7B59371B50C),
    .INIT_36(256'hE8E8E6E6E6C6C6C6C66E6C8A6828C6A4A4A48484A6C60A8ED5FBFBFBFBFBFBFB),
    .INIT_37(256'hE6E6E6086CB08E8CAEAEB0B08E6C6C6C6C6C6C8C6C4A4A2A2A2A2A0A08080808),
    .INIT_38(256'h2A2A2A2A080808080808082828082A0806082A2808080808080606082AB24C08),
    .INIT_39(256'h4A4A4848288EB0B08E8C8C4A0828466668282AD5D7F7F9F7D7D5B3916E6E4C4C),
    .INIT_3A(256'hD7D7D7D7D7D5D5D5D5D5B5B5B5B5B5B5B5D5D5D5D5D5D5D5D5D7D7D7D7D5D5B5),
    .INIT_3B(256'hFBFBFBFBFBFBFBF9F9F9F9F9D9D9D7D7D7D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_3C(256'hC6084CD7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9B7B7D9D9FBFBFB),
    .INIT_3D(256'h8484848484848484848464648484848484848484848484848484A4A6A6A6A6C6),
    .INIT_3E(256'hC8C8C8A6A6A6A6A6848484A6646264868686A6868686868484848484A4A48484),
    .INIT_3F(256'hFBFBF9F9F9FBFDD7B3B393714E4E2E2C4E73B5B52CB5D7D7B5B5B5B59371930C),
    .INIT_40(256'hE8E6E6E6E6E6C6C66ED28A8A6808C6A4A4A4A4A4A6C84C90F9FBFBFBFBFBFBFB),
    .INIT_41(256'h06E6E8E6084A8E8E8EB0B0B0B06C6C6C6C6C8C6C6C4A4A2A2A2A2A0A080808E8),
    .INIT_42(256'h2A2A2A2A28282A08080828282A082A0808082A08082A08080808082A4CB22A08),
    .INIT_43(256'h4A4A4828288EB0B04A6C8C8C6E2A2646684828B5D9F9F9FBF9F9D7B5916E4C2A),
    .INIT_44(256'hD7D7D7D5D5D5D5D5D5B5B5B5D5B5B5B5B5B5D5D5D5D5D5D5D5D7D7D7D5D5D5B5),
    .INIT_45(256'hFBFBFBFBFBFBFBF9F9F9F9D9D9D9D7D7D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_46(256'h082A92FBFBFBFBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9D7D7D9F9FBFBFB),
    .INIT_47(256'hA4A4848484848484848484848484848484848484848484848484A6C6A6A6C6C6),
    .INIT_48(256'hC8C8C8A6A6A6A6A684848486646264868686A6A6A6868684848484A4A4A4A4A4),
    .INIT_49(256'hFBFBFBFBFBFBD7B3B393714C4E4E4E2C4E73B5930C95B5B5B3939393934E932C),
    .INIT_4A(256'hE6E6E6E6C6C6E62CF78E8AAC6806C4A4A4A4A4A4A6E86EB2F9FBFBFBFBFBFBFB),
    .INIT_4B(256'h080808080808286C8EB090B0B0B06C6C6C6C6C4C4A4A2A2A2A2A2A080808E8E6),
    .INIT_4C(256'h2A2A2A2A282A2A08282A2A2A28282A0808282A080808080828282A2A2A2A0A08),
    .INIT_4D(256'h4A4A4848288CB04A064A8C8C4A4A28468A482A73FDFBFBFBFBFBF9D7D5936E4C),
    .INIT_4E(256'hD7D7D7D5D5D5D5D5D5B5B5D5D5D7D5D5B5D5D5D5D5D5D5D5D5D7D7D5D5D5D5B5),
    .INIT_4F(256'hFBFBFBFBFBF9F9F9F9F9F9F9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_50(256'h2A6ED7FBFBFBDBDBDBFBDBDBFBFBFBFBFBFBFBFBFBFBFBD9D9D9D9D9F9FBFBFB),
    .INIT_51(256'hA4A4A4A48484A4A484848484848484848484848484848484A4A4A6C6C6A6C6E8),
    .INIT_52(256'hC8C8C8A6A6A6868686848486644264868686A6A6A6A6A4A484A4A4A4C4A4A4A4),
    .INIT_53(256'hFBFBFBFBFBD7B3B39170712C2C714E2C4E7395932C93939393939393934E710C),
    .INIT_54(256'hE6E6E6E6C6C6E80A706A8A8A48E6C484A4A6A6A4C60A90D5FBFBFBFBFBFBFBFB),
    .INIT_55(256'h08080808080828282A4A2A4A6EB06C6C6C6C4C4A4A2A2A2A2A0A080808E8E6E6),
    .INIT_56(256'h4A2A2A2A2A4A4A082A4A4A2A282A280808282A082A2A2A0808282A2A2A080808),
    .INIT_57(256'h4A4A4848286CB04A26068C8C4C6E4A468A68484EFBFBFBFBF9D9D7B5B5936E4C),
    .INIT_58(256'hD7D7D7D7D5D5D5D5D5D7D7D7D7F7F7D5D5D5D7D5D5D5D5D5D5D7D7D5D5D5D5D5),
    .INIT_59(256'hFBFBFBFBFBFBF9F9F9F9F9F9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_5A(256'h6EB5FBDBDBFBDBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9D9D9D9F9FBFBFB),
    .INIT_5B(256'hA4A4A4A4A4A4A4A484848484848484848484848484848484A6A6C6C8C6C6E60A),
    .INIT_5C(256'hC8C8C8A6A6A68686868484868464648686A6A6A6C6C6C6C6A4A4C6C6C6C4A4A4),
    .INIT_5D(256'hFBFBFBFBF9B3B3714E4E702C4E714E2C4E7173712C71939393939391714E710C),
    .INIT_5E(256'hE6E6E6E6E6E80AC6E6086A8A28E6A484A4A6A6A6C64CB0F9FBFBFBFBFBFBFBFB),
    .INIT_5F(256'h080808082828282828282808084A6E4C4A4A4A2A2A2A2A2A080808E8E8E8E6E6),
    .INIT_60(256'h4C4C2A2A2A4C4A282A4A4A2A28282828082828282A2A2A2A2A4A2A2A28080808),
    .INIT_61(256'h6A4A4A48286CAE2828066A8C6C4C4A468A8A282AD9D9B7B7B7B5B59391716E4E),
    .INIT_62(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_63(256'hFBFBFBFBFBFBF9F9F9F9F9D9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_64(256'hB3F9FBFBFBFBFBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9F9F9D9F9FBFBFB),
    .INIT_65(256'hA4A4A4A4A4A4A4A48484848484A4A4848484A4A4A6A4A4A4A6C6C8E8C6C6084C),
    .INIT_66(256'hC8C8C8C6A6A6A6868686848686646486A6A6C6C6E6E6E6C6C4C4C6C6C4C4A4A4),
    .INIT_67(256'hFBFBFBFBD79371502C4E712C4E712E2C4E7071712C71717171717171704E4E2C),
    .INIT_68(256'hE6E6E6E6C60AC6C6C6C6086A08C6A484A4A6A6A6E86EB3F9FBFBFBFBFBFBFBFB),
    .INIT_69(256'h08080808282828282828280808082A8E6C4A2A28280808080808E8E8E6E6E6E6),
    .INIT_6A(256'h6E4C4C4C4A4C4C2A2A4A4A2A28282828282A28282A2A2A2A4C4C4A2A2A2A2A08),
    .INIT_6B(256'h6C6A6A4A486CAE282806288C8C2A2A4668482808B5939593B5B39391716E6E6E),
    .INIT_6C(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5F5D5),
    .INIT_6D(256'hFBFBFBFBFBFBF9F9F9F9D9D9D9D9D9F9FBF9D9D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_6E(256'hF7FBFBFBFBFBFBDBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBD9F9F9F9F9F9FBFBFB),
    .INIT_6F(256'hA4A4A4A4A4A4A4A4A4848484A4A4A4A48484A4A6A6A6A6A6A6C6E8E8E8E62A90),
    .INIT_70(256'hC8C8C8C8A6A6A6A6A6868484A6646486A6C6E6E6E6E6E6C6C4C6C6C6C4C6C4A4),
    .INIT_71(256'hFBFBFBFD95714E4E2C4E712C4E502E2C2E4E71712C4E717171717170704E4E2C),
    .INIT_72(256'hE6E6E6E6E6E8C6C6C6C6E64A06A6A4A4A6A6A6A60A8ED5FBFBFBFBFBFBFBFBFB),
    .INIT_73(256'h2A282828282828282A2A28080808082A4C4C4A2A0808080808E8E8E8E6E6E6E6),
    .INIT_74(256'h6E6C4C4C6C6C4C4A4A4A6A4A2A2A2828282A282A2A2A2A4A6C6E4A4A4A2A2A2A),
    .INIT_75(256'h6C6C6A6A486CAE282806288CAE4A2A48684826087171939393939191716E6E6E),
    .INIT_76(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5F5D5D5F7D5),
    .INIT_77(256'hFBFBFBFBFBF9F9F9F9F9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_78(256'hFBFBFBFBFBFBFBD9D9D9D9DBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9FBFBFB),
    .INIT_79(256'hA4A4A4A4A4A4A4A6A684848484A6A6A6A4A4A6A6A6A6A6A6C6E8E80AE8E86ED7),
    .INIT_7A(256'hE8C8C8C8A6A6A6A6A6A6A684A6646484C6E6E6E6E6E6C6C6C4C6C6C6C6C6C4A4),
    .INIT_7B(256'hFBFBFBD7704E4E4E2C4E712C2C4E2E2C2C4E70712C4E707070707070704E4E4E),
    .INIT_7C(256'hE8E8E8E6C6C6C6C6C6C6E62AE6A6A4A6A6A6A6C62A90F7FBFBFBFBFBFBFBFBFB),
    .INIT_7D(256'h2A2A2A2A2A2A2A282A28280808082A6E2AE6E6E6E8E808E80808E8E8E8E8E8E8),
    .INIT_7E(256'h6E6E6E6E6E6E6C4C6C6CB06C4A2A2A2A2A2A282A2A2A2A4C90B04A4A4A2A2A2A),
    .INIT_7F(256'h6C6C6A6A4A6CB0482806068E8E2A2A48686828084E6E7191B39191716E6E6E6E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFF002000100FFFFFFFFFFF000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFF800000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'h0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000100FFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000001007FFFFFFFFFF80000000),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFE000000F001FF9FFFFFFF80000000000000FFFFFFFFFF),
    .INITP_05(256'hFFFE003000E000FF9FFFFFFFC0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h0FFFFFFFC0000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFE000FF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFE000FF0FFFFFFFC0000000),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFF907FFFE0007E0FFFFFFFE0000000000007FFFFFFFFFF),
    .INITP_0A(256'hFFFFF8FFFFE000000FFFFFFFE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h0FFFFFFFE000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFE00000),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFE000000FFFFFFFF8000010),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFF9FFFFE000000FFFFFFFFFFF80380003FFFFFFFFFFFF),
    .INITP_0F(256'hFFFFF9FFFFF000000FFFFFFFFFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D7D5D5D5D5D5D5D5F7F7F7F7F7D5),
    .INIT_01(256'hF9FBFBF9F9F9F9F9F9FBD9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_02(256'hFBFBFBFBFBFBDBD9D9D9D9D9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBF9),
    .INIT_03(256'hC4C4A4A4A4A4A6A6A6A4848484A6A6A6A6A6A6A6A6A6A6A6C6E80A0A0A0A92F9),
    .INIT_04(256'hEAE8E8C8A6A6A6A6A6A6A6A6A6846484C6E6E6E6E6E6C6C6C4C6C6C6C6C6A4C4),
    .INIT_05(256'hFBFBD74E4E4E4E702C4E700C2C4E2E2C2C4E4E712C2E4E7070707070704E4E4E),
    .INIT_06(256'hC6C6C6C6C6C6C6C6C6C6E608E6C6A6A6A6A6A6C62A90F9FBFBFBFBFBFBFBFBFB),
    .INIT_07(256'h4A4A4A4A4A2A2A2A2A2A080808080A0AE8E6E6E6E6C6C6C6C6E808E8E8E8E6C6),
    .INIT_08(256'h6E6E6E8E8E6E6E6E6C8C8C6C4A2A4A4A4A6C6C4A4A4A4A6CB04C4A4A4A2A4A4A),
    .INIT_09(256'h6A8C6A6A6A6CB04A2806068E8E4A2A4AAC6828282A6E6F719171716E6E6E6E6E),
    .INIT_0A(256'hF7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D7F7F7D5),
    .INIT_0B(256'hF9FBF9F9F9F9F9F9F9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_0C(256'hFBFBFBFBFBDBD9D9D9FBD9D9DBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9FBF9),
    .INIT_0D(256'hC4C6A4A4A4A4A6A6A6A48484A6A6A6A6A6A6A6A6A6A6A6C6C80A2A2C2C4CF9FB),
    .INIT_0E(256'h0AE8E8C8C6A6A6A6A6A6A6A6A6A66484C6E6E6E6E6E6C6C6C4C6C6C6C6C6A4A4),
    .INIT_0F(256'hF9B32A0A4E4E4E702C2C4E0C2C4E2E2C2C4E4E712C2C4E70707071706E6E4E4E),
    .INIT_10(256'hC6C6C6C6C6C6C6C6C6C6E808C6A6A6A6A6A6A6A60A70D7FBFBFBFBFBFBFBFBFB),
    .INIT_11(256'h4C4C4A4A4A4A4A4A4A2A2A2A080808E8E6E6E6E6C6C6C6C6C4E8E8E8E8E8E6C6),
    .INIT_12(256'h6E6E6E8E8E6E6E8E8C6A6A6C4A4A4A4A4C8E8E4C4A4A4C4C4C4A4A4A4A4A4A4A),
    .INIT_13(256'h6C8C8C8C6A6AB06C2828068E8E4A2A6CF28A28282A4C6E6E7171716E6E4C4C6E),
    .INIT_14(256'hF7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D7F7F7D5),
    .INIT_15(256'hF9F9F9F9F9F9F9D9D9D9D9D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7F7F7),
    .INIT_16(256'hFBFBFBFBFBD9D9D9D9FBD9D9D9FBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9),
    .INIT_17(256'hA6A6A6A6A6A6A6A6A6A684A4A6C6C6C6A6A6A6A6A6A6C6C6E80A4C4C4EB3F9F9),
    .INIT_18(256'h2AE8E8E8C8A6A6A6A6A6A6A6A6A68484C6E6E6E6E6E6C6C6C6C6C6C6C6C6A4A4),
    .INIT_19(256'hD72A080A4E4E4E4E2C2C4E0C2C4E4E2C2C4E4E712E2C4E71717171716E6E4C4E),
    .INIT_1A(256'hC6C6C6C6C6C6C6C8C8E8E808C6A6A6A6A6A6A6A6E80A0C94FBFBFBFBFBFBFBFB),
    .INIT_1B(256'h4C4C4C4C4C4C4C4A4A2A2A2A080808E8E8E6E6E6C6C6C6C6C6E8E8E8E6E8E8C6),
    .INIT_1C(256'h6E6E6E8E8E8E8E8EAE6A4A6C6A4A4A6C4A4A6C4A4C6C6C4C4A4A4A4A4A4A4C4C),
    .INIT_1D(256'h8C8C8C8C8C6AB08E4A28068E8E4A2A6AAC6826282A4C4C6E6E6E6E6E6E4E4C6E),
    .INIT_1E(256'hD7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7D5),
    .INIT_1F(256'hF9FBF9F9F9F9D9D9D9D9D9D9F9F9D7D7D7D7F9F9D7D7D5D7D7D7D7D7F7F7D7D7),
    .INIT_20(256'hF9F9FBFBFBF9D9D9D9FBD9D9D9FBFBFBFBFBFBFBFBFBFBFBFBF9F9D7D9F9F9F9),
    .INIT_21(256'hA6A6A6A6A6A6A6A6A6A6A6A4A6C6C6C6C6C6C6C6A6A6C6E80A4C6E90B3F9F9F9),
    .INIT_22(256'h4CE8E8E8C8A6A6A6A6A6A6A6A6C68464A6E6E6E6E6C6C6C6C6C6E6C6C6C6A6A6),
    .INIT_23(256'h4EE8E80A2E4E4E4E2C2C4E0C2C4E4E2C2C4E4E714E2C4E71717171706E6E4E4E),
    .INIT_24(256'hC8E8E8E6E6E8E8E80A0A0808C6A6A6A6A6A6A6A6C6C8E80CD7FBFBFBFBFBFBFB),
    .INIT_25(256'h6C4C4C6C4C4C4C4A2A2A2A2A0A0808E8E8E6E8E8C6C6C6C6C6E8E8E8E8E8E8E8),
    .INIT_26(256'h6E4C6C6E4C6E8EB0D06C6A6C6C6C6C6C6C6C6C6C6C6E8E6E4C4A4A4A4A4C6C6C),
    .INIT_27(256'h8C8C8C8C8C8CB0B04A284AB08E4A2A488A6826282A2C4C6E6E6E6E6E4E6E6E6E),
    .INIT_28(256'hD7D7D7D7D7D7D5D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7D5),
    .INIT_29(256'hF9F9F9F9F9F9D9D9D7D9D9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7F7F9F7D7D7),
    .INIT_2A(256'hF9F9F9F9F9F9D9D9F9FBD9D9F9FBFBFBFBFBFBFBFBFBFBFBF9F9F9B7B5F9F9F9),
    .INIT_2B(256'hA6A6A6A6A6A6A6A6A6A6A6A6C6C6C6C6C6C6C6C6C6C6C6E82A6E90D5F7F9F9F9),
    .INIT_2C(256'h4E08E8E8E8A6A6A6A6A6A6A6A6C6A68484C6E6E6C6C6C6C6C6C6E6E6C6C6A6A6),
    .INIT_2D(256'h0AE8E80A2E4E4E4E2C2C4E2C2C4E502C2E4E4E714E2C4E71717171706E6E6E4E),
    .INIT_2E(256'hE8E8E8E8E8E8E8E80A0A0AE8A6A6A6A6A6A6A6A6A6A6C6E84EF9FBFBF9D9FBD7),
    .INIT_2F(256'h6C6C6C6C4C4C4A4A2A2A2A0A080808E8E8E8E8E8C8C6C6C6C4E80808E8E8E8E8),
    .INIT_30(256'h6C6E90909090B2B0D28E6C6C8E8E8E6C6CB08E8E8E8EB0D26C6C6C6C6C6C6C6C),
    .INIT_31(256'h8CACACACAC8CAEB06C486CB0B06C2A48886826282A4C4C4E4C4C4C4A2A2A4C4C),
    .INIT_32(256'hD5D5D7D7D7D5D5D5D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F5F7F7F7D5),
    .INIT_33(256'hF9F9F9D9D9D9D9D9D7D7D7D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7F9F7D5D5),
    .INIT_34(256'hF9F9F9F9F9F9D9D9F9F9F9D9F9FBFBFBFBFBFBFBFBFBFBF9F9F9F9D995D9F9F9),
    .INIT_35(256'hA6A6A6A6A6A6A6A6A6A6A6A6C6C6C8C8C6C6C6C6C6C6E80A4C90D5F7F9F9F9F9),
    .INIT_36(256'h6E0AE8E8E8C8A6A6A6A6A6C6A6A6C68484A6C6C6C6C6C6C6C6C6E6E6C6C6A6A6),
    .INIT_37(256'hE8E8E8EA2E4E4E4E2C2C4E2C2C4E702C4E4E4E71712C4E71717170706E6E6E4C),
    .INIT_38(256'h0A0A0A0A0A0A0A0A0A0A2AE8A6A6A6A6A6A6A6A6A6A6A6C82AB5F9D9D9D9F993),
    .INIT_39(256'h6E6E6E6C4C4C4C4C2C2A2A0A08080808E8E8E8E8E8C8C6C6E6080A0A0A0A0A0A),
    .INIT_3A(256'h6E6E90909090B2B2D0B08E8E8EB08E6E90B08E8E8E8E8E8E8E8E8E6C6E8EB08E),
    .INIT_3B(256'hACACACACACACAEB0AE4A8EB0B06C28488A68262A082A2A2A4C4C6E6E6E6E6E6E),
    .INIT_3C(256'hD5D5D7D7D7D7D5D5D5D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7F7D5),
    .INIT_3D(256'hF9F9F9D9D9D9D9F9D7D7D7D7D7F9F9D7D7D7D7D7D7D7D7D5D7D5D7D7D7D5D5D5),
    .INIT_3E(256'hF9F9F9F9F9F9D9F9F9F9F9D9F9F9F9FBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9),
    .INIT_3F(256'hA6A6A6A6A6A6A6C6C6C6A6C6C6C8C8C8C6C6C6C8C8C80A2C6EB3F7F9F9F9F9F9),
    .INIT_40(256'h4E2CE8E8E8E8A6A6A6A6A6A6A6A6C68484A6C6C6C6C6C6C6C6C6E6E6C6C6A6A6),
    .INIT_41(256'hC8C8C8E84E4E4E4E2C2C4E2C2C4E712C4E4E4E71712C4E7070717070706E6E4E),
    .INIT_42(256'h2C2C2C2C2C2C2C2C2E4E4EE8A4A6A6A6A6A6A6A6A6A6A6C60A6EF9D9D9B5700A),
    .INIT_43(256'h8E8E6E6E6C6C4C4C4C2A2A2A0A0A0A08E8E8E8E8E8E8C8C6E80A2A2A2C2C2A0A),
    .INIT_44(256'h8E90909090B2B5D4D2D0D0B0D2B0909090B0B0B0B08E6C8E8E8E8E8E8E8E8EB0),
    .INIT_45(256'hACCCCCACACACACB0B0AEAEB0B06C2A488A68486C4C9090908E6E6E6E6E6E6E6E),
    .INIT_46(256'hD5D7D7D7D7D7D7D7D7F7F7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7D7D5),
    .INIT_47(256'hF9F9F9F9F9FBF9F9D7D7D7D7D7D7D7D7D7D7D7F7D7D7D5D5D5D5D5D5D5D5D5D5),
    .INIT_48(256'hF9F9F9F9F9F9F9F9F9F9F9D9D9D9F9F9F9FBFBFBFBF9F9F9F9F9F9F9F9F9F9F9),
    .INIT_49(256'hA6A6A6A6C6C6C6C8C8C6A6C6C8E8E8C8C8C8C6C8E80A2C6E90D7F9F9F9F7F9F9),
    .INIT_4A(256'h4C4E0AE8E8E8C6A6A6A6A6A6A6A6C8A68484A6C6E8E8E8C6C6E6E6E6C6C6A6A6),
    .INIT_4B(256'hC8C8C8E84E4E4E4E4E2C4E2E2C4E712E2C4E7091934E4C707070706E6E6E6E6E),
    .INIT_4C(256'h2C4E4E4E4E4E4F51717193E8A6A6A6A6A6A6A6A6A6A6A6A6E82CD7732C0A0AE8),
    .INIT_4D(256'h90908E8E8E8E6E4C4C2A2A2A2A0A0A0808E8E80AE8E8E8C6E82A2A0A2C2C2C2C),
    .INIT_4E(256'h90909092B3B5B7D7D2D0D2D2D2B2F4D4D2D2D2B0B06E8EB0B0B0B0B0B0B090B0),
    .INIT_4F(256'hACCCCCCCACACACAEB0AEAEAED06C4A6AAC8A484C4A6E6E6E6E6E6E6E6E909090),
    .INIT_50(256'hD5D7D7D7D7D7D7D7F7F7F7F7D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7F7D7D5),
    .INIT_51(256'hF9F9F9F9F9FBF9D9D7D7D7D7D7D7D7D7D7D7D7D7D7F7D7D5D5D5D5D5D5D5D5D5),
    .INIT_52(256'hD7D9F9F9F9F9F9F9F9F9F9D9D9D9D9F9F9FBFBFBF9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_53(256'hA6C6C6C6C6C6C8C8C8C6C6C6C8E8E8C8C8C8C8E80A2A4E90D5F9F9F9F9F7D7D7),
    .INIT_54(256'h6C6E2AE8E8E8C8A6A6A6A6A6A6A6C6C88484A6C8E8E8E8C6C6C6E8E8C8C6A6A6),
    .INIT_55(256'hC8C8C8C82E4E4E4E4E2C4E4E2C4E714E0C4E507191714C707070906E6E6E6E6E),
    .INIT_56(256'h4E4E4E4E4F5171717193B5E8A6A6A6A6A6A6A6A6A6A6A6A6C8E8EAC8C8C8C8C8),
    .INIT_57(256'hB0909090B2F5906C4C4A4C4C2A2A0A0808080A0A0AE8E8C6082A2A2A2C2C2C2C),
    .INIT_58(256'h9092B2B2D7D7DBFBD2D2D2D2B0B0D2D4D4F4F4D4D4D2D2B0B0B0B0B0B0B0B0B0),
    .INIT_59(256'hACCECCCCCCACACAED0B0B0B0D26C4A6AAC8A486C4C6E6E6E6E6E6E6E90909090),
    .INIT_5A(256'hD7F7D7D7D7F7F7F9F9F7F7F7D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7F7F7F7D7D5),
    .INIT_5B(256'hF9F9F9F9F9F9F9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5),
    .INIT_5C(256'hF7D7F7F9F9F9F9F9F9F9F9F9F9D9F9F9F9F9FBFBF9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_5D(256'hC6C6C8C8C6C6C8E8E8C8C6C6C8E8E8E8E8E8E80A2C4E70B5F9F9F9F9F9F9F7F7),
    .INIT_5E(256'h6E6E4CE8E8E8C8C6A6A6A6A6A6A6A6C8A684A4C6E8E8E8E8E6E6E8E8E8C6C6A6),
    .INIT_5F(256'hC8C8A8C82C4E4E4E702C4E712C4E71712C4E6E71716E6E909090908E6E6E6E8E),
    .INIT_60(256'h4E4E4E4E4E5171717193B5E8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8C8C8C8),
    .INIT_61(256'hB09090B0B2B0906E4C6C6C4C4C2C0A0A0A0A0A0AEAE8E8E80A2A2C2C2C2C2C4C),
    .INIT_62(256'hB2B2B2B5F9D7FDFDD4D2D2D2B0D2D2D2D4D2B0B0B0B2D2D2D4F4D4D2B2B2B0B0),
    .INIT_63(256'hACCECECCCCCCACAED0B0B0D2D04A4A6AAC8A686C4C9090909090909090909092),
    .INIT_64(256'hD5D7D7D5D5F7F9F9F7F7F7D7D5D5D5F5F7D5D5D5B2D3D5D5D5F7F7F7F7D5D5D5),
    .INIT_65(256'hF9F9F9F9F9F9F9D9D9D7D7D7D7D7F9D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5),
    .INIT_66(256'hD7D7F7F7F9F9F9F9D7D7F9F9F9D9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_67(256'hC8E8E8C8C6C6C8E8E8C8C6A6C6E8E8EA0A0A0A2C4E70B5F9F9F9F9F9F9F9F9F7),
    .INIT_68(256'h6E6E6E0A08E8E8C8C6A6A6A6A6C6C6C8A88484C6E8E8E8E8E8E8E808E8E8C6C6),
    .INIT_69(256'hC8C8C8C80C4E4E6E704E4E704E4E7071704E70706E708E9090908E8E6E8E8E8E),
    .INIT_6A(256'h2C4C4C4E4E4E6F71717193E8C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8C8CAC8C8),
    .INIT_6B(256'hD2B2B0908E8E8E6C8E6E6E6C4C2A2C2C2A0A0A0AEAE8E8E82A2C2C2C2C2C2C2C),
    .INIT_6C(256'hB3B2B3D5D7D9FFFFD7D2D2B0D2F4D4D4D4D2B0B0B0B0B0B0B0D2D2D2D4F4F4D4),
    .INIT_6D(256'hAECECECEAECECEAED0D0D2D2B04A6A8CAC8A6A6C6E9090909090B2B2B2B2B2B2),
    .INIT_6E(256'hD5D5D5D5D5D7F7F9F7F7F5D5D5D5D5D5D5D5D5B06E6ED5D5D5F7F7F7F5D5D5D5),
    .INIT_6F(256'hF9D9D9F9F9D9D9D9D9F9D7D7D7D7D7D7D7D7D7D7D7F9F9D7D5D5D5D5D5D5D5D5),
    .INIT_70(256'hF7D7D7F7F7F7F7D7D7D7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D7D7D9D9F9F9),
    .INIT_71(256'hC8E8E8C8C8C6C8E8E8C8C6A6C8E80A0A2C2C4C4E6E92F9F9F9F9F9F9F9F9F9F9),
    .INIT_72(256'h8E8E8E8C6C6C6C6C6C4C4A4A2A2A282A0AE6C6C6E8E8E8E8E8E8080A0AE8C8C6),
    .INIT_73(256'hC8C8C8C80C4E707070704E70704E7070707070708E908E8E8E8E8E8E8E8E8E8E),
    .INIT_74(256'h2C2C2C4C4E4E4E4E4E4F6EE8C6A6C8A6A6A6A6A6A6A6A6A6A6A6A6C8C8C8C8C8),
    .INIT_75(256'hD2D2D4D2D2B0906E6E6E6E6E6C4C4C4C2C2A2A0A0AE8E80A2C2C2C2C2C2C2C2C),
    .INIT_76(256'hB5B5D5D5D7FDFFFFD9D4D2D2D4F4F4F4F4B2B0B0B0B0B0D0B0B2B2B2D2B2B2B2),
    .INIT_77(256'hAECECECEAEAECECECED0D2D28E6C6AACAC8A6A6E90D5B2B2B2B2D5D7D5B2B2B2),
    .INIT_78(256'hD5D5D5D5D5D5F7F7D7D5D5D5D5D5D5D5D5B28E4A4AD3D5D5D5D5F5F5F5D5D590),
    .INIT_79(256'hF9D9D9D9D7D7D7D7F9FBF9D7D7D7D7D7D5D5D7D7D7D7F7D7D5D5D5D5D5D5D5D5),
    .INIT_7A(256'hF9D7D7F7D7D7D7D7D7D7D7F9F9F9F9F9F9F9F9F9F9D9F9D9D9D7D7D7D7D7F9F9),
    .INIT_7B(256'hC8E8E8C8C8C6C8E8E8E8C6C6C80A2C4E4E6E6E7092F7F9F9F9F9F9F9F9F9F9F9),
    .INIT_7C(256'hD0D0D1D1B0AEAE8C8C8C6C8C8C8C8C8C8C6C6C6C4A4A2A28080808080A08E8C8),
    .INIT_7D(256'hA8C8C8C80A4E707171717070707170707070908E8E8E8E8E8E8E8EAEAEAEAEAE),
    .INIT_7E(256'h2C2C2C2C2C2C2C2E2E4E4C08C8A6C6EAA6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A8),
    .INIT_7F(256'hB0B0B0B0B0B2D7D7B592906E6E6EB3702C2C2C700AE8E82A4C4E2C2C2C2C2C2C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h955555555555400000154003E6C0000D9A9ABF569ACFC040007F8FFFFFFFFFFA),
    .INIT_01(256'h55B0000FFFFFFF000FFFC03FFFFEAAA55556A5AFFC159555555555AA99555556),
    .INIT_02(256'hAAAABF9A9AFFC00001BFDF0FFFFFFFFEFADA9409ABABFFFFFFFFFA5555555555),
    .INIT_03(256'h5556A5BFC15555555555556A5555555555555550555550000015404F95000005),
    .INIT_04(256'hFF6AAAAA2AABFFFFFFFFFA555555555555B003FFFF00000FF000FEA5555556A5),
    .INIT_05(256'h5555554005555000000405FE65C00025AAAAB39AAAF0000006AFD30FFFFFFFFF),
    .INIT_06(256'h557CFFF0000003FC00FA555555555555A55AA5B0555A55555555556A55555555),
    .INIT_07(256'h6AAAC4AAAB0000015ABFE00FFFFFFFFFBDAAAAAA4AAFFFFAFFFFE95555555555),
    .INIT_08(256'h56AAAAB1556A555055555559555555555555554005555000000043FE56000095),
    .INIT_09(256'hF2AAAAA55EAFFFFFFFFFA9555555555555BFFC0000400F003EA5555555555555),
    .INIT_0A(256'h555555400555500000012FE553000D556AABC4FAAC0001556AFFF40FFFFFFFFF),
    .INIT_0B(256'h5AFFC0155550F053AAAA955555555555556AFAC5555555505665555555555555),
    .INIT_0C(256'h6AAB1503F0055556AFFFF800303FFFFFCAAAAA9553BFFFFFFFFFA95555555555),
    .INIT_0D(256'h5555AAD55559555156A955555555555555555540015550005042BE1554003555),
    .INIT_0E(256'h2AAAAA9653FFFFFFFFFFA95555555555BFC00155554F143AAAAA956A55555555),
    .INIT_0F(256'h555555555555500115FBF5555C009555AAAF15550555555AAFFFFE5400003FFF),
    .INIT_10(256'hC0000555553153AAAAAAA56A5A555555556AAAC0056A955556A9555555555555),
    .INIT_11(256'h6ABC55555555556ABFFFFFFEA5400FFCAAAAAAA550FFFFFFFFFFE9555555556F),
    .INIT_12(256'hAAAAAAAAAAF0555556AAAA55555555515555555555555000139B955520025555),
    .INIT_13(256'hAAAAAAA565FFFFFFFFFF2955555556FC0000055557C53AA6AAAAAAAAAA95555A),
    .INIT_14(256'h5555440555550000797D6555CC0955556ABC5555555566AAFFFFFFFFFFE943F1),
    .INIT_15(256'h0FFFBFFC0F14AAAAAAAAAAAAA9AA5AAAAAAAAAAAAAAFB15556AAAA5555555555),
    .INIT_16(256'hAAF1555555556AABFFFFFFFFFFFAA956AAAAAAA554FFFFFFFFFC695555556FF0),
    .INIT_17(256'hAAAAAAEAAAAAAB1556AAA95595555555555500005554000039E6959593255555),
    .INIT_18(256'hAAAAAAA593AFFFFFFFF17955555AFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5AAA),
    .INIT_19(256'h555C00C00014143F96A9565554D55555AAF1555555556AABFFFFFFFFFFEAAAAA),
    .INIT_1A(256'h00100003AAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAB156AAAA5595555555),
    .INIT_1B(256'hAAC5555555556AAFFFFFFFFFFFEAAAAAAAAAAAA693AAAAFFFFC5795655BFEBC0),
    .INIT_1C(256'hAAAFEAAAAABA9ABB5AAAA555555555555028C2C000014CED56A569555F555555),
    .INIT_1D(256'hAA9AAAAA93AAAAAACF1549556BEB015555555553D53AAAAAAAAAAAAAAAAAAAAA),
    .INIT_1E(256'h3E5EB9000555FEA56E5595556D555555AAC5555555555AAFFFFFFFFFFEAAAAAA),
    .INIT_1F(256'h55555540553EAAAAAAAAAAAAAAAAAAAAAACEAAAAAAFEA9AADAAAA55555555555),
    .INIT_20(256'hABC5555555555AABFFFFFFFFEAAAAAAA595A9A6A93AAAAAAD5555D56ABC05555),
    .INIT_21(256'hAC3FAAAAAAFEAA6AA2A9555555555543E5B7980053533F55A5565555B5555555),
    .INIT_22(256'h555A9A6A53AAAAAAD555566AB05555555555554155FFAAAAAAAAAAAAAAAAAAAA),
    .INIT_23(256'h56AD6505387FB95B9555555515555555AB15655555555AAAFFFFFFFFEAAAAAA9),
    .INIT_24(256'h5555550557FFAAAAAAAAAAAAAAAAAAAABFFFAAAAAAFEAAAAAB2A9555555554FF),
    .INIT_25(256'hAF15655555555AAAAFFFFFFEAAAAAAA5556AAA5553AAAAAA155554AC01555555),
    .INIT_26(256'hFAAFAAAAAAAAAAAAAAC6A95555554FE56AE5D553B3FB956E5555555594555555),
    .INIT_27(256'h55AAAA9553AAAAAA15555EC0155555555555550553FFEAAAAAAAAA96AAAAAAAA),
    .INIT_28(256'hA355153AFAE956E95555555555555555AC15A955555556AAABFFFFFFAAAAAAA5),
    .INIT_29(256'h555554155FFFFAAAAAAAAAAAAAAAAAABAAABEAAAAAAAAAAAAAADA9555554F25A),
    .INIT_2A(256'hAC51AA5555555AAAABFFFFFFAAAA6A9555AAAA5553AAAAAB55552C0055555555),
    .INIT_2B(256'hAAAABEAAA6AAAAAAAAAA2555554FF5AA79A743EB9A956E956556555555555555),
    .INIT_2C(256'h5595A95553FAAAAB5553C00155555555555550554FFFFAAAAAAAAAAAAAAAAAAE),
    .INIT_2D(256'h9AA802796A56F966955A695555555555BC51AA9555555AAAAABFFFFFAAAAA955),
    .INIT_2E(256'h555550597FFFFEAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAB6555033AAAA),
    .INIT_2F(256'hB141AA9555556AAAAAAAAAFEAAA969555655555553EAAAAB554C000555555555),
    .INIT_30(256'hAAAAABEBAABAAAAAAAAAAD5030EAB9BEAAAAE696A55FA659556A955555555555),
    .INIT_31(256'h6A9555555FAAAAA85570001455555555555541AAFFFFFEAAAAAAAAAAAAAAAAAA),
    .INIT_32(256'hAA955A5A957A95A555A9555555555555B141AAA55555AAAAAAAAAAAAAAA56955),
    .INIT_33(256'h6AAA46A9FFFFFFAAAAAAAAAAAAAAAAAAAAAAABA3AAFAAAAAAAAAABFCEA6BEBFA),
    .INIT_34(256'hB105AAA55556AAAAAAAAAAAAAA955956AA5555554EAAAAA85500005455555555),
    .INIT_35(256'hAAAAAABFEAFEAAAAAAAAAAAFAAAEB39AAA9555A956A955A55555555555555555),
    .INIT_36(256'h965555554EABEAAD54000555555555AAAAAA0AABFFFFFFEAAAAAAAAAAAAAAAAA),
    .INIT_37(256'hAAA555A55A9595555555555555555555B106AAA95556AAAAAAAAAA55555556AA),
    .INIT_38(256'hAAAE2FF7FFFFFFEAAAAAAAAAAAAAAAAAAAAAAAABFFFEAAAAAAAAAAAAAAAAFAAA),
    .INIT_39(256'hB156AAAA956AAAAAFAAAAA55555556AA955555554EAFEABD5500059555556AAA),
    .INIT_3A(256'hAAAAAAAAFFFEAAAAAAAAAAAAAAABAAAAAAAA59556956555A6955555555555555),
    .INIT_3B(256'h955655554EAFFAF1540005555556AAAABFFD3FFFFFFFFFFAAAAAAAAAAAAAAAAA),
    .INIT_3C(256'hAAAA6555A559556A5555555555555555F156ABEAA5AAAAAFFAAAAA95555555AA),
    .INIT_3D(256'hFFFFBFEFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAFFFFAAAAAAEAAAAAAABEAAAA),
    .INIT_3E(256'hC156AAEAAAAAFFFFFAAAAA55555555AA955555553EAFFFF15000155555AAAAAF),
    .INIT_3F(256'hAAAAAAAABFFFAAAAAFAAAAAAAAEAAAAAAAAA955A955555555555555555555555),
    .INIT_40(256'h555555553EBFFFF5400055555AAAAAFFFFF4AFCFFFFFFFFEAAAAAAAAAAAAAAAA),
    .INIT_41(256'hAAAA5569555555555555555555555555C156ABFAAAABFFFFFAAAAA55555555AA),
    .INIT_42(256'hAFF1ABBFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAFCFEAABFFFFAABAABAAAAAA),
    .INIT_43(256'hB156AFFFAAAFFFFFAAAAA555555515A9555555553EBFFFF540055555AAAAAAAA),
    .INIT_44(256'hAAAAAAAAABF3FABFFFFEAAAABAAAAAAAAAAAAAA5555555555555555555555555),
    .INIT_45(256'h555555553ABFFFC500055556AAAAAAAAAAA1AA7FFFFFFFFFAAAAAAAAAAAAAAAA),
    .INIT_46(256'hAAAAAA55555555655555555555555555B155AFFFAABFFFFFAA555555555516AA),
    .INIT_47(256'hAA915AFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFAAAAAAEABAAAAA),
    .INIT_48(256'hB155AFFFFAFFFFFFAA955555555416A655555694FAFFFFD40055556AAAAAAAAA),
    .INIT_49(256'hAAAAAAAAAAFFFFFFFEAAAAAAABAAAAAAAAAAAA55555556555555555555555555),
    .INIT_4A(256'h95AA5550FFFFEB140555553F6AAA9555558155FFFFFFFFFFAAAAAAAAAAAAAAAA),
    .INIT_4B(256'hAAAAAA955555595A5555555555555555BC55BFFFFFFFFFFEAA95695555555AAA),
    .INIT_4C(256'h557014FFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAFFFAAAAAAAAABEAEAAAAAA),
    .INIT_4D(256'hBC55BFFFFFFFFFFAAA55555555555A5555695403FBFFFF50555553FEB5555555),
    .INIT_4E(256'hAAAAAAAAAAFFEBFEAAAAAAEAAAAAAAAAAAAAAAA5555595555555555555555555),
    .INIT_4F(256'hAAA9003FFFFFFD5155557FEAED555550003003FFFFFFFFFEAAAAAAAAAAAAAAAA),
    .INIT_50(256'hAAAAAA56555555555555555555555555AC15BFFFFFFFFFFAAA966A5555956A95),
    .INIT_51(256'h00F003FFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFEAAAAAAAAAAAAAAAA),
    .INIT_52(256'hAF057FFFFFFFFFEAAAA96A5556AAAA55AAA5FCFFFFFFF1455555FEAAB8400000),
    .INIT_53(256'hAAAAAAAABFFFFFFAAAAABEAAAAAAAAAAAAAAAA5A95A955555555555555555555),
    .INIT_54(256'hAAA8FFFFEFFFC5055557FAAABF00000000F003FFFFFFFFFEAAAAAAAAAAAAAAAA),
    .INIT_55(256'h55555555555550501000000000000000AF016FFFFFFFFFEAAAAAAAAAAAAAAA65),
    .INIT_56(256'h5A59A55555555555555555555555555555555555555555555555555555555555),
    .INIT_57(256'h556AAFFFFFFFFFFAAAAAAAAAAAAAAAAAAAA9555555556AAAAAA9555555AA9655),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h07FFFFFFFFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h000FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF00000),
    .INITP_02(256'hFFFFFFFFFFFFEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFF87FE0CFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFF0000007FFFFFFFFFFF801FFDFFFFFFFFFFFFFFFFFFFFFFFFF9FFE),
    .INITP_05(256'h1FFFFFFFFFFFFC071FFFFFFFFFFFFFFFFFFFFFFFFFFC1FF4FFFFFFFFFFFFFFFF),
    .INITP_06(256'h00FFFFFFFFFFFFFFFFFFFFFFFFF01FE0FFFFFFFFFFFFFFFFFFFFFFFFFFF00000),
    .INITP_07(256'hFFFFFFFFFFE03FC0FFFFFFFFFFFFFFFFFFFFFFFFFFE00000FFFFFFFFFFFFF8E0),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFC0003FFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFE0001FFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFFFFFE07F00),
    .INITP_0A(256'hFFFFFFFFFFFFFE00000007FFFFFFFFFFFFFFFFFFFFC0FE00FFFFFFFFFFFFFFFF),
    .INITP_0B(256'h0000051FFFFFFFFFFFFFFFFFFF801C00FFFFFFFFFFFFFFFFFFFFFFFFFFE0007F),
    .INITP_0C(256'hFFFFFFFFFF101800FFFFFFFFFFFFFFFFFFFFFFFFFFE003FFF02007FFFFFFF800),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFFFFF01FFFFFFE0000000060FFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFE07FFFFFFFFCFFFFFFC00001000601FFFFFFFFFFFFFFFF3E603000),
    .INITP_0F(256'hFFFFFE7FFFFF80000E000600FFFFFFFFF3EFFFFE78807000FFFFFFFFFFFFFFFF),
    .INIT_00(256'hD5D5D7D7D9FFFFFFFDB5D2F4F4F4F4D4D4D2D2D0D0D2D2D2D2D2D2D2D2B2B0B0),
    .INIT_01(256'hAECECED0D0AECECED0D2F4D28C8C8CCECC8A8C8EB2D5B2B2B2B5D5F7F9D5D5D5),
    .INIT_02(256'hD5D5D5D5D5D5F7F7D5D5D5D5D5D5D7D4B08C284AB2D5D5D5D5D5D5F7F5F5B208),
    .INIT_03(256'hF9D9D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D7D5D5D5D5D5D5D5D5D5D5),
    .INIT_04(256'hF9F9F7F7F7D7D7D7D7D7D7F9F9F9F9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D9F9),
    .INIT_05(256'hC8C8E8C8C8C6C8E8E8E8C8C6E82C4E70707090B3B3F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_06(256'hD1B1AE8E8E8C8EAEAEB1D1D1D1B0B0AEAE8E8E8E8C8C8C6C6C6A4A482808E8E8),
    .INIT_07(256'hA8A8C8C8E84E7171717171719191908E8E8E8E8E8E8EAEAEAEAEB0B0D1D1D1D1),
    .INIT_08(256'h2C2C2C2C2C2C2C2C2C2C2C08C8C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8),
    .INIT_09(256'hB0B0B0B090D9FDFDFDFBD9D7B7D7FBD74E4C4E700A080A4C4E2C2C2C2C2C2C2C),
    .INIT_0A(256'hD7D7D7F9FDFFFFFFFFFBD4F4F5F7F4D4D2D2D2D2D2D2D2D2D2D2D2D2D2D2B2B0),
    .INIT_0B(256'hAECED0D0D0CECED0D0F4F6D28C8CAECECC8A8C6EB2B2B4B4D4D5D5D7D7D5D5D7),
    .INIT_0C(256'hD5F5D5D5D5D5F7F5F5F5D5D5F7D7B2B04C082A0AB5D5D5D5D5D5D7D7F7D52AE8),
    .INIT_0D(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_0E(256'hF9F9F9F9F7D7D7D7F7F9D7D7F9F9F9F9F9F7F9F7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_0F(256'hE8E8E8C8C8C6C8E8EAE8C8C60A4E70929293D5D7D7F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_10(256'h8C8CAFB1B1D3D1B18E6C6C4A2828280606060606060606062626262828282808),
    .INIT_11(256'hA8A8C8C8C82E71717191918E8E8E8E8E8E8EAEAEAFB1B1B1B1B1D1D1D1B1AE8C),
    .INIT_12(256'h2C2C2C2C2C2C2C2C2C2C2C0AC6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8),
    .INIT_13(256'hB0B0B0B0D9FDFDFDFDFDFDFDFDFDFDFBB76E4C2C2A2A2C4E4E2C2C2C2C2C2C2C),
    .INIT_14(256'hF7D7D9FDFFFFFFFFFFDBD7F6F7F7D4D4D2D2D2D2D2D2D2D2D2D4D2D2D2D2B2B0),
    .INIT_15(256'hAED0D0D0D0D0D0D0F2F6F9F4D0AECEEEAC8C8E8ED4D4D5D5D5D5D5D7F7F7F7F7),
    .INIT_16(256'hD5F5D5D5D5D5D7D5D5D5D7F9B2B0B04A2A2A08E86EF5D5D5D5D5D5D5B52A08E8),
    .INIT_17(256'hD7D7D7D7D7D7D7D7D7D7F7F9D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_18(256'hF9F9F9F9F9F7F7D7D7F7D7D7F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_19(256'h282806E6E8C8E8EA0A0AE8E82C70B3B5D7F9F9F9F9F9F9F9F9F9D7F7F9F9D7F9),
    .INIT_1A(256'hB1D3D3B18E4C280806060606060606060606060606E6E6E6E606060606060628),
    .INIT_1B(256'hA8A8C8C8C82C6E916E6E8E8E8E8E8FAFB1B1B1B1B1B1B1D1D1D1B18E8C6C8C8F),
    .INIT_1C(256'h2C2C2C2C2C2C2C2C2C2C2A08C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8),
    .INIT_1D(256'hB0B0B2D9FDFDFDFDFDFDFBFDFDFDFBFBFBB56E4C4A4C4E4E4E2C2C2C2C2C2C2C),
    .INIT_1E(256'hF9FBFDFFFFFFFFFFFFFDD7F7F7D5D4D4D4D4D4D4D4D4D4D4D4D2D2D2D2D2D2B0),
    .INIT_1F(256'hAED0D0D0D0D0D0D2F4F9FBF7D0D0EECEAE8E8EB2D5D5D7D7F7F7F7F7F7F7F7F9),
    .INIT_20(256'hD5D5D5D5D5D5D5D5D7F9D5B0D2D2904C0AE6E62AD5D5D5D5D5D5D5B32A0808E8),
    .INIT_21(256'hD7D7D7D7D7D7D7D7D7D7F7F7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_22(256'hF9F9F9F9D7F9F9F7F7F7D7D7F7F9F9F9F7D7F7F7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_23(256'h060626080808080A2C2CEA0A4E92B5D7F9D9D9D9D9F9F9F9F9D7D7D7D7D7B3D5),
    .INIT_24(256'hB18E4A280606060606060606060606060606060606E6E6E6E6E6E6E6E6E6E606),
    .INIT_25(256'hA8C8C8C8E82C6E6E6C6C8E8FAFB1B1B1B1B1B1B1B1B1B1D1B18F6C8CB1B1D1D3),
    .INIT_26(256'h2C2C2C2C2C2C2C2C2C2C2A08C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_27(256'hD0B2D7FDFDFDFDFDFDFBFBFBFBFBFBFBFBF9D28E4C4C6E4E4E4E4E4C2C2C2C2C),
    .INIT_28(256'hFDFFFFFFFFFFFFFFFFFFF9F7F7F5D4D4D4D4F4D4D4D4D4D4D4D4D2D2D2D2B2B2),
    .INIT_29(256'hACCED0D0D0D0D0F4F6F9FDFBD4F2D0D0AEB090F7F7F7D7D7F7F7F7F9FBFBFBFD),
    .INIT_2A(256'hD5D5D5D5D5D5D7F9D5B0D0D28E2AE6C6C6A6A490D5D5D5D5D5D59008E808E8E8),
    .INIT_2B(256'hD7D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_2C(256'hF7F9F9F9D7F9F9F9F9F7D7D7F7F7F7D7F7F7F9F7D7D7D7D7D7D7D7D7D7D7D7D7),
    .INIT_2D(256'hE6E6E6060608082C4E4E0A0A4EB5D7D7D7D9D9D9D9D9F9F9F9D7D7D7D7D791B5),
    .INIT_2E(256'h28080808080808080808080808060808060606060606E6E6E6E6E6E6E6060606),
    .INIT_2F(256'hC8C8E82A4C6E6E6E6C8F8FB1B1B1B1B3B3B3B3B1B1B3B18F6C6CB1D3D3D3B16C),
    .INIT_30(256'h2C2C2C2C2C2C2C2C2C2C2A08C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_31(256'hB2D7FDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF9F7D26C6E6E4E4E4E4E4E4E2C2C2C),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFBD9F7F7D7D5D5D4D5D5D5D4D4D4D4D4D4D2D2D2D2D2),
    .INIT_33(256'hAECED0D0D0D2F2F4F7FBFDFDFBF7F7D2B290D5D7F9F9F9FBFBFBFBFBFDFDFDFD),
    .INIT_34(256'hF7F5D5D5F7F7D7B0B0D2B06CE6C6C6C6C6A4C6B3B3D3D5D5D59008E8E8E8E8E8),
    .INIT_35(256'hD7D7D7D7D7D7D5D5D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_36(256'hF7F7F7F9F9F9F9F9F9F9F7F7D7D7D7D7F7F7F7D7D7D7D7D7D7D7D7D7B7B7D7D7),
    .INIT_37(256'hE6E6E6E6E6E6E6E6082C2C2C70F7D7D7D7D9D9D9D9D9F9F9D9D9D7D7D7D7B5D7),
    .INIT_38(256'h080808080808080808080808080808080806060606E6E6E6060606E6E6E6E6E6),
    .INIT_39(256'h0A4C6E6E6E6F6F6F8F8F91B1B3B3B3B3B3B3B3B3B3916C6CB1D3B3B38F4C2808),
    .INIT_3A(256'h2C2C2C2C2C2C2C2C2C4C2AE8C8A6A6A8A8A8A8A6A6A6A6A6A6A6A8A6A6A6C6E8),
    .INIT_3B(256'hD7FDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBF9F9D490906E4E4E4E4E4E4E4E4E4E),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFDFBFBD9D7D7D7D7D7D7F7F7F5D5D4D4D4D2D2D2B2),
    .INIT_3D(256'hAECED0D0D2D2F4F6F9FDFDFDFDFBFBFBF9D9FBFBFDFDFDFDFDFDFDFDFDFDFDFF),
    .INIT_3E(256'hD5F7F7F9B2B06CB0B2900AE6E8C6C6A4A4C690D5B3D5D5B34C08E8E8E8E8E8E8),
    .INIT_3F(256'hD7D7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7),
    .INIT_40(256'hF7F7D7F9F9F9F9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B7B5B5D7),
    .INIT_41(256'hE6E6E6C6C6E6E8C8E8E80A0C2E715173739595B5B7D9F9D9D9D7D7D7D7D7D7D7),
    .INIT_42(256'h0808080808080808080808080808080808080808080606060606E6E6E6E6E6E6),
    .INIT_43(256'h8E6F8F8F8F6F6F6F6F8FB1B3B3B3B3B3B3B3B3B36F6CB1B3B3B3914C28080808),
    .INIT_44(256'h4E2C2C2C2C2C2C2C904C2AE8C8A8A8A8A8A8A8A6A6A6A6A6A6A6A6A6C6E84C6E),
    .INIT_45(256'hFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF9F9D7D5B2906E6E4E4E4E4E4E4E4E4E),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBF9D9D7D7D7F7D5D4D4D2D2D4D7),
    .INIT_47(256'hAECED0D0F2F2F4F7FBFDFDFDFDFBFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFF),
    .INIT_48(256'hD7F9D58E8E288EB06E0808E8C6C6A6A4A42CB5D5D3D5D52CE8E8E8E8E8E8E8E6),
    .INIT_49(256'hD7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5),
    .INIT_4A(256'hD7D7D7F9F9F9F9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5B5D5),
    .INIT_4B(256'hC8C8E8E8EAEAEAEAEAEACACACAC8C8C8A8A8A8C80C4E5193B7D7D7D7D7D7D7D7),
    .INIT_4C(256'h080808080808080808080808080808080606080808060606E6E6E6E6E6E6E6C6),
    .INIT_4D(256'h8F8F6F6F6F6F6F6F6F91B3B3B3B3B3B3B3B3B36C6EB3B3B3B16C2A0808080808),
    .INIT_4E(256'h4E4C2C2C2C2C2C70D54C2AE8C8A8A8A8A8C8A8A8A6A6A6A6A6A6C80A4C8E8E8F),
    .INIT_4F(256'hFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9F9B2B290706E6E6E4E4E4E4E4E),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBF9D7D4D4D4D5FB),
    .INIT_51(256'hAECED0F0F2F4F6F9FBFDFDFDFDFBFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFFFFFF),
    .INIT_52(256'hF9B26C4A28B0904A2A2AE6C6A6C6C6A62EB590B3D5B32CE6E8E6E6E8E8E8E8E8),
    .INIT_53(256'hD7D7D7D7D5D5B5B5B5B5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7),
    .INIT_54(256'hD7D7D7F9F9F9FBF9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5B5B5D7),
    .INIT_55(256'hC8C8A8A6A6A8A6A8A8A8A8A8A8A8CACACAC8C8C8EA0C2C0C0A2E73B7D7D7D7D7),
    .INIT_56(256'h0808080808080808080808080808080808080808080806E6E6E6E8C8C8C8C8C8),
    .INIT_57(256'h6D6D4C4C2C2A0A0A0A0A2C2C4C4C4E6F71914C4C91B3D56F2A28080808080808),
    .INIT_58(256'h4E4E4C2C4C4E4EB5F74E0AE8C8C8A8A8C8C8A8A8A8A6A6C6E82C6E8E8E8E8F6F),
    .INIT_59(256'hFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9B5B2B2B2929070706E704E4E4E),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBF9FBFD),
    .INIT_5B(256'hAED0F0F2F2F4F9FBFDFDFDFBFBFBFBFBFDFDFDFDFDFDFDFDFDFFFDFDFFFFFFFF),
    .INIT_5C(256'hD5B24A4AB06E4A4C2AC6C6C6E8C6A6A6E8C6C490B34CE6E8E8E6E6E8E8E8E8E8),
    .INIT_5D(256'hD5D7D7D5D5D5D5B5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5F7D5D7F9F7),
    .INIT_5E(256'hD7D7D7F9F9F9FBF9F9F9F9F9D7D7D7D7F9D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5),
    .INIT_5F(256'hA8C8C8C8C8C8C8C8C8C8CACACACAC8A8A8A8A8C8EA0CEA0CEAEAEA0C73B7D7D7),
    .INIT_60(256'h080808080808080808080808080808080808080808E8E8E8C6C8C8A8A8A8A8A8),
    .INIT_61(256'h08080808E8E8E8E8E8E808E8E8E8E8E8E8E8E8E8E8082A2A0808080808080808),
    .INIT_62(256'h4E4E4E4C4E4E93D7F76E0AE8C8C8C8C8C8C8A8C8C8C80A4C8E8E8E6C4A2A0808),
    .INIT_63(256'hFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBB5908E6E6E70706E7070706E4E4E),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFD),
    .INIT_65(256'hCED0D0D2F4F6F9FBFDFDFDFBFBFBFBFBFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFF),
    .INIT_66(256'h4C08084C6E6E4C08C6C6E82AC6A6C6A6A6A4E8B36EE6E6E8E6E6E6E8E8E8E8C6),
    .INIT_67(256'hD5D5D5D5D5D570B3D5D5D5B370D5D5D5D5D5D5D5D5D5D5D5D5D7F9D7D7B290B2),
    .INIT_68(256'hD7D7D7FBFBF9FBF9F9F9F9F9D7D7D7D7F9D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5),
    .INIT_69(256'hC8C8C8C8C8C8A8A8C8EACAC8A8A8A8CAC8C8C8C8EA0C0CEAA8CAEAEA0A0C73D7),
    .INIT_6A(256'h08080808080808080808080808080808080808E8E8E8C8C8C8C8CACACACAC8C8),
    .INIT_6B(256'h71717171717171717171717171514F0CC8EAE8E8C8E8E8080A08080808080808),
    .INIT_6C(256'h4E4E4E4E4E71D7D7D9700AE8C8C8C8EAC8C8C8E82A6E6E6E4C0A0A0A2C4F4F71),
    .INIT_6D(256'hFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBD7B08E4C2C2C2A2A2C2C4E4E4E4E),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFD),
    .INIT_6F(256'hCED0D0D2F4F7FBFBFDFDFDFBFBFBFBFBFBFBFBFDFDFDFDFDFDFFFFFFFFFFFFFF),
    .INIT_70(256'hE8E80A4C4C4C08C6C60A0AC6A6A6A6A6A6A44E70E8E6E6E6E6E6E6E8E8E8E8C6),
    .INIT_71(256'hD7D7B5D5910A08B390B3912A4CB5B5B5D5D5D5D5D5D5D5F7F9D790B38E6E902A),
    .INIT_72(256'hB7D7D7FBFBF9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5D5D5D5D5),
    .INIT_73(256'hC8C8C8C8A8A8EC0EEACACAC8C8C8C8C8C8C8C8C8EA0C0CEACAA6A8EAEAEAEA4E),
    .INIT_74(256'h080808080808080808080808080808080808E8E8C8C8C8C8CACAC8C8C8C8C8C8),
    .INIT_75(256'h7171717171717171717171717171512E0C737371712CE8E80A08080808080808),
    .INIT_76(256'h2C93707093D7D7D7D9B50CE8C8C8C8C8E8082C6E4C2A0A2A4F71717171717171),
    .INIT_77(256'hFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF7B2904C2C2C2A2A2C0A0A0A0A0C),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_79(256'hCED0F0F2F4F9FBFBFBFDFDFDFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFFFFFFFFFF),
    .INIT_7A(256'hE82C4E0A08E8E6C60AE8C6A6C6C6A6A6A42A9008E6E6C6E6E6E6E8E8E8E6C6C6),
    .INIT_7B(256'hB592900AA4C6702C2C6E0AE8B3B5B5B5B5D5D7F9D7D7F9F992B2B06C8E4C08E8),
    .INIT_7C(256'h0C95D9D9F9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5D5D5D5D7),
    .INIT_7D(256'hC8C8C8C80C532EEACACACAC8C8A8A8C8C8C8C8CAEA0C0CEAC8C8A8A8C8EAEAEA),
    .INIT_7E(256'h0808080808080808080808080808080808E8C8C8C8C8C8C8C8C8C8C8C8C8C8C8),
    .INIT_7F(256'h71717171717171717171717171712F2F71717373710C2EE8E808080808080808),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1C0006003FFFFFFFCF9FFFFDC100F000FFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFF),
    .INITP_01(256'h1E7FFFE38000E000FFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFF3FFFFC0000),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFF80000200006001FFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFF8FFFE00000000004000FFFFFFC1CFFFF8F00008000),
    .INITP_04(256'hFFFFFFC7FFC000000000000003FFFFF070FFFE1E00000000FFFFFFFFFFFFFFFF),
    .INITP_05(256'h0000060000FFFFC041FFBC7800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h01FE70F000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF800000),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FF80000000000600007FFFF0),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFF1FE00000000080E00003FFFEE01F9C3C000000000),
    .INITP_09(256'hFFFFFFF1FC00000000020E00003FE39C0003078000000000FFFFFFFFFFFFFFFF),
    .INITP_0A(256'h00040E00003F037800061E0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h0000380000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC000000),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF800000000009E00003E05E0),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFC7000000000007E00007003800000200000000000),
    .INITP_0E(256'hFFFFFFFE0000000000007F0009E006000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_0F(256'h00003F001FE000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h2ED7D7D7D7D7D7D7D9D970E8E8C8E8E82C4C2A2A4E4F71717171717171717171),
    .INIT_01(256'hFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBF7B28E4C2C2C2C2C2C0C0A0A0A0A),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_03(256'hD0D0F0F2F6F9FBFBFBFDFDFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFFFFFFFFFF),
    .INIT_04(256'h4E4EE8E8E8E8E80AC6C6A6A6C6C6A6A42A900808E6C6C6E6E6E8E8E8E6C6C6C6),
    .INIT_05(256'h924CC6A60A4E08702AC6E8B3B5B5B5D7F9F9D792F9FBB590D38E8E8E0A08E808),
    .INIT_06(256'hEAEA4FD9F9F9F9F9F9F9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5D7D7D5B392),
    .INIT_07(256'hC8C8EC51310CECEAEACACACAA8A8A8A8C8A8C8CAEC0C0CEAC8C8C8C8A8C8CAEA),
    .INIT_08(256'h0808080808080808080808080808E8E8E8C8C8C8C8C8C8C8C8C8C8CACACAC8C8),
    .INIT_09(256'h717171717171717171717171714F2F71717173732C0C2C0CE8E8080808080808),
    .INIT_0A(256'h4EF9D9D7D7D7D7D7D7D9D70AE80A2C2A2A4C6F71717171717171717171717171),
    .INIT_0B(256'hFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD7B26E4C2C2C2C2C2C0C0A0A0A0C),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_0D(256'hD0D0F2F4F7FBFBFBFBFDFDFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFFFFFFFFFF),
    .INIT_0E(256'h4CE8E8E8E8E8E8C6C6A6A6A6A6A6C6E6B30808E8C6C6C6E6E6E8E6C6C6C6C6C6),
    .INIT_0F(256'hE8A6C82C0A2C4EE8C60AB5B5B5D5F9F9D7904ED7D79290B26E6E2AE8E8E84A6E),
    .INIT_10(256'hEAEAEA0C93D9F9F9F9F9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D79070904E),
    .INIT_11(256'hCAEC0EECECECECECEACACACAC8C8C8A8C8A8C8CAEC0C0CEAC8A8A8A8A8A8A8CA),
    .INIT_12(256'h08080808080808080808080808E8E8C8C8A8C8C8C8C8CAC8C8C8CACACACAC8C8),
    .INIT_13(256'h717171717171717173737373512D71737373932E0C0C0C2CEAE8E80808080808),
    .INIT_14(256'h73F9D9D7D7D7D7D7D7D9D7B54C2C2C6F71717171717171717171717171717171),
    .INIT_15(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD5B06E4C2C2C2C2C2C2C0A0A0A0C),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFB),
    .INIT_17(256'hD0D0F2F6F9FBFBF9FBFDFDFDFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFFFFFFFF),
    .INIT_18(256'hE8E8E8E8E8E8C8C8C6C6C6C6C6C6A6C62CE8E8C6C6C6C6E6E6E6C6C6C6C6C6C6),
    .INIT_19(256'hA6C8EA2C700AC6C62CB5D5D7F9F9D5904C70D7B270B06E902AC6C8C80A6E6E4C),
    .INIT_1A(256'hCAEAEAEA0A51D9D9F9F9D9D9F9D7D7D7D7D7D7D7D7D7D7D7D7B592B2700AE8A6),
    .INIT_1B(256'hECECEAEAECECECECECECCACAC8C8A8A8C8C8C8CAEC0CECCAA8A6A8A8A8A8A8CA),
    .INIT_1C(256'h0808080808080808080808E8E8C8C8C8A8A8C8C8C8C8C8C8C8CACACACACACACA),
    .INIT_1D(256'h7373939393937373939393712F7193939393710C0C0C0C2C2CE8E8E808080808),
    .INIT_1E(256'hB5D9D9D7D7D9D7D7D7D7922C4E71717171717171717171717171717171717173),
    .INIT_1F(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D5B06E4C2C2C2C2C2C0C0A0A0A2C),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFB),
    .INIT_21(256'hD0F2F2F7F9FBF9F9FBFDFDFDFDFBFBFBFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFF),
    .INIT_22(256'hE8E8E8E8C8C6C8C8C6E8C6A6A6A6A6E8E8E6C6C6C6C6E6E6C6C6C6C6C6C6C6C6),
    .INIT_23(256'hC80A734EC8C8C8C8B3D5F7F9D5926E4C90924E4C8E4C4EE8C6A6C62C6E4E0AE8),
    .INIT_24(256'hCACACACAEAEA0CB7FBF9D9D7F9F7D7D7D7D7D7D7D7D7D7B39290B32EC6A6A8C8),
    .INIT_25(256'hEACACACACACAEAECECECEACACACAA8A8C8C8A8C8EAEAEAEAC8C8C8A8A8A8A8C8),
    .INIT_26(256'h08080808080808080808E8C8C8C8C8A8A8A8C8C8C8CACACACACACACACACAEAEC),
    .INIT_27(256'h93939393939393939393934F4F95959393950C0C0C0C0C0C2C0CC8E8E8080808),
    .INIT_28(256'hD7D9D9D7D7D7D7D7B54E6E917171717171717171717171717171717373739393),
    .INIT_29(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D5B06E4C2C2C2C2C2C0C0A0A0C2C),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_2B(256'hD0D2F4F7FBFBD7F9FDFDFDFDFDFDFBFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_2C(256'hE8E8E8C6C6E8C8E8E8C6C6A6A6A6C6C6C6C6C6C6C6C6E8C6C6C6C6C6C6C6C6C6),
    .INIT_2D(256'hC850EAC6C8C8C870D7D7B5B26E2A4C6E2CE82A4C4C08A6A6A60A706C2AE8E8E8),
    .INIT_2E(256'hA8C8CACAEAEAEAEA75DBD9B5D7D7D7D7D7D7D7F9F7B59292B26EE8C6C8C8C8C8),
    .INIT_2F(256'hCACACACACACACAEAEAECECECCACAC8C8A8A8A8C8EA0C0CEACAC8CACAA8A8A8A8),
    .INIT_30(256'h080808080808080808E8C8C8A8C8C8C8C8C8CACACACACACACACACACACAEAECCA),
    .INIT_31(256'h93959593939595959593712F93959595B54F0C0C0C0C0C0C0C0C0AE8E8080808),
    .INIT_32(256'hD9D9D9D9D7D7D7926E9371717171717171717171717171737393939393939393),
    .INIT_33(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D590906E2C2C2C2C2C0C0C0C2C4E),
    .INIT_34(256'hFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFB),
    .INIT_35(256'hD0D2F6F9FBF9D7F9FDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_36(256'hE8C8C6C6E8E8E8E8C6E8E8A6A6C6C6C6C6C6C6C6C6E8C6C6C6C6C6C6C6C6C6A6),
    .INIT_37(256'hC8C8C8C8C8C8C873B3B3B34E0A4E2CE6E82C0A0AE8A6A6EA6E6E2C0AE8E8E8E8),
    .INIT_38(256'hA8C8C8CACACACAEAEA30B7D9D7D7D7D9F9F9D7B5B390B3922C080A0AE8E8EAEA),
    .INIT_39(256'hCACACACACACACACAEAECECECEAECCACAA8A8C8CAEC0C0CEACAC8CACAC8C8A8A8),
    .INIT_3A(256'h080808080808080808E8C8A8A8A8C8C8C8CACACACACACACACACACACAECECCACA),
    .INIT_3B(256'h959595959595959595932F7195959595950C0C0C0C0C0C0C0C0C0CE8E8E80808),
    .INIT_3C(256'hF9D9D9D9D7D77093937171717171717171717171737393939393939595959595),
    .INIT_3D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D590904E4C4E4C2C2C0C0C0C2C70),
    .INIT_3E(256'hFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFB),
    .INIT_3F(256'hD0F4F7F9FBD7D7FBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_40(256'hC8C6C8E8E8E8E8E8E8C6A4A4A6C8C6C6C6C6C6C6E8E8C6A6C6C6C6C6A6C6C6A6),
    .INIT_41(256'hC8C8C8C8A8A8A60C4E2A082C2CE8C60A0A0AE8C6A6A64E6E4C2AE8E8E8E8E8E8),
    .INIT_42(256'hA8C8C8C8CACACAEAEAEA0CB7F9F7D7D7B592D5D5700A0A0A4E902CC60A2C2CC8),
    .INIT_43(256'hCACACACACACACACACACAEAEC0EECA8ECCACACAEA0C0C0CEACACACACACACAC8A8),
    .INIT_44(256'h08080808080808E8E8C8C8C8C8C8C8C8CACACACACACACAC8CAC8C8EAECCACACA),
    .INIT_45(256'h9595959595B59595B5514FB5B7B5B7B72E0C0C0C0C0C0C0C0C0C0C0AC8E8E808),
    .INIT_46(256'hF9D9D9D9D770B593917171717171717371717373939393939395959595959595),
    .INIT_47(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9B2906E4C4C4E4E2C2C2C2C2C2C93),
    .INIT_48(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFB),
    .INIT_49(256'hD0F4F9FBF9D7F9FBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_4A(256'hC6C8C8E8E8E8E8C8A6A6A4A4C6C6C6C6C6C6C6C6E8C6A4A6A6A6A6A6A6A6C6A6),
    .INIT_4B(256'hA8A8A8A6A6A6A6A6A6A6EAEAC6C80A08E8C6C6A6E86E4C2C08C6C6C8C8C8C8C8),
    .INIT_4C(256'hC8C8C8C8C8C8CACACAEA0C2E7090B2B3922C2CEAC8E80A706EEAEA70704EE8C8),
    .INIT_4D(256'hCACACACACACACACACACAECECA8EA31ECCACACAEA0C0C0CEAC8C8C8CACACACAC8),
    .INIT_4E(256'h080808080808E8E8C8C8C8C8C8C8C8C8C8C8C8C8C8CAC8C8C8A8EACACACACACA),
    .INIT_4F(256'hB5B5B5B5B7B7B7B7932F95B7B7B7B7730C0C0C0C0C0C0C0C0C0C0C0CEAE8E808),
    .INIT_50(256'hF9F9D9D7B5B5939393737373737373737393939393939595959595959595B5B5),
    .INIT_51(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7B2704E4E4E4E4E2E2C2C2C2C2CB5),
    .INIT_52(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_53(256'hD2F6F9FBD9D7F9FBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_54(256'hC8C8C8C8C8C8C8A6A4A4A4C6E8C6C6C6C6C6C6E8C6A4A4C6A6A6A6A6C6C6C6A6),
    .INIT_55(256'hA8A8A8A6A6A6A6A6A686A6A6C80A0AC6A6A6A60A4C2A0AE8C6C8A6C8C8C8C6C8),
    .INIT_56(256'hC8C8C8C8C8C8C8CAEAEA0C0C2C2C6E4EEAEAC8C8E8EA2C0AE85091700AC8A8A8),
    .INIT_57(256'hCACAC8CACACACACACAEACAA8EA0CECECECCACAEA0C0C0CEAC8C8C8CACACACAC8),
    .INIT_58(256'h080808080808E8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A8A8CACAC8CACACACA),
    .INIT_59(256'hB7B7B7B7B7D7D7D95171D7D9D9D9D90E0C0C0C0C0C0C0C0C0C0C0C0C0CE8E8E8),
    .INIT_5A(256'hF9D9D9B5B593939393939393939393939393939393959595959595B5B5B5B5B7),
    .INIT_5B(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7B26E4E4E4E4E4E2C2C2C2C2C4ED7),
    .INIT_5C(256'hFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_5D(256'hD2F4F9F9D9D7F9FBFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_5E(256'hC8C8C8C8C8C6A6A4A4A4C6E8C6C6C6C6C6C6E8C8C6A4C6C6A6A6A6A6C6C6C6A6),
    .INIT_5F(256'hC8A8A8A6A6A6A6A6868686A6C8E8A68686A62C2C0AC6A6C6C8A6A6A6C6C8C8C8),
    .INIT_60(256'hCAC8C8C8C8C8EAEAEAEA0A0A0A0A0AE8E8C8CAEAEA0AE80A704E0AC8A8A8A8C8),
    .INIT_61(256'hC8C8CAC8C8CACACACAA8A8CACACAECEC0CECEC0C0C0C0CEAC8A8C8C8C8CACAC8),
    .INIT_62(256'h0808080808E8C8C8C8C8C8A8C8C8C8C8C8C8A8A8A8A8A8A8CACAA8A8C8C8C8CA),
    .INIT_63(256'hD7D9D9D9D9D9FBB92FB7FBFBFBFD950C0C0C0C0C0C0C0C0C0C0C0C0C0C0AE8E8),
    .INIT_64(256'hF9F9D7B59393939393939393D995939393939595959595B5B5B5B5B7B7B7B7B7),
    .INIT_65(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D5B26E4E4E4E4E4E2C2C2C2C4E70F9),
    .INIT_66(256'hFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFDFDFD),
    .INIT_67(256'hD2F4F9F9D9D9F9FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_68(256'hC8C8C8C8C6A6A6C6A6A6C8C6C6C6C6C6C8C6C6C6A6A6A6A6A6A6A6A6C6C6C6A6),
    .INIT_69(256'hA8A8A8A8A8A8A6A68686A6A686868686A8EA0AE8A6A6A6C8A6A6A6A6A6C8C8C8),
    .INIT_6A(256'hC8C8C8C8EAEAECEAEA0A0A0AEAEAEAC8C8EAEAEAEAC80A4E2CC8C8A8A8C8C8C8),
    .INIT_6B(256'hC8C8CACAC8C8C8C8A8C8CACACACACAECEC0E0E0C2E2E0CECCAC8C8C8C8CACAC8),
    .INIT_6C(256'hE8080808E8C8C8CAC8C8A8A8C8C8A8A8A8C8CACACACACACACAA8A8A8A8A8A8C8),
    .INIT_6D(256'hD9D9D9FBFBFBFD5373FBFBFDFDFD2E0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEAE8),
    .INIT_6E(256'hF9D9B7939393939393939393B5959393959595959595B5B5B7B7B7B7D7D9D9D9),
    .INIT_6F(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D5906E4E4E4E4E4E4E2C2C4E4E93F9),
    .INIT_70(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFDFDFDFB),
    .INIT_71(256'hD2F4F9F9F9D9F9FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_72(256'hC8C8C8C6C8C6A6A6A4E8C6C6C6C6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6C6C6A6),
    .INIT_73(256'hA8A8A8A8A8A8A6A6A6A6A6868686A6A6C8C8C6A686A6C8A6868686A6A6C8C8C8),
    .INIT_74(256'hC8C8CAEC0CEAEA0C0A0C0CEAEAEAC8CAEAEAEAEAEA0C0CEAC8A8C8C8C8C8C8A8),
    .INIT_75(256'hA8C8CACAC8A8A8A8C8CACACACACACAEAEC0C0E2E2E2E2E0CCACACACACACAC8C8),
    .INIT_76(256'hE8E8E8E8C8C8C8C8C8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8CAA8A8A8A8A8A8),
    .INIT_77(256'hFBFBFBFBFBFDDB2EB7FBFBFDFDB90C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEA),
    .INIT_78(256'hD9D795939393939393939395B595959595B5B5B5B5B7B7B7B7D7D9D9D9D9D9D9),
    .INIT_79(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7D4906E4E4E4E4E4E4E4E4E4E4EB5F9),
    .INIT_7A(256'hFDFDFDFDFDFDFDFDFDFFFDFDFBFBFBFBFBFBFDFBFBFBFBFBFBF9F9FBFDFDFDFB),
    .INIT_7B(256'hD2F5F9F9F9F9F9FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFD),
    .INIT_7C(256'hA6A6C6C8A6A684A6C8C8C6C6C6A6A6C6C6C6A6A6A6A6A6A4A4A4A4A6A6A6C6A6),
    .INIT_7D(256'hC8A8A8A8A8A8A8A6A8A686868686A8A8A8A68686A8A88686868686A6A6A6A6A6),
    .INIT_7E(256'hEAEAEC0C0C0C0C0C0C0A0AEAEAEAEAEAEAEACAEAEAEAC8C8C8C8CACAC8C8A8A8),
    .INIT_7F(256'hC8C8CAC8C8A8A8C8CACACACACACACACAEAEC0C2E50502E0CEACACACACAC8C8CA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000001F81FFC00000),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFF0000000000001F87FF8000000000000000000000),
    .INITP_03(256'hFFFFFFFF0000000000000FFFFE0000000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_04(256'h00000FFFF00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFE0000000000000FFFE0000000),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFC0000000000001FFFC00000000000000000000000),
    .INITP_08(256'hFFFFFFFC0000000000003FFF000000000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_09(256'h00007FF8000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF),
    .INITP_0A(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEAE8E8C8C8C8C8C8C8C8C8C8A8A8A8A8A8A8A8A8A8C8CAA8A8A8C8A8A8A8A8C8),
    .INIT_01(256'hD9F9FBFBFBFD7551D9D9D9FBFD510C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_02(256'hD7B593939373939393939595B59595B5B5B5B5B7B7B7D7D7D9D9D9D9D9F9FBFB),
    .INIT_03(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD7B4906E4E4E6E4E4E4E4E4E4E4EB7D9),
    .INIT_04(256'hFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBD9D7D9FBFDFDFBFB),
    .INIT_05(256'hB2F5F9F9F9F9F9FBFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hA6A6A6A6A6A6A6C8E8C6C6A6A6A6A6C6C6A6A6A6A6A4A4A4A4A4A4A6A6A6A6A6),
    .INIT_07(256'hC8A8A8A8A8A8A8A6A6868686A6A8A888868686A6A68686868686A6A6A6A6A6A6),
    .INIT_08(256'h0C0C0C0C0C0C0C0C0C0AEAEAEAEAEAEACACAEAEAEAC8C8CACACACAC8C8C8C8C8),
    .INIT_09(256'hA8A8A8C8A8A8C8CACACACACACACACACACAECEC0E3051502E0CEACACACAC8EA0C),
    .INIT_0A(256'hEAEAC8C8C8C8C8C8C8C8C8C8C8C8A8A8A8A8C8A8A8CAA8A8A8C8A8A8A8A8A8C8),
    .INIT_0B(256'hD9D9D9D9FBFB3195D9D9D9DBD90C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_0C(256'hB7939393939393939395959595B5B5B7B7B7B7B7B7D7D9D9D9D9D9D9D9D9D9D9),
    .INIT_0D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D7B2706E6E6E4E4E4E4E4E4E4E4ED9D9),
    .INIT_0E(256'hFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9B7B7D9FBFBFBFBFB),
    .INIT_0F(256'hB0D4F7F9FBFBF9FBFDFDFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hA6A6A6A6A6C6C8C8C6C6A6A6A6A6C6C6A6A4A6A6A6A4A4A4A4A4A4A4A6A6A6A6),
    .INIT_11(256'hCAC8C8A8A8A8A8A8A8A8A8A8A8A8A6A6868686A68686868686A6A6A686A6A6A6),
    .INIT_12(256'h0C0C0C0C0C0C0C0C0AEAEAEAEAEAEACAEAECEACAC8CACACACACAC8C8C8C8C8CA),
    .INIT_13(256'hC8A8C8A8A8A8C8CACACACACACACACACACAEAEC0C2E50512E0CECEAEAEC0C0C0C),
    .INIT_14(256'hEAEAC8C8C8C8C8C8C8C8C8C8C8C8A8A8A8A8A8A8CACAA8A8A8A8A8A8A8A8A8A8),
    .INIT_15(256'hD9D9D9D9D9B72FB7B7B7B7D9730C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_16(256'h959393939393939395959595B5B5B7B7B7D7D7D7D9D9D9D9D9D9D9D9D9D9D9D9),
    .INIT_17(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D5B2706E4E6E4E4E4E4E4E4E4E71D9B7),
    .INIT_18(256'hFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBD9B7B7F9FBFBFBFBFB),
    .INIT_19(256'hB0D4D7F9FBFBF9FBFDFDFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hA6A6A6A6C6C6C8C6C6A6A6A6A6C6A6A6A6A6A6A6A6A4A4A4A4A4A4A4A6A6A6A6),
    .INIT_1B(256'hC8C8C8A8A8A8A8A8A8CACAC8A88686A6A6A6A88686868686A6A68686A6C8C8A6),
    .INIT_1C(256'h0C0C0C0C0C0C0AEAEAEAEAEAEACACAEAECEACACACAEACACAC8CAC8C8C8CAEAEA),
    .INIT_1D(256'hCACAC8A8A8C8C8CACACACACACACACACACACAEAEC2E2E50502E0C0C0C0C0C0C0C),
    .INIT_1E(256'hEAC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A8A8A8CAA8A8A8A8A8A8C8C8A8A8C8),
    .INIT_1F(256'hB7B7B7B7D97351B795B7B7D92E0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_20(256'h939393939395959595B5B5B7B7B7D7D7D7D7D7D7D7D9B7D7B7B7B7B7B7B7B7B7),
    .INIT_21(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F7D4906E6E6E6E4E4E4E4E4E4E4EB7D795),
    .INIT_22(256'hFDFDFDFDFDFBFBFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBB7B7D9FBFBFBFBFBFB),
    .INIT_23(256'hB0D2D5F9FBFBFBFBFDFDFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hA8A6A6C6C6C6C6C6A6A4A6A6A6A6A6A4A4A4A4A6A4A4A4A6A6A6A4A4A6A6A6A6),
    .INIT_25(256'hEAEAC8A8A8A8A8C8CACACAC8A686A6A6A6A6A68686A6A6A6A686A6C8C8A6A6A8),
    .INIT_26(256'h0C0C0C0CEAEAEAEAEAEAEAEACACAEAEAEACAEAEAEACACACACACACACAEAEACACA),
    .INIT_27(256'hA8A8A8A8A8A8C8C8C8C8C8C8C8CACACACACACAEC0C2E502E2E0C0C0C0C0C0C0C),
    .INIT_28(256'hCAC8C8C8C8C8C8C8C8C8C8C8A8A8A8A8A8A8A8CAA8A8A8A8A8A8A8A8A8CAA8A8),
    .INIT_29(256'h95959595B72F5195939595950C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEC),
    .INIT_2A(256'h959393939595B5B5B5B5B7B5714E2C4E93B7B7B7B7B7B7B7B5B5B59595B59595),
    .INIT_2B(256'hFBFBFBFBFDFBFBFBFBFBFBFBFBFBD7D7B2906E6E4E4E4E4E4E2E2E4EB5D9B595),
    .INIT_2C(256'hFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D7D7F9FBFBFBFBFBFB),
    .INIT_2D(256'h90D2D4D7F9F9FBF9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD),
    .INIT_2E(256'hA6A6A6C6C6C6A6A6A4A4A6A6A6A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4A6A6A6A4),
    .INIT_2F(256'hCAC8A8A8A8A8A8C8CACAC8C8A8A6A6868686A6A6A6A6A68686A6C8A6A6A6C8C8),
    .INIT_30(256'h0C0C0CEAEAEAEAEAEAEAEAEAEAEAEACACAEAEAEACACACACACACACACACACAEAEA),
    .INIT_31(256'hA8A8A8A8A8A8C8C8C8C8C8C8C8CACACACACACAEA0C2E4E4E2E0C0C0C0C0C0C0C),
    .INIT_32(256'hC8C8C8C8A8A8C8C8C8A8C8C8A8A8A8A8A8A8A8CAA8A8A8A8A8A8A8A8A8A8CAA8),
    .INIT_33(256'h95959393932C5173739395510C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEA),
    .INIT_34(256'h9595B5B59595B5B5B795514C4C4C4C2CE84E9595959595959595959595959595),
    .INIT_35(256'hFBFBFBFBFDFBFBFBFBF9F9F9D7D5D7D4B2706E6E4E4E4E4E4E4E2E70F9D79595),
    .INIT_36(256'hFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD9D9D9FBFBFBFBFBFBFB),
    .INIT_37(256'h90B2D4D7D9F9F9F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD),
    .INIT_38(256'hA6A6A6A6C6A6A6A6A6A6A6A6A4848484A4A4A4A6A6A4A4A6A6A4A4A4A6A6A484),
    .INIT_39(256'hC8C8C8A8A8A8A8C8CACAC8C8A8A6868686A6A6A6A68686A6A8A8A6A6A6C8A6A6),
    .INIT_3A(256'h0C0CECEAEAEAEAEAEAEAEAEAEAEACACAEAEAEACACACACACACACACACACACACACA),
    .INIT_3B(256'hCAA8A8A8A8A8C8C8C8C8C8C8C8CACACACACACA0C2E50504E2E0C0C0C0C0C0C0C),
    .INIT_3C(256'hC8C8C8C8A8A8C8C8C8C8C8C8A8A8A8A8A8A8CAA8C8A8A8A8A8A8A8A8A8A8A8CA),
    .INIT_3D(256'h73737373510C71737373732E0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEACA),
    .INIT_3E(256'h95959595959595B5952E4C6E6C6C6C6C4C082E95959393937373737373737373),
    .INIT_3F(256'hFBFBFBFBFDFBFBFBF9D5F7F7F7D4D4B0906E6E6E6E4E4E4E4E4E4ED9D9B59595),
    .INIT_40(256'hFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFB),
    .INIT_41(256'h8ED2D4D7D7F9F9F9FBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD),
    .INIT_42(256'hA6A6A6A6A6A6A6A6A6A6A6A4A4848484A4A4A4A4A4A4A4A4A4A4A4A4A4A48484),
    .INIT_43(256'hEACAC8A8A8A8A8A8C8C8C8A8A68686A6A6A6A6868686A6A8A6A6A6A6A6A6A6A6),
    .INIT_44(256'hEAEAEAEAEAEAEAEAEAEAEAEAEACACACACAEAEAEACACACACACACACACACACACAEA),
    .INIT_45(256'hC8CAA8A8A8A8C8C8C8C8C8C8CACACACACAEA0C2E4E4E4E4E2C0C2C2C2C0C0C0A),
    .INIT_46(256'hA8A8A8A8A8A8A8A8A8A8C8C8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_47(256'h515151512E0C51515171730C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEAC8),
    .INIT_48(256'h95959595959595954C4C6C6C6C6C6C6C4C4CE873737373737373735351715151),
    .INIT_49(256'hFBFBFBFBFBFBFDFBB4D2D2F7F6D2B2B2906E6E6E4E4E4E4E4E4EB5D9B7959595),
    .INIT_4A(256'hFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_4B(256'h8EB0D2D4D7D7F9F9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD),
    .INIT_4C(256'h86A6A6A6A6A6A6A6A6A6A4A48484848484848484848484848484848484848484),
    .INIT_4D(256'hCACACAA8A8A8A8A8A8A8A8A8868688A886868686A6A8A8A686A6A6A6A6A6A686),
    .INIT_4E(256'hEAEACACACACACACAEAECEAEAEAEAEAEACACACACACACACACACACACACACACACACA),
    .INIT_4F(256'hA8A8A8A8A8A8A8A8A8A8A8A8AACACACAEA0C2C0C2C2E2E2E2E2C2C0C0CECEAEA),
    .INIT_50(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8AAA8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_51(256'h515151512E2E51515151510C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CECECECA8),
    .INIT_52(256'h959595959595954E4C6C6C4C4C4C4C4C4C4C2C0C737373515151515151515151),
    .INIT_53(256'hFBFBFBFBFBFBFDD7B2B2B2B4D4D4B2906E4E4E4E4E4E4E2E2E71D9D795939595),
    .INIT_54(256'hFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_55(256'h6E90B2B4D5D7D7D9D9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD),
    .INIT_56(256'h4264626262424242624242424242424242424242424242424242424242424242),
    .INIT_57(256'h6464646444444444444444444444444444444244644444444444424244444242),
    .INIT_58(256'h6464646464646464646464646466646464646464646464646464646464646464),
    .INIT_59(256'h6464646464646464646464646464646486868686868686868686868664648484),
    .INIT_5A(256'h6464646464646464646464646464646464646464646464646464646464646464),
    .INIT_5B(256'h8888A8A68686A8A6A6A886868686868686868686868686868686868484846464),
    .INIT_5C(256'hC8C8C8A8A8A8A886A6A6A48484A6A6A4A4A4A664A8A8A8A8A6A6A6A886A6A686),
    .INIT_5D(256'hECECECECECECECC8C8C8C8C8C8C8C8C6A6A6A6A6A6A6868686CACACAA8A8A8C8),
    .INIT_5E(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_5F(256'hA6C6C8C8C8CACACACAECECEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECECECEC),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFE0000000000000001F801FFDFFF07F003FFFFF0000000000),
    .INIT_01(256'hE0000000000000001E001FFFFFFE7C003FFFFF80000000000031F780000003FF),
    .INIT_02(256'h0FE01FFFFFFFEC207FFFFF80000000000011EE18000007FFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h7FFFFFC0000000000031EC1F000003FFFFFFFFFFFFFFFFFFE000000000000000),
    .INIT_04(256'h0033D81F000101FFFFFFFFFFFFFFFFFFE00000000000000007FE0FFF8FEFEF20),
    .INIT_05(256'hFFFFFFFFFFFFFFFFE00000000000000007FFC7FF0FE90FCFFFFFFFE000000000),
    .INIT_06(256'hC00000000000000007FFFFFF83A3F047FFFFFFE0000000000033D82E000003FF),
    .INIT_07(256'h07FFFFBFFBEFFE0FFFFFFFE0000000000073DE22000003FFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFE0000000000073BF90000000FFFFFFFFFFFFFFFFFFC000000000000000),
    .INIT_09(256'h00739F80000000FFFFFFFFFFFFFFFFFF800000000000000007FFFFFFFFFC079F),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFC0000000000000000FFFFFF7FF3000FFFFFFFFE000000000),
    .INIT_0B(256'hC0000000000000000FFFFFF3F8800039FFFFFFF000000000007383E0000001FF),
    .INIT_0C(256'h1FFFFFFFC700000FFFFFFE780000000000E7C1C0000000FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFE780000000039CFE1C00000007FFFFFFFFFFFFFFFFFC000000000000000),
    .INIT_0E(256'h7FCFFDC00000007FFFFFFFFFFFFFFFFFC0000000000000001FFFFFFE3C000003),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFE0000000000000001FFFFFF9C0000001FFFFFE7800000000),
    .INIT_10(256'hE0000000000000001FFFFFCF000000007FFFFE78000000007F9FFDC00000007F),
    .INIT_11(256'h0FFFFF38000000001FFFFFF8000000007F9FFDC00000007FFFFFFFFFFFFFFFFF),
    .INIT_12(256'h1FFFFFF8000000007F9FF9C0000000FFFFFFFFFFFFFFFFFFE000000000000000),
    .INIT_13(256'h7F3FF9C0000000FFFFFFFFFFFFFFFFFFE0000000000000000FFFFDE000000000),
    .INIT_14(256'hFFFFFFFFFFFFFFFFF00000000000000007FFFF00000000001FFFFFF800000000),
    .INIT_15(256'h900000000000000007FFBC00000000003FFFFFFC000000007C3FF9E0000000FF),
    .INIT_16(256'h03FDE000000000007FFFFFFC00000000F83FF9E00000007FFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFC00000000F87FF9F80000007FFFFFFFFFFFFFFFFF8000000000000000),
    .INIT_18(256'h70FFF9F80000007FFFFFFFFFFFFFFFFF800000000000000003EF800000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFF8000000000000000033C000000000007FFFFFFFC00000000),
    .INIT_1A(256'hC00000000000000000E0000000000007FFFFFFFC0000000070FFF9FB0000007F),
    .INIT_1B(256'h0300000000000007FFFFFFF80000000021FFF9FF0000807FFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFF00000000033FFF98F0000007FFFFFFFFFFFFFFFFE0000000000000000),
    .INIT_1D(256'h17FFF8230000007FFFFFFFFFFFFFFFFC00000000000000000C0000000000003F),
    .INIT_1E(256'hFFFFFFFFFFFFFFFC0000000000000000100000000000007FFFFFFFE000000000),
    .INIT_1F(256'h000000000000000040000000000003FFFFFFFEE0000000001BFFF87B0000007F),
    .INIT_20(256'h80000000000003FFFFFFFCC0000000000BFFF0798000017FFFFFFFFFFFFFFFFC),
    .INIT_21(256'h7FFFFFC0000000000DFFF03D8000017FFFFFFFFFFFFFFFF80000000000000000),
    .INIT_22(256'h0FFFF03D8000007FFFFFFFFFFFFFFFF8000000000000000200000000000007FF),
    .INIT_23(256'hFFFFFFFFFFFFFFF8000000000000000C0000000000000FFFFFFAFFC000000000),
    .INIT_24(256'h00000000000000780000000000000FFFFF787F800000000006FFE03D0000003F),
    .INIT_25(256'h0000000000001FFF9F1E4F0000000000037FE43B0000023FFFFFFFFFFFFFFFF8),
    .INIT_26(256'hE70F82000000000001FFEC1A0000003FFFFFFFFFFFFFFFF000000000000001F0),
    .INIT_27(256'h01FFEC040000001FFFFFFFFFFFFFFFE000000000002007E00000000000003FFF),
    .INIT_28(256'hFFFFFFFFFFFFFFC00000000000001FE00000000000003FFFF1E3C20000000000),
    .INIT_29(256'h0000000000083FE0000000000000FFFFF8F1E000000000000077EC2C0000041F),
    .INIT_2A(256'h000000000000FFFFBE70FC0000000000007BCC380000001FFFFFFFFFFFFFFF80),
    .INIT_2B(256'hCFFC1C0000000000017F047000000807FFFFFFFFFFFFFF800000000000187FF0),
    .INIT_2C(256'h0BFFC3E000000003FFE3FFFFFFFFFF00000000000271FFE0000000000000FFFF),
    .INIT_2D(256'hFFEE7FFFFFFFFC00000000003FE3FFC0000000000001FFFFE7FC0F4000000000),
    .INIT_2E(256'h00000000FFC7FFE0000000000003FFFFF9FC03A0000000003FFF7FC000001001),
    .INIT_2F(256'h000000000003FFFFFFFC01F0000000001FFE1FC000001000FFE9DFFFFFFFC000),
    .INIT_30(256'hFFBE0078000000000FFE000000002000F3F057FFFFFFC000000000007F8FFFE0),
    .INIT_31(256'h07FC000000002000707425FFFFFE0000000000003F1FFFC0000000000007FDFF),
    .INIT_32(256'hF00019667E02000000003C000E3FFF00000000000006FDFFFFFF001C00000000),
    .INIT_33(256'h10007F000E7FFF00000000000007F9FFFFFFC4070000000003F8000000004000),
    .INIT_34(256'h000000000007FFFFFFFFF0038000000001F8000000004000D0000C8000000000),
    .INIT_35(256'hFFFFF803E00000000078000000004000D002062800000000FB81FFC000FFFE00),
    .INIT_36(256'h003C000000004000D000033000000003FFFFFFF801FFFC00000000000007FFFF),
    .INIT_37(256'h900001A800000007FFFFFFFF03FFF40000000000000FFFFFFFFFFE01F0000000),
    .INIT_38(256'hFFFFFFFF077FE00000000000001FFFFFFFFFFF807C000000000E000000004000),
    .INIT_39(256'h00000000003FFFFFFFFFFFC01E0000000000000000004000A000019400002007),
    .INIT_3A(256'hFFFFFFFC03C000000000000000004001A00100DA00006007FFFFFFFF8C1F0000),
    .INIT_3B(256'h0000000000000001A00100580000C037FFFFFFFF1001000000000000003FFFFF),
    .INIT_3C(256'h2001006D0001807FFFFFFFFE6000000000000000007FFFFFFFFFFFFC01F00000),
    .INIT_3D(256'hFFFFFFF8C000000000000000007FFFFFFFFFFFFE00780000C000000000000001),
    .INIT_3E(256'h0000000000FFFFFFFFFFFFFF021C000078000000000000016801002E0001007F),
    .INIT_3F(256'hFFFFFFFBC30D00007C000000000080016801E02F8003007FFFFFFFF300000000),
    .INIT_40(256'h3E000000000080036806F00F0002007FFFFFFFCE000000000000000000FFFFFF),
    .INIT_41(256'h781CF01FC00600FFFFFFFF98000000000000000001FFFFFFFFFFFFF9E3028000),
    .INIT_42(256'hFFFFFF70000000000000000001FFFFFFFFFFFFFF714140001400000000008003),
    .INIT_43(256'h0000000003FFFFFFFFFFFFFFBEE0200006000000000000027839F81FC00400FF),
    .INIT_44(256'hFFFFFFFF9FE0180000000000000000026873FC00000C43FFFFFFFCC000000000),
    .INIT_45(256'h000000000001800268E7FE00000C03FFFFFFF980000000000000000007FFFFFF),
    .INIT_46(256'h61DFFF08000803FFFFFFE30000000000000000000FFFFFFFFFFFFFFFCFC01400),
    .INIT_47(256'hFFFFCC0000000000000000001FFFFFFFFFFFFFFFE3E00B000000000000018002),
    .INIT_48(256'h000000001FFFFFFFFFFFFFFFFFFC0240000000000000000269BFFF04200803FF),
    .INIT_49(256'hFFFFFFFFFF7E009000000000000000006D7FFF87F3D907FFFFFF180000000000),
    .INIT_4A(256'h00000000000200006AFFF381EBD1FFFFFFFE300000000000000000003FFFFFFF),
    .INIT_4B(256'h69FFE1801BD1FFFFFFF8E00000000000000000003FFFFFFFFFFFFFFFFFFF0016),
    .INIT_4C(256'hFFE1C00000000000000000003FFFFFFFFFFFFFFFFFFF800D1000000000020000),
    .INIT_4D(256'h000000003FFFFFFFFFFFFFFFFFFFC007060000000000000064FFC0801FD1FFFF),
    .INIT_4E(256'hFFFFFFFFFFFFF0010900000000040000607F8EC01FEFDFFFFF87C00000000000),
    .INIT_4F(256'h07000000000400002C3F3F801FE7FFFFF81F800000000000000000007FFFFFFF),
    .INIT_50(256'h281E3F401DA7FFFFE0FF80000000000000000000FFFFFFFFFFFFFFFFFFFFFC00),
    .INIT_51(256'h83FF00000000000000000000FFFFFFFFFFFFFFFFFFFFDF000000000000080000),
    .INIT_52(256'h00000001FFFFFFFFFFFFFFFFFFFFFF800000000000080000301E7F401FA7FFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFE20000000000180000310E3F4007C7FFFE1E00000000000000),
    .INIT_54(256'h00000000001000003F8F3F4007A7FFF8600000000000000000000003FFFFFFFF),
    .INIT_55(256'h3DDD1FC0076FFFE3800000000000380000000003FFFFFFFFFFFFFFFFFFFFFFFA),
    .INIT_56(256'h000000000003FC0000000007FFFFFFFFFFFFFFFFFFFFFFFC0000000000300008),
    .INIT_57(256'h0000000FFFFFFFFFFFFFFFFFFFFFFFCE0000000000200008BC708FC003EFFF8C),
    .INIT_58(256'hFFFFFFFFFFFFFFFF0000000000200008BE3827C023AFFF3000000000000FFF00),
    .INIT_59(256'h0000000000200008BE1E11C023AFFCC000000000003FFF000000000FFFFFFFFF),
    .INIT_5A(256'h7A0FC800233FE7000000000001FFFF800000001FFFFFFFFFFFFFFFFFFFFFFFFB),
    .INIT_5B(256'h0000000007FFFFC00000001FFFFFFFFFFFFFFFFFFFFFFFFE0000000000600008),
    .INIT_5C(256'h0000003FFFFFFFFFFFFFFFFFFFFFFFFF0000000000EA0008380FFE00267F9C00),
    .INIT_5D(256'hFFFFFFFFFFFFFFFF0000000000EF80083D073C803C7E700000000000FFFFFFE0),
    .INIT_5E(256'h0000000001DBF0187C01F84039F9C0000000000FFFFFFFE00000007FFFFFFFFF),
    .INIT_5F(256'hFC80F8207FE700000000001FFFFFFFE8000000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'h0000003FFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000003DFE003),
    .INIT_61(256'h000001FFFFFFFFFFFFFFFFFFFFFFFFFF0000000003BFC0001C001C40FF3C0000),
    .INIT_62(256'hFFFFFFFFFFFFFFFF0000000007BFC0694C400361783000000000003FFFFFFFFE),
    .INIT_63(256'h000000000F7FC3E3442000F6C04000000000007FFFFFFFFE000003FFFFFFFFFF),
    .INIT_64(256'h4010000000C00000000000FFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h000001FFFFFFFFFF800007FFFFFFFFFFFFFFFFFFFFFFFFFF000000001E7F0FFF),
    .INIT_66(256'hC0000FFFFFFFFFFFFFFFFFFFFFFFFFFF000000003EFC7FF9CB00000000800000),
    .INIT_67(256'hFFFFFFFFFFFFFFFF000000007CF8FFEFC500003A0180000000000FFFFFFFFFFF),
    .INIT_68(256'h00000000F8F1FFDFB98000260100000000007FFFFFFFFFFFE0001FFFFFFFFFFF),
    .INIT_69(256'hB9C0003102000000001FFFFFFFFFFFFFE0003FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'h00FFFFFFFFFFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFF00000001F0E3FF7F),
    .INIT_6B(256'hF000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000003F087FEFE1F80007804400000),
    .INIT_6C(256'hFFFFFFFFFFFFFFFF0000000FE10FFDE03F8180C18840000007FFFFFFFFFFFFFF),
    .INIT_6D(256'h0000001FC01FFBC0D0E1E140800000007FFFFFFFFFFFFFFFF800FFFFFFFFFFFF),
    .INIT_6E(256'h1000FD9200000007FFFFFFFFFFFFFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003F803FF5C3),
    .INIT_70(256'hFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F003FE9840000FFF8F000007F),
    .INIT_71(256'hFFFFFFFFFFFFFFFF000000FE007FD59800007FFFF8000FF3FFFFFFFFFFFFFFFF),
    .INIT_72(256'h000001FC007FADB0000023F3F000F0FBFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFF),
    .INIT_73(256'h000001C4000F0063FFFFFFFFFFFFFFFF819FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001CC007F0C60),
    .INIT_75(256'h39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00020018033F5D800001E0F801E1807B),
    .INIT_76(256'hFFFFFFFFFFFFFFFF01FF003007CEBB000000F2600483807FFFFFFFFFFFFFFFFF),
    .INIT_77(256'h03FF00600FF4AC000000FF01E780007FFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFF),
    .INIT_78(256'h000072010700607FFFFFFFFFFFFFFFFFFF777FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFF03FF01C01FF9B800),
    .INIT_7A(256'hFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFF07FF83803FF9600000003100638001FF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFF47FE07007FFB4A00000038C01CC001FFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'h67E00600FCF289F806001E2007E001FFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFF),
    .INIT_7D(256'h0F00076000F00FFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFF00000801F8F30BFF),
    .INIT_7F(256'hFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFF00001001F8F103FFCF8201C000080FFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFF00006003F8E00FFFCF810000000007FFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h0000C007F0220FFF8F81800000080FFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFF),
    .INIT_02(256'h8F96C00004400FFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFF00038007F00207FF),
    .INIT_04(256'hFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFF003F000FF0020FFF8F97A000024207FF),
    .INIT_05(256'hFFFFFFFFFFFFFFFF007E000FF0030FFF8F37D00FB22307FFFFFFFFFFFFFFFFFF),
    .INIT_06(256'h00FC001FF0030FF78737E83FFB0183FFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFF),
    .INIT_07(256'h0737E07EEF1003FFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFF8007FFFFFFFFFFFFFFFFFFF01F0001FC0020FF7),
    .INIT_09(256'hFFFFFFFFFF031FFFFFFFFFFFFFFFFFFF01E0003F80060F800137E43C5F8003FF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFF03C0003F00260C000007E400018801FFFFFFFFFFFFFFF83F),
    .INIT_0B(256'h0F800006002600000007F000000C01FFFFFFFFFFFFFFE0177FFFFFFFFFC087FF),
    .INIT_0C(256'h0003E800004C01FFFFFFFFFFFFFF8002F9FFFFFFFFF833FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFE0000C07FFFFFFFFC0DFFFFFFFFFFFFFFFFFF1F000078007E0000),
    .INIT_0E(256'h001FFFFFFFFE00FFFFFFFFFFFFFFFFFF3FC001F80FFE00000001E000006E01FF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFF7DFC07F80FFE01B0FC0070000036007FFFFFFFFFFFFC0000),
    .INIT_10(256'h7CFFFFE40FFE01F0FF003000000E037FFFFFFFFFFFF80000003FFFFFFFFF803F),
    .INIT_11(256'h1FA040000000813FFFFFFFFFFFF80000002FFFF0FFFFF00FFFFFFDFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFF0001800FFFF07FFFF803FFFFFDFFFFFFFFFFF06FFFE00FFE0000),
    .INIT_13(256'hC00FFFF01FFFFF0C7FFFFEFFFFFFFFFFC027FFE00FFC7C000020A000000E407F),
    .INIT_14(256'h3FFFFFFFFFFFFFFF803FFFE20FC03E0000014000000F207FFFFFFFFFFFFFE001),
    .INIT_15(256'h401FFFE31E001F00000080000000103FFFFFFFFFFFFFFFF3801F7FA003F7FFE6),
    .INIT_16(256'h000100000000083FFFFFFFFFFFFFFFFFC03F7E004041FFF307FFFFFBFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFF3F640000007FFD83FFFFFFFFFFFFFFC01FFFF380008F80),
    .INIT_18(256'hFF62400000003FFEC07FFFFFFFFFFFFF600FFFF380018F80000600000000081F),
    .INIT_19(256'hD01FFFFFFFFFFFFF6049FFF1C00007C0000400000000080FFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hF0481FF1E00003C0060800000000000FFFFFFFFFFFFFFFFFFF40000000001FFF),
    .INIT_1B(256'h060C000000000407FFFFFFFFFFFFFFFFFF8000000000071FBC03FFFFE7FFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFF8FFF0000000000000FFF007FFFE7FDFFFFB0680FF3E00007E0),
    .INIT_1D(256'hF800000000000001F3E00FFFFFF9FFFFB86C07F3F00007E0061C0000007C0403),
    .INIT_1E(256'hF9F003FFFDFBFFFFB06FFFF1FE0003F00018000081EC0400FFFFFFFFFFFFFF0F),
    .INIT_1F(256'hF047FFF01F0003B800300003C06E00007FFFFFFFFFFFDF0FC000000000000001),
    .INIT_20(256'h00700000806E00007FFFFFFFFFFFCE0C00000000000000117CFC00FFFFDBFFFF),
    .INIT_21(256'h1FFFFFFFFFFFCE0000000000000000313E9F801FFFC1FFFFF007FFF0170001D8),
    .INIT_22(256'h00000000000000787733C00001E3FFFFF007FFF0030000DC00C0000080360000),
    .INIT_23(256'h23DE03FFFF13DC1F7007FFF00B003EEE00800000803600000FFFFFFFFFFFD800),
    .INIT_24(256'h7007FFF00B807F6600800000803700100FFFFFFFFFFFE0000000000000000078),
    .INIT_25(256'h00000000C03600300FFFFFFFFFFFC0000000000000000038FDF0000078F1D8E4),
    .INIT_26(256'h07FFFFFFFFFF80000000000000000001F8001F80079DD8C0300FFFF009C07FB7),
    .INIT_27(256'h0000000000000001FC00010001E35980000FFFF009C0FFD90000000040268410),
    .INIT_28(256'hFE00010000059800000FFFF009C07FFA803800004007C41003FFFFFFFFFF0000),
    .INIT_29(256'h000FFFF00DC03FEDC0300000400FC31003FFFFFFFFFE00000000000000000001),
    .INIT_2A(256'hC0700000600FC00F01FFFFFFFFFC00000000000000000001FC00000000006800),
    .INIT_2B(256'hC1FFFFFFFFFC000000000000000000023000000000003000001FFFF00FC03FF6),
    .INIT_2C(256'h00000000000000000000000000000000403FFFE0BFC01FFE60400000600BC03F),
    .INIT_2D(256'h0000000000000000003FF3E07FE01FFB30000000200E007FC0FFFFFFFEF80000),
    .INIT_2E(256'h007FE020FFE01FFD90000000000000FFC0FFFFFFF81800000000000000000000),
    .INIT_2F(256'hD8000000000003FF407FFFFE3800000000000000000000000000000000000000),
    .INIT_30(256'h003FFE000000000000000000000000000000000000000000027FE000FFE00FFD),
    .INIT_31(256'h0000000000000000000000000000000006FFE000FFE00FFCEC000000000007FF),
    .INIT_32(256'h00000000000000000FFFE000FFE007FC6600000000000FFE0007E00000000000),
    .INIT_33(256'h1FFFE001FFE003FC3300000000000FFE00000000000000000000000000000000),
    .INIT_34(256'h3B00000000001FFC000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000003FFFE001FFE000FC),
    .INIT_36(256'h00000000000000000000000000000000FF1FE001FFE000001D80000000003DFC),
    .INIT_37(256'h0000000000000000FE1FC000FFF000000EC0000000001FF86000000000000000),
    .INIT_38(256'hFC0FC000FFFF80000F40000000007BF070000000000000000000000000000000),
    .INIT_39(256'h0FA000000000F7F0FC0000000000000000000000000000000000000000000000),
    .INIT_3A(256'hBC0000400000000000000000000000000000000000000000300FC0007FFFF803),
    .INIT_3B(256'h00000000000000000000000000000000000F80007FFFFFFFCF900000000069E0),
    .INIT_3C(256'h0000000000000000FFFFC0003F5FFFFFFFC80000000071E01C00000000000000),
    .INIT_3D(256'hFFFFC0003F49FFFFFFE40000000240C00E000000000000000000000000000000),
    .INIT_3E(256'hFFF200000004A081260000000000000000000000000000000000000000000000),
    .INIT_3F(256'h380000000030180000000000003800000000000000000000FFFFC0001FC07FFF),
    .INIT_40(256'h0000000001FC00000000000000000000FE0FC0000FC01FFFFFFD000000004081),
    .INIT_41(256'h0000000000000000F807C00007C007FFFFFE0000000181031C00000000C00200),
    .INIT_42(256'hF003C00001E001FFFFFF00000013000309000000010000800000000003FF0000),
    .INIT_43(256'hFF0F80000016600381000000020000400078000007FFE0000000000000000000),
    .INIT_44(256'hC10000001C000023FFFFF80107FFF0000000000000000000C001C00000E000FF),
    .INIT_45(256'hFFFFFFFFFFFFFC000000000000000000801DC0000070007FFF01C000003C4407),
    .INIT_46(256'h0000000000000000001EC0000018001FFF00780000700807F10000006000002F),
    .INIT_47(256'h003EE00000060007F0003E0000E8100FFF000000D000013FFFFFFFFFFFFFFF00),
    .INIT_48(256'hB0001F0001D0400FFE000003B0000BFFFFFFFFFFFFFFFFC00000000000000000),
    .INIT_49(256'hFE00000E60001FFF7FFFDFFFFFFFFFF00000000000000000003EE00000010001),
    .INIT_4A(256'hFFFF1FFFFFFFFFF00000000000000000003EE00000000000000407C003B8801F),
    .INIT_4B(256'h00000000000000000000E00000000000000C01FC077F001FFE000018A0003FFC),
    .INIT_4C(256'h0000E00000000800001800FFF7FC003FFF00007B80005FF8FFFE3FFFEFFFFFF0),
    .INIT_4D(256'h0010001FFFF0003FFF0000F78000BFF1FFFE3FFF87FFFFF80000000000000000),
    .INIT_4E(256'hFD0001CF0001BFE5FFFC1C0770FFFFFF00000000000000000001E00000000600),
    .INIT_4F(256'hFF7B8001CF87FFFFF0000000000000000003F00000000700003000004000003F),
    .INIT_50(256'hF0000000000000000007F000000000C0002000000000007FFC00079E4001BFC5),
    .INIT_51(256'h803FF80000000070000010000000007FFC000F7EB0009FC9F047FFFE0077FFFF),
    .INIT_52(256'h00001800000000FFFE001CFFD0008FCBF00FFE0E001FFFFFFC00000000000000),
    .INIT_53(256'hF80039FFE000879B81F8000E000FFFFFFE00000000000000F8FFFF8000000038),
    .INIT_54(256'h07F0001C003FFFFFFFC00000000000007FEC1F800000000C00001800000001FF),
    .INIT_55(256'hFFC00000000000003FC01F000000000F00001C00000001FFFC0071FFE0808F9F),
    .INIT_56(256'h1F801E000000000380001C00000003FFFC00E1DFF1801FD40FE00000001FFFFF),
    .INIT_57(256'hC0001E00000003FFF801C13FF3813FD03F000000005FFFFFFFE0000000000000),
    .INIT_58(256'hF003807EE2817F97F8000000007FFFFFFFE00000000000001FB0FE0000000003),
    .INIT_59(256'h80000000003FFFFFFFF00000000000003FF8FE0000000003E0001E00000007FF),
    .INIT_5A(256'hFFF0000000000600FDFEFC0000000021F8001E0000000FFFE007007CE240FC3F),
    .INIT_5B(256'h01FBFE000000003CF8003F8000000FFFC00E00F4E200F7FC0000000000FFFFFF),
    .INIT_5C(256'hFC005F8000001FFF801C01C1E3001F800000000001FFFFFFFFF8000000000000),
    .INIT_5D(256'h80380101E7007F000000000000FFFFFFFFF00000000000000189FF000000001E),
    .INIT_5E(256'h0000000003FFFFFFFFF80000000000000184FF000000000FFE019F80000003FF),
    .INIT_5F(256'hFFFC00000000000003007F0000000007FF019F000000007F00300401E301F800),
    .INIT_60(256'h03803F8000000003FF87DF000000004000700C0BE30000000000000001FFFFFF),
    .INIT_61(256'hFFCFFF000000004000E00C3BE10000000000000005FFFFFFFFFE000000000000),
    .INIT_62(256'h00C008FBE0000000000000000BFFFFFFFFFE00000000000033C03FFF00000001),
    .INIT_63(256'h000000000BFFFFFFFFFFC0000000000037C033FFE0000000FFEFFFB000000080),
    .INIT_64(256'hFFFDF0000000000007E0203FF00000003FFFFFE0001001800181C9FBE0000000),
    .INIT_65(256'h07E0201FF00020041FFFFFC0002001800381CBF1E00000000000000017FFFFFF),
    .INIT_66(256'h0FFFFF900060030003038BC1E00000000000000017FFFF9FFFFCF00000000000),
    .INIT_67(256'h060F8801E0000000000000002FFFFF9FFFFCF0000000000007E02F8FF0002006),
    .INIT_68(256'h000000007FFFFF9FFFFFF8000000000007782FE7F200000C07FFFF1000C00300),
    .INIT_69(256'hFFFFF0000000000006342FF3F600000801FFFF0001500700041F8805E0000000),
    .INIT_6A(256'h063C3FE3FE600000000FFF0001C00600005B8805E000000000000000DFFFFFFF),
    .INIT_6B(256'h000348000210060000FB8805E000000000000000BFFFFFFFFFFFE00000000000),
    .INIT_6C(256'h01DBC80FE0000000000000017FFFFFFFFFFFC00000000000061C5FC3FE400000),
    .INIT_6D(256'h000000037FFFFFFFFFFFC00000000000061C1007FE4000C00001800004100400),
    .INIT_6E(256'hFFF0000000000000021C0007FF6001C00000E00004100C0013DFCC1FF0000000),
    .INIT_6F(256'h02180C0FFFF001E40003800100100C002FDFEFFFF000000000000032FFFFFFFF),
    .INIT_70(256'h4000000000000C001FFFEFFFF000000000000033FFFFFFFFFFE0000000000000),
    .INIT_71(256'h3FFFEFDFF00000000000007DFFFFFFFFFFE000000000000002188C1FFFE063E2),
    .INIT_72(256'h0000007BFFFFFFFFFFFC00000000000002198F1FFF90F7C3FF00000000000C00),
    .INIT_73(256'hFF8C00000000000003188FFFFF802F07FF200000006003005FFFEE0FF8000000),
    .INIT_74(256'h03180FFFFF8F7F87FFE0003B47E001009FFFEE1FF8000000000000F3FFFFFFEF),
    .INIT_75(256'hFFE0007FFFE00080BFFFEE1FF8000000000000E3FFFFFFE7FF00000000000000),
    .INIT_76(256'h7FFFE63FFC000000000001C3FFFFFFF7FF0000000000000003380FFFFFCFFFFF),
    .INIT_77(256'h000003807FFFFFFFFF0000000000000003BC07FFFFFFFFFFFFE0007FFFE00080),
    .INIT_78(256'hFE0000000000000001FC1FFFFDFFFFFFFFC0007FFFF000437FFDE7BFFC000000),
    .INIT_79(256'h01F89FFFF0FFFFFFFFA0187FFC10004E1FFDE7FFFC0000000000078001FFFFFF),
    .INIT_7A(256'hFBF838FFF01000601FFDE3FFFE00002000000F0001FFFFFFFE00000000000000),
    .INIT_7B(256'h0FECE7FFFE000C3801019E00000BFFFFFE0000000000000001F89FFFF3FFFFFF),
    .INIT_7C(256'h0183FC00000BFFFFFE0000000000080001F81FFFE3FFFFFFFFFCF8FFF8000002),
    .INIT_7D(256'hFC00000000001C0000F89FFF437FFFFFFFFFF8FFFC10000E0FFEFFFFFE00077C),
    .INIT_7E(256'h71F8BBC7077FFFFFFFFFF9FFFFB000040FFFFFFFFFFC83FC0087FC00000BF001),
    .INIT_7F(256'hFC7DF9FFFFF100000E3BFFFFCFFFFFFC0187F800000FE00380C0000000006001),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFE0000000000000000000000),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFC0FFE0000000000000000000000FFFFFFFFFFFF87FF),
    .INITP_02(256'hFFFFFE0FFF0FC0000000000000000000FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFF),
    .INITP_03(256'h0000000000000000FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFF878000),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF8000000000000000000000),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF83F8000000000000000000FFFFFFFFFFFF83FF),
    .INITP_07(256'hFFFFFFFFFFCFFE000000000000000000FFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h0000000000000000FFFFFFFFFFFDC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFCC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFCEFFFFFFFFFF80000000000000000FFFFFFFFFFFCC1FF),
    .INITP_0C(256'hFFFC4FFFFFFFFFFF0000000000000000FFFFFFFFFFF8E0FFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hC000000000000000FFFFFFFFFFF8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFF860FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFF000000000000000),
    .INIT_00(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_01(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6868464646462626242),
    .INIT_02(256'h4C2C2A0A0A0A08E8E8C8C8C8C6C6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_03(256'h71716F4E4E4E4E6E6E717171919171717171714E2AE8E8E8E8E8E8E80A2C6F4E),
    .INIT_04(256'h9393939393B3B3B5B5B39393B3B5B5D7D7D7D7B5D7D7D7B59393939191717171),
    .INIT_05(256'hD7D7D7D7B7B7B7B7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_06(256'hD9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9),
    .INIT_07(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBDBFBDBFBFBFBFBD9),
    .INIT_08(256'hEEECE8E8A6646464648666222244886624E4A4848451FBFBFBFBFBFDFDFDFDFD),
    .INIT_09(256'h8CAECECECEEEEEF0F0F2F6FAFFFFFFFFFFFFFFFFFDFAF8F8F4F2F0F0F0EEEEEE),
    .INIT_0A(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_0B(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684646462624242),
    .INIT_0C(256'h706E4C2C2C2C2AE8E8E8E8E8E8E8C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_0D(256'h7171716E4E4E4E6F6F719191919191919191916E2C08E8E8E8E8E8E80A0A4C70),
    .INIT_0E(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7B5B5B5B5B5B393939393919191),
    .INIT_0F(256'hD9D9D7D7D7D7B7D7D7D7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_10(256'hFBFBFBF9F9F9F9F9F9F9F9D9D9D9F9F9D9D9D9D9D9D9F9F9D9D9D9D9D9D9D9D9),
    .INIT_11(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_12(256'hF0ECE8E8A68684A6C6C664424222A88846E4A48484EAFBFBFDFDFDFDFDFDFDFD),
    .INIT_13(256'hACCECEEEF0F0F0F0F0F2F6FCFFFFFFFFFFFFFFFFFCFAF8F6F2F0F0F2F2F0F0F0),
    .INIT_14(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_15(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464624242),
    .INIT_16(256'h9090906E6E4C2C08E8EAE8E80A2C2C0A0A0CE8A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_17(256'h9171716F6E4E4E4E4E4E6E6F919191919191716E4E2C0AE8E8E8E8E80A0A2C6E),
    .INIT_18(256'hB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D7D7D7D7D7B5B5B5B5B393939393939191),
    .INIT_19(256'hD9D7D7D7D7D7D7D7D7D7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B59595B5),
    .INIT_1A(256'hFBFBFBF9F9F9F9F9F9F9F9D9D9F9F9F9F9F9D9D9D9F9F9F9D9D9D9D9D9D9D9D9),
    .INIT_1B(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_1C(256'hF0ECE8C8A6A6A6C6E8C88464642286CA46E4A4A4A4A6D9FBFBFBFBFDFDFDFDFD),
    .INIT_1D(256'hACCEF2F2F0F0F2F2F2F2F8FCFFFFFFFFFFFFFFFFFCFAF6F4F0F0F2F4F6F4F4F2),
    .INIT_1E(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_1F(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68686846464646262),
    .INIT_20(256'h90919191706E4C2C2CE8C6C6E80A0A2C0AE8C8A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_21(256'h9191716F6F4E4C2C2C2C2A2C4C6E6E717171716F6E4E4E2C0AE8E8E80A0A4C6E),
    .INIT_22(256'hB5B5B5B3B3B3B3B3B3B5B5B3B3B5B5B5D7D7D7D7D7D5D5D5B593939393939191),
    .INIT_23(256'hD9D7D7D7D7D7D7D7D7D7D7D7B7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3),
    .INIT_24(256'hFBFBFBF9F9F9F9F9F9F9F9F9FBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9D9D9D9D9),
    .INIT_25(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_26(256'hF0ECE8C8C6A6C6E8E8E8C6E8642244CC46E4A4A4A4A495FBFBFBFDFDFDFDFDFD),
    .INIT_27(256'hCCF0F4F2F2F2F4F4F2F4FAFCFFFFFFFFFFFFFFFEFCF8F4F4F2F2F2F4F6F6F6F4),
    .INIT_28(256'h6242424242424242424242424242424242424242424242424242424242424242),
    .INIT_29(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A686846464646462),
    .INIT_2A(256'h91919191906E4E4C2CE8C6C6C6C6C6E8C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_2B(256'h919171716F4E4C2A2A2C2A2A4C4C2A2A4C6E6F716F6E4E4E4C0AE808080A4C6E),
    .INIT_2C(256'hB5B5B5B3B3B3B3B3B3B5B3B3B3B5B5B5B5B5D7D7D7D7D7D5B593939393919191),
    .INIT_2D(256'hD9D7D7D7D7D7D7D7D7D7D7D7B7B7B7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3),
    .INIT_2E(256'hFBFBFBFBF9F9F9F9F9F9F9F9F9F9FBFBFBFBFBF9F9F9F9F9F9F9F9F9F9D9D9D9),
    .INIT_2F(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFB),
    .INIT_30(256'hEEECEAEAC6A6E8E8EAE8E8E8420202AA66E4A4A4A4C62EFBFBFDFDFDFDFDFDFD),
    .INIT_31(256'hCCF0F0F0F0F2F2F2F2F6FAFCFFFFFFFFFFFFFFFEFCF6F6F4F2F2F4F4F4F6F6F2),
    .INIT_32(256'h6242424242424242424242424242424242424242424242424242424242424242),
    .INIT_33(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A686848464646462),
    .INIT_34(256'h9091919191716E4C0AC8C6C6C6E62A6C8E8C6A2806E6C6C6A6A6A6A6A6A6A6A6),
    .INIT_35(256'h919191716F4E4C2A0A2A2A2C4C4C2C2A0A2A2C4E6E6E6E6E6E4C0A08080A2C6E),
    .INIT_36(256'hB3B3B5B3B3B3B3B3B3B3B3B3B3B3B5B5B5B5B5B5D5D5D7D5B3B3939393919191),
    .INIT_37(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3B3),
    .INIT_38(256'hFBFBFBFBFBF9F9F9F9F9F9F9F9F9FBFBFBFBF9F9F9F9F9F9F9F9F9F9F9D9D9D9),
    .INIT_39(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFB),
    .INIT_3A(256'hECECEAEAC6C6E8EAEAEAEAC6420202666804C4A4A4A4C8FBFDFDFDFDFDFDFDFD),
    .INIT_3B(256'hCEF0F0F0F0F2F2F2F4F6FAFCFFFFFFFFFFFFFFFCFAF8F8F6F4F4F4F4F4F2F6F0),
    .INIT_3C(256'h6242424242424242424242424242424242424242424242424242424242424242),
    .INIT_3D(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A686848484646464),
    .INIT_3E(256'h4C6E707070716E704E0AE8E86ACEEEEEECEACACCCC8C28E6C6A6A6A6A6A6A6A6),
    .INIT_3F(256'h919191716F4E4C2A2A2A2C2C4C4C2C0A080808082A4E6E6E6E716E2A0A0A0A2A),
    .INIT_40(256'hB3B3B5B3B3B3B3B3B3B3B3B3B3B3B3B3B5B5B5B5B5D5B5B5B3B3939391919191),
    .INIT_41(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5B5B5B3B3),
    .INIT_42(256'hFBFBFBFBFBFBFBF9F9F9F9F9F9FBFBFBFBFBFBF9F9F9F9F9F9F9F9D9D9D9D9D9),
    .INIT_43(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_44(256'hECEAEAC8C6E8E8EAEAEAEAA42202E2248804C4A4828484B7FDFDFDFDFDFDFDFD),
    .INIT_45(256'hCEF0F0F0F2F2F2F2F4F8FAFCFFFFFFFFFFFFFEFCFAFAFAF8F6F4F4F6F2F0F2EE),
    .INIT_46(256'h6242626242424242424242424242424242424242424242424242424242424242),
    .INIT_47(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68686848484646464),
    .INIT_48(256'h2C4E4E4E4C4C6E6E9090B0D0EECCA8A6868686A6A8CACCAA4806C6C6A6A6A6A6),
    .INIT_49(256'h919191716F4E4C2C2A2A4C2C2A2A2A08080808080A2A4C4E6E6E706E4C2A0A0A),
    .INIT_4A(256'hB3B3B3B3B39393B3B3B3B3B3B3B3939393939393B3B5B5B3B3B3939191919191),
    .INIT_4B(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3),
    .INIT_4C(256'hFBFBFBFBFBFBFBF9F9F9F9F9FBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9D9D9),
    .INIT_4D(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFB),
    .INIT_4E(256'hECEAE8E8E6E8EAEAEAEAE8642202E2E26824E4A482848471FDFDFDFDFDFDFDFD),
    .INIT_4F(256'hCEF0F0F2F2F2F2F4F4F8FAFCFFFFFFFFFFFFFFFEFCFCFAFAF6F6F6F4F0F0EEEC),
    .INIT_50(256'h6242626242424242424242424242424242424242424242424242424242424242),
    .INIT_51(256'hC6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A48686848484646464),
    .INIT_52(256'h2A4C4C4E4C2C4C90D5F3EECAA6644242424242646486A8CACCAA48E6C6C6C6C6),
    .INIT_53(256'h9191716F4E4E2C2A2A2C4C2C2A0808080A0808080A2A2A2A4C6E6E90916E2A0A),
    .INIT_54(256'hB3B3B3B3B3B393B3B3B3B3939393939393939393B3B3B5B3B3B3939391919191),
    .INIT_55(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B3),
    .INIT_56(256'hFBFBFBFBFBFBFBF9F9F9F9FBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9D9D9),
    .INIT_57(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFB),
    .INIT_58(256'hECEAE8E8E8E8EAEAEAEAA6642202E2E24646E4C4A484840CFBFDFDFDFDFDFDFD),
    .INIT_59(256'hEEF0F0F2F2F2F4F4F4F8FAFCFFFFFFFFFFFFFFFFFFFFFCFAF8F6F6F2F0EEECEC),
    .INIT_5A(256'h6462626242424242424242424242424242424242424242424242424242424242),
    .INIT_5B(256'hC6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A48686848484846464),
    .INIT_5C(256'h2A2C4C4C90B3F5F5F0A88664422222222222222242426264A6C8CAAC48E6C6C6),
    .INIT_5D(256'h91916F6F4E4C2C2A2A2C2C2C2A08E8E80A0808E80A2A2C2C4C4C4C6E9191704C),
    .INIT_5E(256'hB3B3B3B3B3B3B3B393939393939393939393939393B3B3B5B393939393939191),
    .INIT_5F(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_60(256'hFBFBFBFBFBFBF9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9D9D9),
    .INIT_61(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFB),
    .INIT_62(256'hEAEAEAE8E8E8EAEAEAE8864404E2E2C2044604C4A48284C6DBFDFDFDFDFDFDFD),
    .INIT_63(256'hEEF0F2F2F4F4F4F4F6F8FCFFFFFFFFFFFFFFFFFFFFFFFFFAF8F6F4F0F0EEECEC),
    .INIT_64(256'h6462626262626262626262624242424242424242424242424242424242424242),
    .INIT_65(256'hC6C6C6A6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6848484848484846464),
    .INIT_66(256'h6E8EB1D3F5F2EECC86624222222222222222222222222242446486A8CCAC4A06),
    .INIT_67(256'h91716F6E4E4C2C2C2A2A2A2C0A08E8E8E808E8E8080A2C4C4C4C2A2A4C6E9090),
    .INIT_68(256'hB3B3B3B3B3B3B3B39393939393939393939393939393B3B3B39393B393939391),
    .INIT_69(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_6A(256'hFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9D9D9D9D9),
    .INIT_6B(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFB),
    .INIT_6C(256'hECEAEAE8E8E8E8EAEAC8844402E2E2C2026624E4A48484A4B7FDFDFDFDFDFDFD),
    .INIT_6D(256'hF0F2F2F4F4F4F4F6F6FAFDFFFFFFFFFFFFFFFFFFFFFFFFFAF8F6F4F0EEEEECEC),
    .INIT_6E(256'h6462626262626262626262624242424242424242424242424242424242424242),
    .INIT_6F(256'h6A08C6A6A6A6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6848484848484846464),
    .INIT_70(256'hF5F3F0CECCAAA8644242422222222222222222222222222222424464A6C8ECCC),
    .INIT_71(256'h91716F4E4E4C4C2C2A2A2A0A0A08E8E8E8E8E8080808082A4C4C2C2C0A2A6ED3),
    .INIT_72(256'hB5B3B3B3B3B3B3B393939393939393939393939393939393B39393B3B3B39391),
    .INIT_73(256'hD9D9D7D7D7D7D7D7D7D7D7D7D7D7D7B5D5D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_74(256'hFBFBFBFBFBFBFBFBFBF9FBFBF9FBFBFBFBFBFBFBFBFBFBFBFBF9F9F9D9D9D9D9),
    .INIT_75(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_76(256'hECEAE8E8E8E8E8EAEAC6642402E2E2C2E26826E4A4A4848495FDFDFDFDFDFDFD),
    .INIT_77(256'hD0F4F6F6F4F4F6F6F8FAFDFFFFFFFFFFFFFFFFFFFFFFFFFAF8F8F4F0EEECECEC),
    .INIT_78(256'h6462626262626262626262626262626262626262624242424242424242424242),
    .INIT_79(256'hECCE6A06C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6848484848484846464),
    .INIT_7A(256'hCE8A68666464424242424242222222222222222222222222022222224284A6E8),
    .INIT_7B(256'h91716F4E4E4C4C2C2C2A2A0A0808E8E8E8E8080A2A08080A2C4C6E6E8ED1F3F0),
    .INIT_7C(256'hB5B5B3B3B3B393939393939391919193939393939193939393B3B3B3B3B39391),
    .INIT_7D(256'hD9D9D9D7D7D7D7D7D7D7D7D7D7D7D7B5B5D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_7E(256'hFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFBF9F9D9D9D9D9D9),
    .INIT_7F(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFF800000000000000FFFFFFFFFFF860FF),
    .INITP_01(256'hFFFC1FFFFFFFFFFFF800000000000000FFFFFFFFFFF860FFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hF000000000000000FFFFFFFFFFF860FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFF860FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFE000000000000000),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000FFFFFFFFFFFAE0FF),
    .INITP_06(256'hFFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFEE0FFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h0000000000000000FFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0000000000000000FFFFFFFFFFFFE0FF),
    .INITP_0B(256'hFFFFFFFFFFFFFFE08000000000000000FFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h6000000000000000FFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFF801800000000000000),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFF00FFFFFFFFFFF800400000000000000FFFFFFFFFFFFE0FF),
    .INIT_00(256'hECEAE8E8E8E8E8EAE8A6642404E2C2C2E28846E4A4A4848473FDFDFDFDFDFDFD),
    .INIT_01(256'hD0F6F6F6F6F6F6F8FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F8F4F0EEECECEC),
    .INIT_02(256'h6464626262626262626262626262626262626262624242424242424242424242),
    .INIT_03(256'hC8EAECAE4AC6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6848484848484846464),
    .INIT_04(256'h6644444444222242424242424222222222222222222222222202022222426484),
    .INIT_05(256'h9391714E4E4E4C4C2C2A2A0A0808E8E8E8E8082C2C2A0A0A4A8ED3F3D0AE8A88),
    .INIT_06(256'hB5B5B3B3B3B393939393939191919193939393919191B3B393B3B3B5B3B3B393),
    .INIT_07(256'hD9D9D9D7D7D7D7D7D7D7D7D7D5B5D5B5D5D5D5D5D5B5B5B5B5B5B5B5B5B5B5B5),
    .INIT_08(256'hFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFBF9F9D9D9D9D9D9),
    .INIT_09(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_0A(256'hECEAEAE8E8E8E8EAE8A6642404E2C2C2E28846E4C4A4848451FBFDFDFDFDFDFD),
    .INIT_0B(256'hD2F6F8F6F6F6F8F8FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F6F4F0EEEEECEC),
    .INIT_0C(256'h6464626262626262626262626262626262626262626262424242424242424242),
    .INIT_0D(256'h64A6C8CC6AC6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A4A4A486868484846464),
    .INIT_0E(256'h4444444422224242424242424242424222222222222022222222222222222242),
    .INIT_0F(256'h9391916F4E4E4C4C4C2A2A2A0A08E8E8E8E8E82A4C4C6C8ED3F1CEAA88664644),
    .INIT_10(256'hB5B5B5B3B3B3B39393939393919191939393939393B1B3B3B39393B3D5B5B393),
    .INIT_11(256'hD9D9D9D7D7D7D7D7D7D7D7D5D5D5D5D5D5D5D5D5B5B3B3B3B5B5B3B5B5B5B5B5),
    .INIT_12(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9D9D9D9D9D9),
    .INIT_13(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFB),
    .INIT_14(256'hECEAEAE8E8E8E8E8A686642404E2E2E2E28846E4C4A484842EFBFDFDFDFDFDFD),
    .INIT_15(256'hF2F6F6F6F6F8F8FAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8FAF6F2F0EEEEEC),
    .INIT_16(256'h6464646262626262626262626262626262626262626262424242424242424242),
    .INIT_17(256'h42426648E6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464),
    .INIT_18(256'h4444444422424242424242424242424222222222222022222222222222222222),
    .INIT_19(256'hB3B391714E4E4E4C4C2A2A2A0A0AE8E8E8E8E82A8ED0F3CEAC88666644242424),
    .INIT_1A(256'hD5D5B5B5B3B3B3B3B3B3B3B3919391939393939393B3B3B3B3B3B393B3B5D5B3),
    .INIT_1B(256'hD9D9D9D7D7D7D7D7D7D7D7D7D7D5D5D5D5D5D5B5B5B3B3B3B5B5B5B5B5B5B5B5),
    .INIT_1C(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9D9D9D9D9),
    .INIT_1D(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFB),
    .INIT_1E(256'hEEECEAEAE8C8C8C6A666442404E2E2E2E28846E4C4A484842EFBFBFDFDFDFDFD),
    .INIT_1F(256'hF2F4F6F6F6F8FAFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAFAF6F2F0F0F0F0),
    .INIT_20(256'h6464646464626262626262626262626262626262626262424242424242424242),
    .INIT_21(256'h422406C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464),
    .INIT_22(256'h4444442242424242424242424242424242222222222222222222222222222222),
    .INIT_23(256'hB3B393916F4E4E4C4C2C2A2A0A0A08E8082A8ED0D0CEAA886646442424242424),
    .INIT_24(256'hD5D5B5B5B5B3B3B3B3B3B3B39393939193939393B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_25(256'hD9D9D7D7D7D7D7D7D7D5D7D7D7D5D5D5B5B5B5B5B5B3B3B5B5B5B5B5B5B5B5B5),
    .INIT_26(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9D9D9D9D9),
    .INIT_27(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFB),
    .INIT_28(256'hEEECEAEAE8C8C8A68666442404E404E2028846E4A4A484844EFBFBFDFDFDFDFD),
    .INIT_29(256'hF2F4F6F6F8FAFBFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F8F6F4F2F2F2F2),
    .INIT_2A(256'h6464646464626262626262626262626262626262626262424242424242424242),
    .INIT_2B(256'h24E6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464),
    .INIT_2C(256'h4444442242424242424242424242424242424242424242424222424242424222),
    .INIT_2D(256'h91919191714E4E4E4C2C2A2A2A2A2A6CB0F1CECCAA8866644424242424244444),
    .INIT_2E(256'hD5B5D5B5B5B5B3B3B3B3B3B3B3B3B391B3B3B3B3B3B3B3B3B3B3B3B393939391),
    .INIT_2F(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D5),
    .INIT_30(256'hFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9D9D9D9D9D9),
    .INIT_31(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFB),
    .INIT_32(256'hF0ECECEAE8C8C8A686662424040404E224AA46E4A4A4848451FBFBFDFDFDFDFD),
    .INIT_33(256'hF2F4F6F6F8FBFBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF8F8F8F6F4F4F2F2),
    .INIT_34(256'h6464646464646262626262626262626262626262626262624242424242424242),
    .INIT_35(256'hE6C6C6C6C8C6C6A6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A4A6A68684846464),
    .INIT_36(256'h6444424242424242424242424242424242424242424242424242424242424204),
    .INIT_37(256'h919171716F4F4E4E2C2C2C4A6CAEF1F0CCAA8886664444442424242424244444),
    .INIT_38(256'hB5B5D5B5B5B5B5B3B3B3B3B3B3B3B391B3B3B3B3B3B3B3B3B3B3919191919191),
    .INIT_39(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5D5B5B5B5B5B5B5B5B5B5B5D5D5D5),
    .INIT_3A(256'hFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9D9D9D9D9D9D9),
    .INIT_3B(256'hFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFB),
    .INIT_3C(256'hF2EEECEAE8E8C8A88646262404040402468846E4A4A4848451FBFBFBFBFDFDFD),
    .INIT_3D(256'hD0F4F6F6F8FBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAFAF8F6F6F4F2F4),
    .INIT_3E(256'h6464646464646262626262626464646464646464646262626242426262424242),
    .INIT_3F(256'hC6C6C6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A4A6A68684846464),
    .INIT_40(256'h64444242424242424242424242424242424242626262424242424242424224E6),
    .INIT_41(256'h91917171716F6E4E4C4C90D1F0CECCAA88866644444444442424242424444444),
    .INIT_42(256'hB5B5B5B5B5B5B5B3B3B3B3B3B3B3B39393B39193B3B39391B191919191919191),
    .INIT_43(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5B5B5B5B5B5B5B5B5D5D5D5B5),
    .INIT_44(256'hFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF9D9D9D9D9D9D9D9),
    .INIT_45(256'hFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFB),
    .INIT_46(256'hF2EEECEAEAE8A8886646262404040402688646E4A4A4A48471FBFBFBFBFBFBFB),
    .INIT_47(256'hCEF4F6F8FBFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAFAF8F8F8F4F4F6),
    .INIT_48(256'h6464646464646262626262626464646464646464646262626262626262624242),
    .INIT_49(256'hC6C6C6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464),
    .INIT_4A(256'h64442242424242424242624242624242626262626262626262626242444608C6),
    .INIT_4B(256'h9191717171716E90B1F3D0CCAA88866664444444442424242424444444444444),
    .INIT_4C(256'hB5B5B5B5D5B5B5B5B3B3B3B3B3B3B3B3B39191B3B3B391919191919191919191),
    .INIT_4D(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5B5B5B5B5B5B5B5D5D5D5D5D5B5),
    .INIT_4E(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9D9D9D9D9D9D9D9),
    .INIT_4F(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFB),
    .INIT_50(256'hF2EEECEAEAE8C8886646462404040422AA8826E4C4A4848473FBFBFBFBFBFBFB),
    .INIT_51(256'hCEF0F6F8FBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAF8FAFAF8F6F6F8),
    .INIT_52(256'h6462626262626262626464646464646464646262626262626262626262626242),
    .INIT_53(256'hE8C6C6C6C6C6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68684846464),
    .INIT_54(256'h4422424242424242424242424242426262626262626262626462642406E80A0A),
    .INIT_55(256'h919171719191D3F3CE8A88684644444444444444442424242424244444444464),
    .INIT_56(256'hB5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3919191919191919191919191919191),
    .INIT_57(256'hD7D9D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D5D5B5D5D5D5B5B5B5D5D5D5D5D5B5),
    .INIT_58(256'hFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBF9F9F9F9F9D9D9D9D9D9D9D7D7),
    .INIT_59(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_5A(256'hF4F0EEECEAEAC8866646462604040446EEAA26E4C4A4A4A4B5FBFBFBFBFBFBFB),
    .INIT_5B(256'hCCEEF2FBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAFAFAFAF8F8FAF8),
    .INIT_5C(256'h6462626262626262626464646464646464646262626262626262626262626242),
    .INIT_5D(256'h2CEAC6C6C6C6A6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68484646464),
    .INIT_5E(256'h242242626242424242424242424242626262626464646484644424E6C6C6C6E8),
    .INIT_5F(256'h91919193D5F3CE8A664624242424244444444444442424242424444444646464),
    .INIT_60(256'hB5B5B5B5B5B5D5B5B3B3B3B3B3B3B3B3B3919191919191919191919191919191),
    .INIT_61(256'hD7D9D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5D5D5B5D5D5D5B5B5B5B5D5D5D5D5B5),
    .INIT_62(256'hFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBF9F9F9F9F9F9D9D9D9D9D9D9D7),
    .INIT_63(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_64(256'hF4F2EEECEAEAC886866646260404046AEE6806E4C4A4A4A6B5F9FBFBFBFBFBFB),
    .INIT_65(256'hCCEEF0F8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAFDFDFDFAFCFCF8),
    .INIT_66(256'h6464626262626262626264646464646464646262626262626262626262626242),
    .INIT_67(256'hC80A0AE8C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6848484646464),
    .INIT_68(256'h2444626262424242424242424242424242424242626262644406E6E6C6C6C6C6),
    .INIT_69(256'h91B1D5F5D06A4624020202022222224444444444442424242444444444646444),
    .INIT_6A(256'hB5B5B5B5B5B5D5B5B3B3B3B3B3B3B3B3B3919191919191919191919191919191),
    .INIT_6B(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5D5B5B5D5D5D5B5B5B5B5B5D5D5D5B5),
    .INIT_6C(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9D9D9D9D9D9D9D9D7),
    .INIT_6D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_6E(256'hF6F4F0ECEAEAC88886664626040424ACAA6606E4C4A4A4C6D7F9F9FBFBFBFBFB),
    .INIT_6F(256'hACCCEEF4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFCF8),
    .INIT_70(256'h6462626262626262626262626262646464646464626262626262626262626242),
    .INIT_71(256'hC6C6E80A0AC6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A686848464646464),
    .INIT_72(256'h42626262626242424242424242424242424242626262444606C6C6C6C6C6C6C6),
    .INIT_73(256'hD5F7D38A2604C2C0C0C2E2020222222424442424242424242444444444646444),
    .INIT_74(256'hB5B3B5B5B5B5B5B3B3B3B3B3B3B3B391B3919191919191919191919191919193),
    .INIT_75(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D5B5B5B5B5B5B5B5B5B5B5B5B5B5B5D5B5B5),
    .INIT_76(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9D9D9D9D9D9D9D7D7),
    .INIT_77(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_78(256'hF6F4F0ECEAEAC88866464626042446CE884606E6C4C4C4E8F9F9F9F9F9FBFBFB),
    .INIT_79(256'hACCCCEF2F6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFCF8),
    .INIT_7A(256'h6262626262626262626262626262626464646464626262626262626262626242),
    .INIT_7B(256'hA6A6A6C6EA0AC8A6A6A6A6A6A6A68686A6A6A6A6A4A486848484846464646464),
    .INIT_7C(256'h62626262626242424242424242424242424262626244484A08E8C6C6C6A6A6A6),
    .INIT_7D(256'hF5CE4804C2A0A0A0A0C0C2E20202022224242424242424242444444464646442),
    .INIT_7E(256'hB3B3B5B5B5B3B3B3B3B3B3B39191919191919191919191919191919393B3D5F7),
    .INIT_7F(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7B5B5B5B5B5B5B5B3B3B3B3B3B3B3B5B5B5B5),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE007FFFFFFFFFDC00200000000000000FFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h0000000000000000FFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFF870),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFF0100000000000000000),
    .INITP_04(256'hFFFFFFFFFFFFFFFFC0003FFFFFFFE0040000000000000000FFFFFFFFFFFFC1FF),
    .INITP_05(256'hC0001FFFFFFFC0000000000000000000FFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000FFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFF8000),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFF80000000000000000000),
    .INITP_09(256'hFFFFFFFFFFFFFFFFC00007FFFFFF00000000000000000000FFFFFFFFFFFFC7FF),
    .INITP_0A(256'hC00007FFFFFE00000000000000000000FFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFE0000),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFC00000000000000000000),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFF80007FFFFF8000000000000000000007FFFFFFFFFFFFFFF),
    .INITP_0F(256'hF82001FFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9D9D9D9D9D9D9D7D7),
    .INIT_01(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_02(256'hF6F4F0ECEAEAC8886646462624248ACC6828E6E6C4C4C42CF9F9F9F9FBFBFBFB),
    .INIT_03(256'hACACCEF0F2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDF8),
    .INIT_04(256'h6262626262626262626262626262626464646464646464626262626262626242),
    .INIT_05(256'hA6A6A6A6A6C80AEAA6A6A6A6A686848484A4A4A4A48484848484846464646462),
    .INIT_06(256'h62626262626242424242424242424242424262442404E80A2A2AE8C6C6A6A6A6),
    .INIT_07(256'hAC4602C2A0808080A0A0C2C2E202020204222424242424242444446464644442),
    .INIT_08(256'hB5B3B3B5B5B3B3B3B3B3B3B3919191919191919191919191919191B3D5F9F7F3),
    .INIT_09(256'hD7D7D7D7D7D7D7D7D5D7D7D7D7D7D5B5B5B5B5B3B3B3B3B3B3B3B3B5B5B5B5B5),
    .INIT_0A(256'hFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBF9F9F9F9F9F9F9F9F9F9F9D9D9D7D7D7D7),
    .INIT_0B(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_0C(256'hF6F4F0ECEAC8C888664626262424AAAA4828E6E6C4C4C670F9F9F9F9FBFBFBFB),
    .INIT_0D(256'h8AACCCEEF0F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFDF8),
    .INIT_0E(256'h6464626262626262626262626262626464646262626464646262626262626242),
    .INIT_0F(256'hA6A6A6A6A6A6A6EAEAC8A686868484848484A4A4A4A484848484646464646464),
    .INIT_10(256'h626262626242424242424242424242424242442406C6C6C8E80A2C0AC6C6A6A6),
    .INIT_11(256'h4402E2C0A08080808080A0A2C2E2E20202022224242424242444446464644462),
    .INIT_12(256'hB3B3B3B3B3B3B3B3B3B3B3B391919191919191919191919391B3D5F9F7F5CE88),
    .INIT_13(256'hD7D7D7D7D7D7D7D5D5D7D7D7D7D7B5D5B5B5B5B3B3B3B3B3B3B3B3B3B5B5B5B5),
    .INIT_14(256'hFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D7D7D7),
    .INIT_15(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_16(256'hF6F4F0ECEAC8A888664626262446AA882808E6E6C6C6C6B5F9F9F9F9F9F9FBFB),
    .INIT_17(256'h8AACACCEF0F2F6FDFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFFFFFFFFFFFFFDFA),
    .INIT_18(256'h6464646262626262626262626262626464646462626464646262626262626242),
    .INIT_19(256'hA6A6A6A6A6A6A6A6C8EAEAA68484848484848484848484848484646464646464),
    .INIT_1A(256'h6262626262424242424242424242424242422406C6C6C6C6C8C8E80AEAC8C6A6),
    .INIT_1B(256'h2402C2A0A0808080808080A0A0C0E2E2E2020222222424242444646464444462),
    .INIT_1C(256'hB3B3B3B3B3B3B3B3B3B3B3939191919191919191919191B3D5F7F7F5F0CC8664),
    .INIT_1D(256'hD7D7D7D7D7D7D5D5D5D7D7D5D5B5B5B5D5D5D5B3B3B3B3B3B3B3B3B3B3B5B5B3),
    .INIT_1E(256'hFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7D7D7),
    .INIT_1F(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_20(256'hF6F2EEEACAA8A88666462624468AAA682806E6E6C6C4E8F9F9F9F9F9F9F9F9FB),
    .INIT_21(256'h8CACACCCCEF0F2F7FDFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFFFFFFFFFFFFFDFA),
    .INIT_22(256'h6464646262626262626262626262626464646464646464646462626262626242),
    .INIT_23(256'hA6A6A6A4848686A684A6EAEAA684848484848484848484848484646464646464),
    .INIT_24(256'h62626262624242424242424242424242424406C6C6A6A6A6A6A6A6C8EA0AE8C6),
    .INIT_25(256'h2402E2A08080808080808080A0A0C0C2C2E20202022424242444646464446462),
    .INIT_26(256'hB3B3B3B3B3B3B3B3B3B3B393919191919191919191B3D5F5F5F0CECAA8866444),
    .INIT_27(256'hD7D7D7D7D5D5D5D5D5D5D5D5D5B5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_28(256'hFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7D7),
    .INIT_29(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_2A(256'hF2F0ECEAC8A888666646262468AC88482606E6E6E6C64CF9F9F9F9F9F9F9F9FB),
    .INIT_2B(256'h8CACACCCCEF0F0F2F7FDFFFFFFFFFFFFFFFFFFFDFBFAFDFFFFFFFFFFFFFFFCF8),
    .INIT_2C(256'h6464646262626262626262626262626464646464646464646462626262624242),
    .INIT_2D(256'hC684848484848484848484A6C8A8868484848484848484846464646464646464),
    .INIT_2E(256'h826262626262424242424242424242424224C6C6C6A6A6A6A6A6A6A6A6C8EAE8),
    .INIT_2F(256'h2402E2C0A0808080808080808080A0A0C2C2E202022224244444646444446262),
    .INIT_30(256'hB3B3B3B3B3B3B3B3B3B3939391919191919191B1D5F5F3F0CCCAA8A686664424),
    .INIT_31(256'hD7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_32(256'hFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7D7),
    .INIT_33(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_34(256'hF0ECEAC8C8A8886646262666AC8A68482606E6E6E6E6B5F9F9F9F9F9F9F9F9FB),
    .INIT_35(256'h6A8CACCCCEEEEEF0F2F8FDFFFFFFFFFFFFFFFFFDFAFAFDFFFFFFFFFFFFFDF8F4),
    .INIT_36(256'h6464646464646464646464646262626464646464646464646462626262424242),
    .INIT_37(256'hE8C6A684848484848484848484A8C8A684848484848484846464646464646464),
    .INIT_38(256'h8262626262624242424242424242424424E6C6A6A6A6A6A6A68686868686A6C8),
    .INIT_39(256'h2402E2C2A080808080808080808080A0A0C2E2E2020224244464646444648282),
    .INIT_3A(256'hB3B3B3B3B3B3B3B3B3B3B2939393919191B1D3F5F5F0ECCAC8A8868686644444),
    .INIT_3B(256'hD7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_3C(256'hFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9D9F9F9F9F9F9F9F9F9D9D7D7D7D7),
    .INIT_3D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_3E(256'hECECEAC8A8886866462646AAAA8848280606E6E6E608F7F9F9F9F9F9F9FBF9FB),
    .INIT_3F(256'h6A8CACACCECECECEF0F4F8FDFFFFFFFFFFFFFFFDF8F8FDFFFFFFFFFFFFFAF6F0),
    .INIT_40(256'h6464646464646464646464646462626262626464646464646462626242424242),
    .INIT_41(256'hA6E8C8A68484848484848464648484C8C8868484848484646464646464646464),
    .INIT_42(256'h6262626262624242424242424242422406C6A6A6A6A6A6868686868684848484),
    .INIT_43(256'h2402E2C2A0A080808080808080808080A0C2C2E2020224244464644464828282),
    .INIT_44(256'hB3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B1B3F5F5F0EECAC8C8A8A6868686644444),
    .INIT_45(256'hD7D7D7D7D5D5D5D5D5D5D5D5D5B5B5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_46(256'hFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D7D7D7D7D7),
    .INIT_47(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_48(256'hEAEAC8A8888666664646ACAC886848280606E6E6E670F9F9F9F9F9F9FBFBFBFB),
    .INIT_49(256'h4A8A8CACACACAEAECEF2F4F6FBFFFFFFFFFFFFFDFAFAFDFFFFFFFCFDFAF6F2EE),
    .INIT_4A(256'h6464646464646464646464646462626262626464646464646462626242424442),
    .INIT_4B(256'h84A6C8C8A68484848484646464848484A6C8A684648464646464646464646464),
    .INIT_4C(256'h62626262626242424242424242424404C6A6A6A6A6A6A6868684848684848484),
    .INIT_4D(256'h2402E2E2C0A080808080808060808080A0A0C2E2E20224244444444264848282),
    .INIT_4E(256'hB5B3B3B3B3B3B3B3B3B3B3B3B2B3B3D3F5F1EECCCAC8C8A8A686868686644444),
    .INIT_4F(256'hD7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5B3B3B3B3B3B3B3B3B3B3B5),
    .INIT_50(256'hFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D9D7D7D7D7),
    .INIT_51(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_52(256'hEAE8C8888866666668ACAC8A684828280806E6E608F7F9F9F9F9F9F9F9F9FBFB),
    .INIT_53(256'h4A6A8C8CACAEAEAECEF0F2F2F4F9FDFFFFFFFFFDFAFAFFFFFFFDFCFCF6F2EEEC),
    .INIT_54(256'h6464646464646464646464646462626262626262626262626262626242424442),
    .INIT_55(256'h646484A6C8A6A68484646464646464648484C8EAA88464646464646464646464),
    .INIT_56(256'h626262626262424242424242424224E6C6A6A6A6A6A6A6848484848484846464),
    .INIT_57(256'h2402E2E2C2C0A080808080806060808080A0C0C2E20224444444224484848282),
    .INIT_58(256'hB3B3B3B3B3B3B3B3B3B3B3B0B2B3D5F3F1CCCAC8C8C8A8A8A6A6868686646444),
    .INIT_59(256'hD7D5D5D5B5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D3D3D3B3B3B3B3B3B3B3B3B3),
    .INIT_5A(256'hFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D9D7D7D7D7),
    .INIT_5B(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9FBFB),
    .INIT_5C(256'hEAC8A88866666688CCAC8A6848482808080606066EF9F9F9F9F9F9F9F9F9FBFB),
    .INIT_5D(256'h4A6A6A8C8CAEAEAECEF0F2F2F2F4F6F8FBFFFFFDFBFAFDFDFDFCFAF6F2EEECEA),
    .INIT_5E(256'h6464646464646464646464646464646262626262626262626262624242424242),
    .INIT_5F(256'h6464648484A6C8A68484646464646464646484A6EAA884646464646464646464),
    .INIT_60(256'h626262626262424242424242424404C6A6A6A6A6A6A686848484848484646464),
    .INIT_61(256'h24220202E2C0A0A0808080808080808080A0A0C0E20222444424448484848482),
    .INIT_62(256'hB3B3B3B3B3B3B2B3B3B2B0B0B3F5F3EECACAC8C8C8C8A8A8A6A6868686644444),
    .INIT_63(256'hD7D5D5B5B5D5D5D5D5D5B5D5D5D5D5D5B5B5B5D3D3D3B3B3B3B3B3B3B3B3B3B3),
    .INIT_64(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9F9F9F9F9F9D9D9D9D7D7D7D7D7),
    .INIT_65(256'hFBFBFBFBFBFBFBFBFBFBF9D7F9F9F9F9FBFBFBFBFBFBFBFBF9FBFBF9F9F9F9F9),
    .INIT_66(256'hC8A888866688AACCAA8A6A484828280806060608B3F9F9F9F9F9F9F9F9F9F9FB),
    .INIT_67(256'h2A4A6A6C8C8CAEAECECEF0F0F2F2F4F2F4F6FBFDFDFBFAFAFAFAF6F2F0EEECEA),
    .INIT_68(256'h6464646464646464646464646464646262626262626262626262624242424242),
    .INIT_69(256'h646464648484A6C6C8A68464646464646464646484C8CA866486646464646464),
    .INIT_6A(256'h6262626262624242424242424224C6A6A6A68686848484848484848484848484),
    .INIT_6B(256'h24220202E2E0C0A0808080808080808080A0A0C0E20222222242848284848482),
    .INIT_6C(256'hB3B3B2B2B2B2B2B2B2B0B0B1F5F3CCCAA8A8A8A8C8C8A8A8A686868686644444),
    .INIT_6D(256'hD5D5D5B5B5B5B5B5D5D5B5B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3),
    .INIT_6E(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D9F9F9F9D9D7D7D7D7D7D7D7D7),
    .INIT_6F(256'hFBFBFBFBFBFBFBFBFBFBF9930A2C6EB3F7FBFBFBF9F9FBFBF9F9F9F9F9F9F9F9),
    .INIT_70(256'hC8A888AACCEECCAA8A6A6A48482828080606086CF7F9F9F9F9F9F9F9F9F9FBFB),
    .INIT_71(256'hC42A6C6C8C8C8EAECECEF0F0F0F0F0F0F0F2F2F6F8F8F8F8F8F6F4F2F0ECEAE8),
    .INIT_72(256'h6464646464646464646464646464646262626262626262626262626262624442),
    .INIT_73(256'h8484646464648484A6C8C88684846464646464646464A6C8A884A66464646464),
    .INIT_74(256'h84626262626242424242424242E4A68686868484848484848484646464646464),
    .INIT_75(256'h2424220202E2C0A0A0808080808080808080A0C0E00202022284848484848484),
    .INIT_76(256'hB2B2B2B2B2B2B0B2B2B0B3F3F1CCAAA8A8A8C8A8A8A8A8A8A686868686644444),
    .INIT_77(256'hD5D5D5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3B3B3B3B3B3D3D3D3D3D3D3B3B3),
    .INIT_78(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D9D9D9D7D7D7D7D7D7D7D7D5),
    .INIT_79(256'hFBFBFBF9F9F9F9FBFBFBF9F92C08282A2A4E93F9F9F9F9F9FBF9F9F9F9F9F9F9),
    .INIT_7A(256'hCACAECECCCACAA8A6A6A4A482828280808082AB2F9F9F9F9F9F9F9F9F9F9F9FB),
    .INIT_7B(256'h82C42A6C8C8C8CAEAECED0F0EEF0F0EEEEEEEEF0F2F2F4F4F4F4F2F2F0ECECEA),
    .INIT_7C(256'h6464646464646464646464646464646262626262626262626262626262644442),
    .INIT_7D(256'h848464646464648484A6C8C8A68464646464646464646484A8C8868664646464),
    .INIT_7E(256'h84626262626242424242424224C4868484848464646484646464646464646464),
    .INIT_7F(256'h4444222202E2E0E0E0E000E0C0A080808080A0A0C0E0E2226484A48484848484),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000001FFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h0FFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FFFFF00000),
    .INITP_02(256'hFFFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000003FFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFEFC7FFFFFFFFF),
    .INITP_05(256'h000000000000000000FFFFFFFFFDFFFFFFFEFE3FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h003FFFFFFFF9FFFFFFFE3F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000),
    .INITP_07(256'hFFFE1F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000001FFFFFFFE1FFFF),
    .INITP_09(256'hFFFFFFFFFF80000000000000000000000003FFFFFFC1FFFFFFFE0F83FFFFFFFF),
    .INITP_0A(256'h00000000010000000000FFFFFF01FFFFFFFF07C3FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h00001FFFFC01FFFFFFFF03C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000),
    .INITP_0C(256'hFFFF00E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000),
    .INITP_0D(256'hFFFFFFFFF0FFFFFFFFFFFFFFFF0000000000000000000000E00000F80003FFFF),
    .INITP_0E(256'hFFFFFFFFFE0000000000000000000000700000000003FFFFFFFFC060FFFFFFFF),
    .INITP_0F(256'h0000000000020000780000000003FFFFFFFFF020FFFFFFFFFFFFFFFFC07FFFFF),
    .INIT_00(256'hB3B2B2B0B2B0B0B0B0B3F3F1CCAAA8A8A8C8C8A8A8A8A8A6A686868664644444),
    .INIT_01(256'hD5B5B5B5B5B5B5B5B3B3B3B3B3B3B3B3B3B3B3B3B3B3D3D3D3D3D3D3D3D3D3D3),
    .INIT_02(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9D9D9D9D7D7D7D7D7D7D7D7D5D5),
    .INIT_03(256'hF9FBFBF9F9F9F9F9F9F9F9F9B5E60828282AE80893D9F9F9F9F9F9F9F9F9F9F9),
    .INIT_04(256'hEEECECCCAAAA8A6A6A4848282828080808284CF7F9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_05(256'h84A4C4086C8E8C8EAECECECECEEEEEEEECCCCCEEEEEEF0F0F0F0F0F0EEEEEEEE),
    .INIT_06(256'h6464646464646464646464646464646464646262626262626262626264646444),
    .INIT_07(256'h8464646464646464648484A6C8A6868464646464646464646486A8A886646464),
    .INIT_08(256'h846262626262624242424244E486848484646464646464646464646464646464),
    .INIT_09(256'h4444242222022284C4C6C6C6A46220E0A0A0A0A0C0E24284A4A4A4A4A4848484),
    .INIT_0A(256'hD3B3B2B2B0B0B0B0B3F3F1CCAAA8A8A8C8C8C8C8A8A8A6A6A686868664644444),
    .INIT_0B(256'hB5B5B5B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3D3D3D3D3D3D3D3D3D3D3),
    .INIT_0C(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D9F9F9D9D7D7D7D7D7D7D7D7D7D5D5D5B5),
    .INIT_0D(256'hF9DBDBD9F9F9F9F9F9F9F9F9F94C080808282A08C4E893F9F9F9F9F9F9F9F9F9),
    .INIT_0E(256'hCCCCCCAC8A8A6A484848282828282828282A90F9F9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_0F(256'h8284A4C4086C6E8E8EAEAEAEACCCCCCCCCCCCCCCCCECECECCCECECECECECECCC),
    .INIT_10(256'h6464646464646464646464646464646464646262626262626262626264646444),
    .INIT_11(256'h646464646464646464648484A6C8C8A6846464646464646464646486A8A66464),
    .INIT_12(256'h848262626262624242424224A484848464646464646464646464646464646464),
    .INIT_13(256'h444444242264C4E4E4E4E4E4E4E4C4A4846242426484A4C4A4A4A4A4A4848484),
    .INIT_14(256'hD3D3B3B3B2B0B0B3F3F1CCA88888A8A8A8C8C8A8A8A6A6A68686868666646444),
    .INIT_15(256'hB3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B2B2B2B2B3B3D3D3D3D3D3D3D3D3),
    .INIT_16(256'hF9F9F9F9F9F9F9D9D9D9F9F9D9D9F9D9D9D9D7D7D7D7D7D7D7D7D5D5D5D5B5B3),
    .INIT_17(256'hF9DBB9D9F9F9F9F9F9F9F9F9F9B5E6080808282A2AC4C42CB7F9F9F9F9F9F9F9),
    .INIT_18(256'hAAACAA8A8A6A48484828282828282828284AD5F9F9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_19(256'h8282A4A4A4E64C8E8E8E8E8CACAC8A8CACACACACACCCCCCCCCCCCCCCCCCCCCAA),
    .INIT_1A(256'h6464646464646464646464646464646464646262626262626262626264646444),
    .INIT_1B(256'h6464646464646464646464848484A6C8A8848484646464646464646464EAC884),
    .INIT_1C(256'h8482826262626262424244E48484846464646464646464646464646464646464),
    .INIT_1D(256'h4444444284C4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4C4C4A4A4A4A4848484),
    .INIT_1E(256'hD3D3D3B3B2B0B2F3F1CCA8A88888A8A8A8C8A8A8A8A6A6868686866664646464),
    .INIT_1F(256'hB3B3B3B2B3B3B3B3B3B3B3B3B3B3B3B3B3B2B2B2B2B2B2B2B3B3D3D3D3D3D3D3),
    .INIT_20(256'hF9F9F9F9F9F9F9D9D9F9F9F9F9D9F9F9D9D7D7D7D7D7D7D7D5D5D5D5D5B5B3B3),
    .INIT_21(256'hD9D995D9F9F9F9F9F9F9F9F9F9F908E6080808282A2AC4A4E871F9F9F9F9F9F9),
    .INIT_22(256'h8A8A8A6A6A4848282828282828280808286CF7F9F9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_23(256'h62828484A4A4C64C8E8E8E8C8C8C8A8A8A8A8A8C8CACAAAAACAAAAAAAAAA8A8A),
    .INIT_24(256'hA664646464646464646464646464646464646262626262626262626264646444),
    .INIT_25(256'h646464846464646464646484848484A6C8C8A68464646464646464646464CAC8),
    .INIT_26(256'h8484828262626262626224A48484846464646464646464646464646464646464),
    .INIT_27(256'h64444484C4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4A4A4A4A484),
    .INIT_28(256'hD3D3D3D3D3D3F5F3CC88888888A8A8A8A8A8A8A8A6A686868686666464646464),
    .INIT_29(256'h90909090B2B3B2B2B2B3B3B3B3B3B3B2B2B2B2B2B0B0B0B2B2B2B3B3D3D3D3D3),
    .INIT_2A(256'hF9F9D9D9D9D7D7D7D9D9F9D9F9F9D9D9D7D7D7D7D7D7D7D7D5D5D5B5B5B3B3B3),
    .INIT_2B(256'hD9D953FBD7D7F7F9F9F9F9F9F9F94CE6060808282A2A4AC4A4A62CB7F9F9F9F9),
    .INIT_2C(256'h6A6A6A484A484828282828282808E606286EF7F9F9F9F9F9F7F9F9F9F9F9F9F9),
    .INIT_2D(256'h62828284A4A4A4C4286E8E8E8C6C6A6A6A6A6A6A6A8A6A6A6A8A6A6A6A6A6A6A),
    .INIT_2E(256'hA6A8846464646464646464646464646464646464626262626262626264646444),
    .INIT_2F(256'h64646484846464646464646464646484A6C8EAC88484646464646464646486A8),
    .INIT_30(256'h84848282826262626262E4848484846464646464646464646464646464646464),
    .INIT_31(256'h644484C6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4A4A4A4A484),
    .INIT_32(256'hD3D3D3D3D3F5F3CC8886868688A8A8A8A8A8A8A8A68686868686666464646464),
    .INIT_33(256'h9090909090909090909090B0B0B2B2B2B2B2B2B2B0B0B0B0B0B0B2B2B2D3D3D3),
    .INIT_34(256'hD9D9D9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5B5B5B3B3B39290),
    .INIT_35(256'hD9B74FD9D7D7D7F7F7F7F9F9F9F993E6E6E60808282A4A2AA4A4A60AD7F9F9F9),
    .INIT_36(256'h4A4A4848482828282828282808E6E608286CF7F9F9F9F9F9F7F7F7F7F7F7F7D9),
    .INIT_37(256'h6262828284A4A4A4C4E64C8E6C6C6A6A4A4A4A6A4A6A4A4A6A6A6A6A4A48484A),
    .INIT_38(256'hC886C88664646464646464646464646464646464646262626262626264646444),
    .INIT_39(256'h646464648464646464646464646464848484A6C8C8A684846464646464646486),
    .INIT_3A(256'h84848482826262646244C4848464846464646464646464646464646464646464),
    .INIT_3B(256'h6464C4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4A4A4A4A4),
    .INIT_3C(256'hB3D3D3D3F5F3AC888686868688A8A8A8A6A8A8A6868686868686666444646464),
    .INIT_3D(256'h90909090909090909090909090909090B2B2B0B0B0B0B0B0B0B0B0B0B2B2B2B2),
    .INIT_3E(256'hD9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5B5B5B3B3B3B29090),
    .INIT_3F(256'hD9B52DD9D7D7F7F7F7F7F7F7F7F7D7E6E6E6E60808082A4C0AA4A6A40AD7D7D7),
    .INIT_40(256'h4848282828282828282828E6C4E6E608286EF7F9F9F9F7F7F7F7F7F7F7F7D7D9),
    .INIT_41(256'h626282828284A4A4A4A4C4064A6C6C6A4A4A4A4A484A48484A4A484848482848),
    .INIT_42(256'h64A8C8A8A8846464646464646464646464646464646464626262626264646444),
    .INIT_43(256'h6464848484648464646464646464646464848484C8C8C6848464646464646464),
    .INIT_44(256'h8484848484826462640484848464846464646464646464646464646464646464),
    .INIT_45(256'h64A4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4A4A4A4A4A4),
    .INIT_46(256'hB3B3D3F5F1AC68666666868686A6A6A6A6A68686868686868666646464646464),
    .INIT_47(256'h90906E6E6E6E8E8E8E8E8E909090909090B0B0B0B0909090B0B0B0B0B0B0B0B2),
    .INIT_48(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D9D7D5D5D5D5B5B3B3B3B3909090),
    .INIT_49(256'hFB934CB5D7D7D7D7F7F7F7F7F7F7F7E6E6E6E6E60808082A6EE6A4A6A6EAD7D7),
    .INIT_4A(256'h28282828282828282808C4C4C4E6E6082A90F7F7F7F7F7F7F7F7F7F7F7F7D7D9),
    .INIT_4B(256'h62628282828282848482A2A2A4E62A4A4A4A4A28282828484A4A282828282828),
    .INIT_4C(256'h64648486CAECA864626464646464646464646464646464646464646464646444),
    .INIT_4D(256'h648484848484646464646464848464646484848484A6A8C8A684646464646464),
    .INIT_4E(256'hA4A484848484848444C484848484846464848484848484846464646464646464),
    .INIT_4F(256'h84C4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4C4C4A4A4A4),
    .INIT_50(256'hB0D3F5F1AC684444444666868686A6A686868686868686868666646464646464),
    .INIT_51(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E909090B0909090909090B0B0B0B090B0),
    .INIT_52(256'hD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D9D9B5D5D5D5B5B3B3B3B39190906E),
    .INIT_53(256'hFB934CB5D7D7D7D7D7D7D7F7F7F7F70AE6E6E6E6E60808084C4CA4A6A4A42ED7),
    .INIT_54(256'h2828080808082808E6C4C4C4C4E6E6082A92F7F9F7F7F7F7D7D7F7F7F7F7D7F9),
    .INIT_55(256'h626262828282828282828282A2A2C4E6082A2A28282828282828282828282828),
    .INIT_56(256'h646464646484C80CC8A664646464646464646464646464646464646464646444),
    .INIT_57(256'h648484848484846464646464846464646484646484848486A6A6868464646464),
    .INIT_58(256'hA4A4A48484848484048464848484648464848484848484846464646464646464),
    .INIT_59(256'hA4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4C4C4C4A4A4),
    .INIT_5A(256'hD5F7D18A46242424244466668686868686868686868686666666646464646464),
    .INIT_5B(256'h6E6E6E6E6C6C4C6E6E6E6E6E6E6E6E6E6E90909090909090909090B0B0909090),
    .INIT_5C(256'hD7D7D7D7D7D7D7D5D5D5D7D5D5D7D7D7D9B7B5B5B5D5D5B5B3B3B0909190706E),
    .INIT_5D(256'hF96F4CB5D7D7D7D7D7D7D7D7D7D7D74CE6E6E6E6E6E60808286EC6A6A6A6A693),
    .INIT_5E(256'h080808080806E6C4C4A4A4C4C6E6E62828B3F9D9F9F9F7F7D7D7F7F7F7F7D7F9),
    .INIT_5F(256'h8484626282828282828282828282A2A2A4C4E6082A0808282828080808080606),
    .INIT_60(256'h6464646464646484A6CACAA66464646464646464646464646464646464646444),
    .INIT_61(256'h84848484848484848484848464646464646464646464648484A6A6A886848464),
    .INIT_62(256'hA4A4A48484848444C48484848484648464848686868684848484846464646484),
    .INIT_63(256'hC4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4C4C4A4A4),
    .INIT_64(256'hF5AE684404020204242444666666868686868686868666666464646464646484),
    .INIT_65(256'h4E4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C6C6E6E9090909090909090909090B0D5),
    .INIT_66(256'hD5D7D7D7D7D7D5D5D5D5D5D5D5D5B7D9B773B5B5D5D5B5B5B390909090706E6E),
    .INIT_67(256'hB56F6C93D9D7D7D7D7D7D7D7F7D7D74CE6E6E6E6E6E6E8E8082A0AA4A6A6A4E8),
    .INIT_68(256'hE6E6E6C4C4A4A4A4A4A4A4C4C6E6082A2AD5D9F7F7F9F9F9F7D7F7F7D7D7D7D9),
    .INIT_69(256'h2EFD53A662626262626282828282828282A2A2A2A4C4C4E60808080606E6E6E6),
    .INIT_6A(256'h64646464646464646486A6CACA64646464646464646464646464646464646464),
    .INIT_6B(256'h84646464646464646464646464646464646464646464648484848486A8A8A684),
    .INIT_6C(256'hA4A4A4A484848424A4848484848464646484868686A686868484848484646464),
    .INIT_6D(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4C4C4A4A4),
    .INIT_6E(256'hAC482402E2E2E2E20424244444646464868666666666646464646464646464A4),
    .INIT_6F(256'h4C4C4C2A2A2A2A2C4C4C4C4C4C4C4C4C4C4C6E6E8E9090909090909090D3F5D1),
    .INIT_70(256'h71D5D5D5D5D5D5D5D5D5D5B5D5D5B7D95193B5B5B5B5B3B3B39090906E6E4E4C),
    .INIT_71(256'h716C8C91D9D7D7D5D5D7D7D7F7D7D74C0806E6E4E6E6E6E6E6082CA4A6A6A6A6),
    .INIT_72(256'hA2A2A2A2A4A4A4A4A4A4A4C4C6E608082AD7F9F9F9F9F9F9F7F7F7F7D7D7D7D9),
    .INIT_73(256'hC6D9FFBBEA626282626262628282828282828282828282A2A2A2A2A2A2A2A2A2),
    .INIT_74(256'h8464646464646464646484A8CAEC646464646464646464646464646464646464),
    .INIT_75(256'h6464646464646464646464646464646464846464646464648484848486A6C8A6),
    .INIT_76(256'hA4A4A4A4848464C4848464848484646464868686A6A6A6868684848484846464),
    .INIT_77(256'hE4E4E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4E4C4C4C4C4A4A4),
    .INIT_78(256'h4604E2E2C2C2C2C2E202042424444464646466666664646464646464646464C4),
    .INIT_79(256'h4C4C2A2A2A2A2A2A2A4C4C4C4C4C4C2C4C4C4C6E6E90909090908EB0F3F3AE8A),
    .INIT_7A(256'h0AB5B5B5B5B5D5D5D5D5B5B5D5B5B7B951B5D5B5B5B5B3B3B390908E6E6E4E4C),
    .INIT_7B(256'h6F8C8C6FD9D7D7D5D5D7D7D7D7D7D7B2B0AE8A26C4C4C6E6E6E82CC6C6C6C6C6),
    .INIT_7C(256'hA2A2A2A4A4A4A4A4A4A4A4C4C6E608082AF9F9F9F9F9F9F9F7F7F7D7D7D7D9D9),
    .INIT_7D(256'hC42CFDFFFDEC62626262628284828282828282828282828282828282A282A2A2),
    .INIT_7E(256'hA6848464646464646464646486C80F8664646464646464646464646464646464),
    .INIT_7F(256'h64646464646464646464646464646464646464646464646464648484848486C8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h3C0000000007FFFFFFFFF8207FFFFFFFFFFFFFFF801FFFFFFFFFFFFFFE000000),
    .INITP_01(256'hFFFFF0107FFFFFFFFFFFFFFF800FFFFFFFFFFFFFFC0000000000000000010000),
    .INITP_02(256'hFFFFFFFF0007FFFFFFFFFFFFFC00000000000000000080001E0000000007FFFF),
    .INITP_03(256'hFFFFFFFFFC0000000000000000004000060000000007FFFFFFFFF01FFFFFFFFF),
    .INITP_04(256'h0000000000002000000000000007FFFFFFFFF00FFFFDFFFFFFFFFFFF8007FFFF),
    .INITP_05(256'h000000000007FFFFFFFFC00FFFFFFFFFFFFFFFFF8003FFFFFFFFFFFFF8000000),
    .INITP_06(256'hFFFFFC0FFFFFFFFFFF9FFFFF8001FFFFFFFFFFFFF80000000000000000000800),
    .INITP_07(256'hE11FFFFF8000FFFFFFFFFFFFFF8000000000000000000400000000000007FFFF),
    .INITP_08(256'hFFFFFFFFFFC000000000000000000180000000000007FFFFFFFFFE07FFFFFFFF),
    .INITP_09(256'h0000000000000060000000000007FFFFFFFDFE03FFFFFFFFE003FFFF80007FFF),
    .INITP_0A(256'h000000000007FFFFFFF8FE000FFFFFFFF807FFFF80003FFFFFFFFFFFFFC00000),
    .INITP_0B(256'hFFF1FF0007FFFFFFFC1FFFFF00001FFFFFFFFFFFEFFC00000000000000000008),
    .INITP_0C(256'hFE7FFFFF00003FFFFFFFFFFFE7FE00000000000000000002000000000007FFFF),
    .INITP_0D(256'hFFFFFFFFC00C000000000000000000001E0000000007FFFFFFE7FF0007FFFFFF),
    .INITP_0E(256'h00000000000000001F800000001FFFFFFEE7FF0003FFFFFFFFFFFFFF00003FFF),
    .INITP_0F(256'h0FC00000001FFFFFFFE7FF8019FFFFFFFFFFFFFE00007FFFFFFFFFFF80000000),
    .INIT_00(256'hA4A4A4A4A4A42484848484848484848464848486A6A6A6A68686848484846464),
    .INIT_01(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_02(256'h02E2C2C2C2A2A2C2C2E2E20204242444646464646464646464646464646484E6),
    .INIT_03(256'h2C2C2A2A2A2A2A2A2A2A2A2A2C2A2A2A2C4C4E6E6E8E90909090D3F3CEAA6844),
    .INIT_04(256'hC693B5B5B5B5B5D5B5B5B3B3B7B7B95393B5D3B3B5B3B3B391906E6E6E4C4C4C),
    .INIT_05(256'h8F8C8C6FD9B7D5D5D5D5D5D7D9FBFBF7F2CEAA6806C4A4C4C6C608E8C6C6C6C6),
    .INIT_06(256'h8282A2A2A2A4A4A4A4A4C4C4E60808084CF9F9F9F9F9F9F9D9D7D7D7D7D7D9D9),
    .INIT_07(256'hC2C42CFBFFFDC862626262828282828282826282626282828282828282828282),
    .INIT_08(256'hA6A8A66464646464646464646464A82FA6646464646464646464646464646464),
    .INIT_09(256'h6464646464646464646464646464646464648464848464646464648464648484),
    .INIT_0A(256'hA4A4A4A4A486E68684848484848484848484848686A6A6A6A6A6868484848464),
    .INIT_0B(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_0C(256'h02E2C2A2A2A2A0A0C2C2E2E2020224444464646464444444446464646464A4E4),
    .INIT_0D(256'h2A2A2A2A2A2A2A0A2A2A2A2A2A2A2C2C2C4C4C6E6E6E6E8EB0D3F3CE88662402),
    .INIT_0E(256'hE86ED5B5B5B5B5B3B3B3B3B3B5B9973195B3B3B3B3B3B3B390906E6E4C4C4C2C),
    .INIT_0F(256'h8FAC8C4CD9D7D5D5D5D5D7FBFFFDF9F3CE8A6A28E6C6A482A4C6E60AE8E8E8E8),
    .INIT_10(256'h82828282A2A4A4A4A4A4C4C6E60808086EF9F9F9F9F9F9F9D9D7D7D7D7D7D9D7),
    .INIT_11(256'hC2E2E208B7FDB784626262626262628262626262626282828282828282828282),
    .INIT_12(256'h6486A88664646464646464646464648631A66464646464646464646464646464),
    .INIT_13(256'h8484848484848484848484848484848484848484848464646464646464646484),
    .INIT_14(256'hA4A4A4A4A446C68684848484848484848484848486A6A6A6A6A6868684848484),
    .INIT_15(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4A4),
    .INIT_16(256'hE2E2C2A0A0A0A0A0C2C2C2E2E20222244444444444444444446464646484C4E4),
    .INIT_17(256'h2A0A0A0A0A0A0A0A0A0A0A2A2A2A2A2A2C4C4C6E6E6E8EB0F3F0CC8844242402),
    .INIT_18(256'h2A4CB5B5B5B5B3B3B3B3B3B3B7BB317393B3B3B3B3B3B391906E6E4C4C2C2C2A),
    .INIT_19(256'hAFAC8C4CD9D7D5D5B5D7FDFFFDF9D3AC6A282806E6C6C6A48284A40A2C2C2C2A),
    .INIT_1A(256'h8282828282A2A2A2A4A4C4C6E608080893F9D7D7D7F9F9F9D9D9D7D7D7D7F9B5),
    .INIT_1B(256'h82C4E2E2E44C70A4626262626262626262626262626262828282828282828282),
    .INIT_1C(256'h646486A6A68664646464646464646464842FC884646464646464646464646464),
    .INIT_1D(256'h8484848484848484848484848484848484848484848464646464646464646464),
    .INIT_1E(256'hA4A4A4A48406A6A686868484848464648484848484A6A6A6A686868684848484),
    .INIT_1F(256'hE4E4E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4C4A4),
    .INIT_20(256'h02E2C2C2C0C0C2A0C2C2C2E2E20202222444444444444444446464646484E4E4),
    .INIT_21(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A2A2A2A2A2C4C6C6E8ED3F3CEAA664444242202),
    .INIT_22(256'h716FB3B3B3B3B3B3B3B3B393B999EF9393B293B3B3B39090906E4C4C2C2A2A2A),
    .INIT_23(256'hAFAC8A6FD9D7D5D5D7FDFFFDF7D18C4A28060606E6C6C6A4828282A471719171),
    .INIT_24(256'h8282828282A2A2A2A4A4C4C4E6080808D5D7D7D7D7F9F9D9D9D9D9D7D7D7F993),
    .INIT_25(256'h6082C4E2E2E4E4A2626262626262626262626262626262626282828282828282),
    .INIT_26(256'h64648484A6A68684646464646464646464840FEC866464646464646464646464),
    .INIT_27(256'h8484848484848484848484848484848484848484848484846464646464646464),
    .INIT_28(256'hA2A4A4A466E6C6C6A6A6868684848484848484848486A6A68686868686848484),
    .INIT_29(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_2A(256'h02E2C2C2C0C2C2C0C0C2C2C2E2E2020222224444444444444464646464C4E4E4),
    .INIT_2B(256'h0A0A0A0A0A08080A0A0A0A0A0A2A2A0A2A2A4C6C90F3F1CC8866444424242402),
    .INIT_2C(256'hB3B393B3B3B3B3B3B3B39393DB55319393B39391919190908E6E4C4C2A2A2A0A),
    .INIT_2D(256'hAFAE8A6FB7D7D5B7FDFFFDF7B16C4A280608E8E8E6E6C6A68462626071B5B3B3),
    .INIT_2E(256'h8282828282A2A2A2A2A4C4C4E608082AF7D7D9D9D9F9F9D9D9D9D7D7D7D7FB91),
    .INIT_2F(256'h406282C2E4E4E4A2626262626262626262626262626262626262828282828282),
    .INIT_30(256'h646464848486A6A68664646464646464646464CA0FA684646464646464646464),
    .INIT_31(256'h8484848484848484848484848484848484848484848484846464646464646464),
    .INIT_32(256'hA4A4A48426E8E8E8C8C6A6A6A6A68684848484848484A6868686868486848484),
    .INIT_33(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_34(256'h02E2C2C2C0C0C0C0C0C2C2C2C2E2E20202222444444444444464646484E6E4E4),
    .INIT_35(256'h0A0A0A0A0A08080A0AEAEA0A0A0A0A0A2A2A4CB1F3F1CC886644444444242402),
    .INIT_36(256'hB3D5B3B3B3B3B3B3B3939393DB0F719191919191919190906E6E6E4C2C2A0A0A),
    .INIT_37(256'hAFCC8A6FB7B7D7DBFFFDF7B06A280808060808080808E6A4A48262600C93B3B3),
    .INIT_38(256'h8282828282A2A2A2A4A4A4C6E608084CF9D7D7D9D9D9F9D9D9D9D7D7D7D7F98F),
    .INIT_39(256'h4242608082A2A282626262626262626262626062626262626262626282828282),
    .INIT_3A(256'h6464646464646484A8A684646464646464646464A82FECA86464646464646464),
    .INIT_3B(256'h8484848484848484848484848484848484848484848484648484646464646464),
    .INIT_3C(256'hA4A4A466080A080808E8C8C8C6C6A6A6A68686868484A6868684848486868684),
    .INIT_3D(256'hE4E4E4E4E4E6E6E6E4E4E4E4E4E6E6E6E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_3E(256'h02E2C2C2C2C0C0C0C2C2C2C2C2C2E2E2020222242424444464646464A4E4E4E4),
    .INIT_3F(256'h0A0A0AEAE8E8E808EAE8E808080A08080A6EF5F3CEAA86644444444444242402),
    .INIT_40(256'h91914E91B3B1B1B191919195970D7191919191919191907070908E6E4C2C2A0A),
    .INIT_41(256'hAFCC8A6FB7D9D7FFFDF7AE6A48080808080808082A0A08C6C6826260A62C6F6F),
    .INIT_42(256'h8282828282A2A2A4A4A4C4E6E6060891F7F7D7D7D7D7D7D7D7D7D7D7D7D7D98F),
    .INIT_43(256'h4242626060606262626262626262626060606060606262626262626262828282),
    .INIT_44(256'h646464646464848484A6A68684646464646464646464C80F0FA8646464646464),
    .INIT_45(256'h8484848484848484848484848484848484848484848484648484646464646464),
    .INIT_46(256'hA4A486480A0A0A0A0A0AE8E8C8C8C8C6A6A6A6A6A6A6A6A68686868686868684),
    .INIT_47(256'hE4E4E4E4E4E6E6E6E6E4E4E4E4E6E6E6E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_48(256'h02E2E2C2C2C0C0C0C2C2C2C2C2C2C2E2E20202042424444464648484C4E4E4E4),
    .INIT_49(256'h0A0A0AE8E8E8E8E8E8E8E8E8E8E8082AB3F5F1CCA88664444444444444242402),
    .INIT_4A(256'h2C4C0A2AB3B19090909091B7752D71909191919191909070709090906E4E2C2A),
    .INIT_4B(256'hCFCC8A4FB7D9B5FBF7B06A280808E8080808082A4C2C2AE6C6A4626282E8082A),
    .INIT_4C(256'h8282828282A2A2A4A4A4C4E6E60608D5F7F7D7D7D7F9F9F9D9D7D7D7D7D7D7AF),
    .INIT_4D(256'h4242626262626262626262626262626060606060626262626262626262628282),
    .INIT_4E(256'h6464646464648484648486A6A68664646464646464646464860F51EC64646464),
    .INIT_4F(256'h8484848484848484848484848484846484848484848484848484646464646464),
    .INIT_50(256'hA4A466080A0A2A0A0A0AEAE8E8E8E8E8C8C8C6C6A6A6A6A6A6A6A6A686868684),
    .INIT_51(256'hE4E4E4E4E4E6E6E6E6E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_52(256'h02E2E2C2C2C2C0C2C2C2C2C2C2C2C2C2E2E2020224244444646464A4E4E4E4E4),
    .INIT_53(256'h2A2A0A0A0AE8E8E8E8E8E8E8E80A6ED5F3F1CCA8866664444444444444240202),
    .INIT_54(256'hE8E8E6C64C919090909071FB514F7170707070707070707070909090706E6E4C),
    .INIT_55(256'hCFCC8A4FD9D74CF5B06A480808E6E8E808082A4C4D4F4CE8C6A4626262A4A6C6),
    .INIT_56(256'h8282828282A2A4A4A4A4C6E6E6082AF7F7F7D7D7D7F9F9F9F9F9D9F7D7D9D7AF),
    .INIT_57(256'h4242626262626262626262626262626060606060606062626262626262628282),
    .INIT_58(256'h646464646464646464648484A6A8A6846464646464646464646484EA31EC8644),
    .INIT_59(256'h8686868686868484848484848484848684848484848484848484848484846464),
    .INIT_5A(256'hA48628E8080A0A0A0A0A0A0A0A0AEAE8E8E8C8C8C8C8C6A6A6A6A6A6A6A68686),
    .INIT_5B(256'hE4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_5C(256'hE2E2E2C2C2C2C2C2C2A0A0C2C2C0C2C2E2E2E20224444464646464C4E4E4E4E4),
    .INIT_5D(256'h4C4C2A0A0A0AE8E8E8E8E8084ED5F5F3EECAA886666464646464644444240202),
    .INIT_5E(256'hA4A4A4C6E6919090909093DB0D6F91706E6E6E6E6E6E6E6E6E6E7070906E6E6E),
    .INIT_5F(256'hCFCCAC6DD993068E8C480808E8E8E8080A2A4C6F7191712CC6A6626262628484),
    .INIT_60(256'h8282828282A2A4A4A4C4E6E6E60890F7F7F7D7D7D7F9F9F9F9F9F9D7F9D9B5AF),
    .INIT_61(256'h424284EAC8846262626262626262606060606060606262626262626262626262),
    .INIT_62(256'h6464646464646464646464648486A6A686646464646464646464646486CA31EC),
    .INIT_63(256'hA6A6A6A6A6868686868684848484848484848484848484848484848484846464),
    .INIT_64(256'h844608E8E8080A0A0A0A080808080AE8EAE8E8E8E8C8C8C8C6A6A6A6A6A6A6A6),
    .INIT_65(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_66(256'hE2E2E2C2C2C2C2C2C2C0C0C2C2C2C2C2E2E20202224444646464A4E4E4E4E4E4),
    .INIT_67(256'h6E6E4E4C2C0A0AE8E8084CB3F5F3F1ECCAA88686646464646464644424020202),
    .INIT_68(256'h626282E6E62A6E6E6E6EB5970B6F8F906E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_69(256'hCFCCAC6FD76E04286A2808E8E80808082A4C6F91B3B5B54FC6C6826262426262),
    .INIT_6A(256'h8282828282A2A4A4C4C6E6E6E80AB5D7F7F7F7F9F9F9F9F9F9F9F9F9F9D7D5AF),
    .INIT_6B(256'h4082E8D9F9B62EA4626262626262606060606060606060606062626262626262),
    .INIT_6C(256'h646464646464646464646464646484A8A88664646464646464646464648486CA),
    .INIT_6D(256'hA6A6A6A6A6A6A6A6A68686868484868686848484848484848484848484846464),
    .INIT_6E(256'h6406C6C8E8E8E8E8E8E8E8E80808EAEAEAEAE8E8E8E8E8E8C8C8C6C6C6A6A6A6),
    .INIT_6F(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_70(256'hE2E2E2E2C2C2C2C0C2C0C2C2C2C2C2E2E2E20222424244646484E6E4E4E4E4E4),
    .INIT_71(256'h6E6E6E4E4E4C2A2A6ED3F5F3F1ECCACAA8868686646464646464444424020202),
    .INIT_72(256'h426262E8E6E64C4C4C4CB7512C6C6E6E6E6E6F6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_73(256'hEFCCAC6FB52806E4282808E8E808082A4C6F93B5D7D7D793E8C6846262424242),
    .INIT_74(256'h8282828282A4A4A4C4E6E606084CD5D7F7F7F9F9F9F9F9F9F9F9D9F9F9D7F7CF),
    .INIT_75(256'h62A4C42AD6FBFBD6288060626262606060606060606060606062626262626262),
    .INIT_76(256'h6464646464646464646464646464648486A8A684646464646464646464646486),
    .INIT_77(256'hC8C8C8C8C8C8A6A6A6A6A6A68686868684848484848484848484848484848484),
    .INIT_78(256'h24C6A6C6C6C8C8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C8),
    .INIT_79(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C4A4A4),
    .INIT_7A(256'hE2E2E2E2E2C2C2C2C2C2C2C2C2C2E2E2E20202222242424262C4E4E4E4E4E4E4),
    .INIT_7B(256'h6E6E6E6E6E91B5F5F5F3EFECCACACAA8A88686666464646664442424020202E2),
    .INIT_7C(256'h4242620808E6E84C4C2CD92D6F6C4C4C4E6E6E6E6E6E6E6E4E6E6E6E6E6E6E6E),
    .INIT_7D(256'hEFEFAA6FD92A0604060608E8E8082A4C6FB3D5D7F9F9F9D72CC6846284424240),
    .INIT_7E(256'h82828282A2A4A4A4C6E6E6062890D5D7F7F9F9F9F9F9F9F9F9F9D9F9F9D7D3CF),
    .INIT_7F(256'h60A2C4E408B2F6F2CE2680626262606060606060606040406060626262626262),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFEFFF8019FFFFFFFFFFFFFE0000FFFFFFFFFFFF000000000000000000000000),
    .INITP_01(256'hFFFFFFFE0003FFFFFFFFFFFF00000000000000000000000003C00000001FFFFF),
    .INITP_02(256'hFFFFFFFE00000000000000000000000001800000001FFFFFFFEFFF801DFFFFFF),
    .INITP_03(256'h000000000000000000000000003FFFFFFFFFFF801EFFFFFFFFFFFFFF8001FFFF),
    .INITP_04(256'h00000000003FFFFFFFFFFF801EFFFFFFFFFFFFFFE0001FFFFFFFFFFC00000000),
    .INITP_05(256'hFFFFFF801EFFFFFFFFFFFFFFF7E00FFFFFFFFFFC000000000000000000000000),
    .INITP_06(256'hFFFFFFFFFFC007FFFFFFFFF800000000000000000000000000000000007FFFFF),
    .INITP_07(256'hFFFFFFF800000000000000000000000000000000007FFFFFFFFFFF801EFFFFFF),
    .INITP_08(256'h00000000000000000000000000FFFFFFFFFFFF801F3FFFFFFFFFFFFFFF9E03FF),
    .INITP_09(256'h0000000000FFFFFFFFFFFF803F3FFFFFFFFFFFFFF87F01FFFFFFFFF000000000),
    .INITP_0A(256'hFFFFFF803F3FFFFFFFFFFFFFF03F80FFFFFFFFE0000000000000000000000000),
    .INITP_0B(256'hFFFFFFFF8007807FFFFFFFE00000000000000000000000000000000001FFFFFF),
    .INITP_0C(256'hFFFFFFC00000000000000000000000000000000001FFFFFFFFFFFF803F7FFFFF),
    .INITP_0D(256'h00000000000000000000000001FFFFFFFFFFFFC03EFFFFFFFFFFFFFFC007C03F),
    .INITP_0E(256'h0000000003FFFFFFFFFFFFE03FFFFFFFFFFFFFFFC003E01FFFFFFFC000000000),
    .INITP_0F(256'hFFFFFFE07FFFFFFFFFFFFFFFF001F00FFFFFFFC0000000000000000000000000),
    .INIT_00(256'h648464646464646464646464646464646484A6A8A68664646464646464646464),
    .INIT_01(256'hC8C8C8C8C8C8C6C6C8C8A6A6A686868686868686868686848484848484848484),
    .INIT_02(256'hE6A6A6A6A6C6C6C8C8C8E8E8E8E8E8E8E8E8E8C8C8C8C8C8C8C8C6C6C8C8C8C8),
    .INIT_03(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4A4A464),
    .INIT_04(256'hE2E2E2E2E2E2C2C2C2C2C2C2E2E2E2E20202022222224262A4E4E4E4E4E4E4E4),
    .INIT_05(256'h6E6E6EB3D5F5F3F1CECCAAA8C8A8A8A8868666666464646444442402020202E2),
    .INIT_06(256'h4040622A0AE8C62A2C71B92B8F6C4C4C4C4C4C4E4E4E4E4E4C4C4E4E6E6E6E6E),
    .INIT_07(256'hEFEFAA6FFBB72A6A260406E808082A6F91B5D7F9F9FBFBFB4FC6A46284424240),
    .INIT_08(256'h82828282A2A4A4C4C6E6E6062AB3D5D7F7F9F9F9F9F9F9F9F9F9F9F9F9D7B1CF),
    .INIT_09(256'h4082C4E4E4E44AACAA8AA2626262606040404040404040406060626262626282),
    .INIT_0A(256'h8484646464646464646464646464646464646486A8A886846464646464646464),
    .INIT_0B(256'hC6C6C8C8C8C8C8C8E8C8C8A6A6A6A6A6A6868686868686868484848484848484),
    .INIT_0C(256'hA6A6A686A6A6A6A6C6C8C8C8E8E8E8E8E8E8C8C6C6C6C6C6C8C6C6C6C6C6C6C6),
    .INIT_0D(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4A4C2A404),
    .INIT_0E(256'hE2E2E2E2E2E2E2E2E2E2E2E2E2E2020202020222222264C4E4E4E4E4E4E4E4E4),
    .INIT_0F(256'h6EB1D5F5F3CFCCAAA8888888A8A8A886866666666464644444242202020202E2),
    .INIT_10(256'h4040624C2C08E6082C95934DB14C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C6E6E),
    .INIT_11(256'hEFF1AA6CD9FDB76A462406E608084C6FB3D5F7F9FBFBFBFB93C6A66284424040),
    .INIT_12(256'h828282A2A4A4A4C6E6E6E6086CD5D5F7F9F9F9F9F9F9F9F9F9F9F9F9D9D7B1EF),
    .INIT_13(256'h4060A2E4E4E4E40404E2A2626262424040404040404042406062626262626282),
    .INIT_14(256'h8484646464646464646464646464646464646464848686868664646464646464),
    .INIT_15(256'hC6C6C8C8C8C8C8C8E8E8C8C8A6A8C8C8A8A6A6A6A6A686868686868686848484),
    .INIT_16(256'h8686868686A6A6A6A6A6A6C6C6C8C8C8E8C8C6A6A6A6A6C6C6C6A6C6A6A6A6C6),
    .INIT_17(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4A4A464C6),
    .INIT_18(256'h02E2E2E2E2E2E2E2E2E2E2E2E2E2E2020202020242A4E6E4E4E4E4E4E4E4E4E4),
    .INIT_19(256'hF5F5F1CEAA888666666666668686868666666666646444442422020202020202),
    .INIT_1A(256'h404082714D2A08E62CB72D8FB14C4C4C4C4C4C4C4C4C4C4C2C2C4C4C4C4C6EB3),
    .INIT_1B(256'hEFEFAC6CB5FBF9D26846260608084A6FB3D5F7F9FBFBFBFB95C6A66262404040),
    .INIT_1C(256'h8282A2A4A4A4C4C6E6E6062A90B3D7F9F9F9F9F9F9F9F9F9F9F9F9F9F9D7B1EF),
    .INIT_1D(256'h406060A2C2C4E4E4E4C482626262404040404040404042406062626262628282),
    .INIT_1E(256'h84846484848464646464646464646464646464646464648686A6866464646464),
    .INIT_1F(256'hA6A6C6C6C6C6C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8A8A8A6A6A6868686868484),
    .INIT_20(256'h86868686868686A6A6A6A6A6A6C6C6C8C8C8A6A6A6A6A6C8C8C6A6A6A6A6A6A6),
    .INIT_21(256'hE4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4C4C4C4A484E4A6),
    .INIT_22(256'h020202E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E40486E4E4E4E4E4E4E6E4E4E4E4),
    .INIT_23(256'hD1CC8A6666444444444444446464666666666444444444242202020202020202),
    .INIT_24(256'h404084936F4C08E62C732A8FAF4C4C4C4C4C4C4C4C2C4C4C2C2C4C4C6EB1F5F3),
    .INIT_25(256'hEFEFAC6C70D6F2F4D06624060808286C91B5D7F9FBFBFBFBB5C6A46262424240),
    .INIT_26(256'h828282A4A4A4C4C6E6E6284AB3B3F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9D5D1EF),
    .INIT_27(256'h4040606082A2C2C4C4A282626240404040404040404242626262626262628282),
    .INIT_28(256'h86868684848484848464646464646464646464646464646484A6A8A684646464),
    .INIT_29(256'h86A6A6A6A6A6A6C6C8C8C8C6C6C8C8E8E8C8C8C8C8C8C8C8C8A8A6A6A6868686),
    .INIT_2A(256'h8686868686868686868686A6A6A6A6C6C6A6A6A6A6A6C8C8C8C8C8A6A6A68686),
    .INIT_2B(256'hE4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4E4C4C4A48424A686),
    .INIT_2C(256'h02020202E2020202020202E2E2E2E2E2E4E4C6C646C6E4E4E4E4E4E6E4E4E4E4),
    .INIT_2D(256'h8866442424242424242424444444446464644444442424220202020202020202),
    .INIT_2E(256'h4040A4B3916E2AE64F2C2AAF8E4C4C4C4C2C2C2C2C2C4C4C4C4C4CB1F5F3CEAC),
    .INIT_2F(256'hEFF1AC8C2AF6F0F0F0F068482828064A8F91B5F7F9FBFBFBB7C6A46262404242),
    .INIT_30(256'h8282A2A4A4C4C6E6E6062A6EB3B3F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9D5D1EF),
    .INIT_31(256'h40404060606082A2A28282626040404040404040426262626262626262628282),
    .INIT_32(256'hA68686868686868684848484648484848464646464646464648486A6A6866464),
    .INIT_33(256'h86A6A6A6A6A6A6A6C6C6C6C6A6C6C8C8C8C8E8E8E8E8C8C8C8C8C8C8A8A6A6A6),
    .INIT_34(256'h868686868686868686868686A6A6A6A6A6A6A6A6A6A6C8C8E8E8C8C8C8A6A6A6),
    .INIT_35(256'hE6E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4E6E4E4E4E4E4C4C4C4A464C68686),
    .INIT_36(256'h02020202020202020202E2E2E2E4E6E6C6C6A6A6C626A6E4E4E4E4E6E4E4E4E6),
    .INIT_37(256'h4424242424242424242424444444444444444424242424020202020202020202),
    .INIT_38(256'h4242C6B3916F4CE808084AD34C4C2C2C2C2C2C2C2C2C2C4C6CB1F3F1CC8A6846),
    .INIT_39(256'hEEF1CC8C2AB0EEEEECEEF0AC46040424488F91B3F7F9FBFBD9C6A46262424242),
    .INIT_3A(256'h8282A4A4A4C4C6E6E6282AB1B1D7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D5CFEF),
    .INIT_3B(256'h4040406060606282828262626040424040404240406262626262626262628282),
    .INIT_3C(256'hA6A6A6A6A6A6A6868686868684848484848484848484846464648484A6A68664),
    .INIT_3D(256'hA6A6A6A68686A6A6A6A6A6A6A6A6C8C8C8C8E8E8E8E8E8E8E8E8C8C8C8C8A8A6),
    .INIT_3E(256'h86868686868686868686868686A6A6A6A6A6A6A6A6A6C8C8E8E8E8E8C8C8C6A6),
    .INIT_3F(256'hE6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4C4C4C4C28406A68686),
    .INIT_40(256'h020202020202020202E2E406280808E8C8C6A6A6A6C626A6E6E4E6E6E4E4E4E6),
    .INIT_41(256'h2424242424242424242424444444444444242424242424020202020202020202),
    .INIT_42(256'h6260E8B3918F4C08E6C24AF54C2C2C2C2C2C2C2C2C2C4CB0D3D1AC8A66442424),
    .INIT_43(256'hF0F1EE8A286CF0ECECECEEECCC88464424268EB193D7F9FBD9C6846262424262),
    .INIT_44(256'h8284A4A4C4C4C6E606286CB1B3F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D5CFEF),
    .INIT_45(256'h4040406060606282828262626040424240424240406262626262626262828282),
    .INIT_46(256'hC8A8A8A6A6A6A6A6A6A68686868686868686868686868686846484848484A6A6),
    .INIT_47(256'hC6A6A6A6A686868686A6A6A6A6A6A6C6C6C6C8C8E8E8E8E8E8E8E8C8C8C8C8C8),
    .INIT_48(256'h868686868686868686868686868686868686868686A6A6C8C8E8E8E8E8E8C8C8),
    .INIT_49(256'hE6E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4C4C4C4A444C6868686),
    .INIT_4A(256'h0202020202E2E2E2E406082A2A0A0808E8C8C6A6A6A6C626A6E4E4E6E6E6E6E6),
    .INIT_4B(256'h2424242424242424242424242424242424242424242402020222222202020202),
    .INIT_4C(256'h62600AB3916F4C08E6C228F54C2C2C2C2C2C2A2C6CB0D3D1AC8A684444242424),
    .INIT_4D(256'hF0F1EEAA4848D0CAEAECECECECECCC884624246CB393B5D9D9C6846262626262),
    .INIT_4E(256'h84A4A4A4C4C4E6E628288E91D5F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D5CFF1),
    .INIT_4F(256'h4040404062606282828262626240424242424240606262626262628282828282),
    .INIT_50(256'hC8C8C8C8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68686848484848486),
    .INIT_51(256'hC8C8C8C8A6A6868686A6A6A6A6A6A6A6A6A6C6C6C6C8C8E8E8E8E8C8C8C8C8C8),
    .INIT_52(256'h868686868686868686868686868686868686868686A6A6A6C6C8C8C8E8E8E8E8),
    .INIT_53(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4E4C4C4A484E686868686),
    .INIT_54(256'h02020202E2E2E4E6E8E8080A0A0A0A0808E8C8C6A6A6A6C626A6E4E4E6E6E6E6),
    .INIT_55(256'h2424242424242424242424242424242424242424242424222222222222020202),
    .INIT_56(256'h62602CB3916F4A08E6C28CB02C2C2C2C2C2C6EB1F3CEAC886644242424242424),
    .INIT_57(256'hF1F0EEEC6826AECACAEACAECEEEEEEEECC8A460428D3D5B593C6846262626262),
    .INIT_58(256'hA4A4A4A4C4C4E606086E9091F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D3CFEF),
    .INIT_59(256'h40404040626062628282626262404040404040426262626262626282828282A4),
    .INIT_5A(256'hC8C8C8C8C6A6C8A8A8A6A6A6A6A6A6A6A6C8C8C8C8C8C8A6A6A6868484848464),
    .INIT_5B(256'hE8E8C8C8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C8C8C8C8C8C8C8C8C8C8),
    .INIT_5C(256'h86868686868686868686868686868686868686868686A6A6A6A6A6C6C8C8E8E8),
    .INIT_5D(256'hE4E4E4E4E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4E4E4E4C4C4C4A424A686868686),
    .INIT_5E(256'h02E2E4E4E6E6C6C6C8C8E8E8E80A0A0A0AE8C8C6C6A6A6A6C626C6E6E6E6E6E6),
    .INIT_5F(256'h2424242424242444444444444444444444442424242424222222222222020202),
    .INIT_60(256'h62606E91916C2A06C448688E4C2C4C4C6EB1F3CEAC8866444424242424242444),
    .INIT_61(256'hF1F1EEECAA466AACAAC8A8CAECEEF0F0EEEECEAC68486C9191C6A46262626262),
    .INIT_62(256'hA4A4A4C4C4C4E6064A8E90B3F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D3CFEF),
    .INIT_63(256'h40404040626060628282626262626262626262626262626262628282828282A4),
    .INIT_64(256'hC6C6C6C6A6A6A6A6A6A6A8A6A6A6A6A6C6C6C6C8C8C8C8C8C8A6A6A686848464),
    .INIT_65(256'hE8E8E8C8C8C8C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6C6C8C6C8C8C8C6),
    .INIT_66(256'h86868686868686868686868686868686868686868686868686A6A6A6A6C8E8E8),
    .INIT_67(256'hE4E4E4E4E4E4E6E4E4E4E4E4E4E6E6E4E4E4E4E4E4E4C4C4A466C68686868686),
    .INIT_68(256'h0606E6C6C6C6C6C6C6C6C8C8E8082A2A2A0AE8E8C6A6A6A6A6C646C6E4E4E6E6),
    .INIT_69(256'h2424242424244444446466868686866666444422222422222222222222040404),
    .INIT_6A(256'h62804C6C6C4A06C22668688C4C4C8ED3F1CEAA88664444242424242424242424),
    .INIT_6B(256'hF1EFEEECAA6848AEA8A8A8A8CACCEEF0F1F1F0F0F0D0D1B16C06C48262626262),
    .INIT_6C(256'hA4A4C4C4C4E6E6088E8E90F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D3EFEF),
    .INIT_6D(256'h40404040606060626262626262626262626262606062626262628282828282A4),
    .INIT_6E(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6C6C8C8C8C8C8C8C8A6A6A68684),
    .INIT_6F(256'hE8E8E8E8E8C8C8C8C6A6A6A6A6A6A6A6A6A6A68686A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_70(256'h86868686868686868686868686868686868686868686868686868686A6A6C6C8),
    .INIT_71(256'hE4E4E4E4E4E4E4E4E4E4E4E4E4E6E6E6E4E4E4E4E4E4C4C4A426A68686868686),
    .INIT_72(256'h0A08E8E8C6C6C6C6C6C6C6C6C8E80A0A2A2A0AE8C8C8A6A6A6A6C666E6E4E4E4),
    .INIT_73(256'h244444442444444444444464644442424242424242424262626284A68A4C4A2A),
    .INIT_74(256'h82A26C4A482604486868688E8ED3F1CEAA886646442424242424242424444424),
    .INIT_75(256'hEFEEEEECA86A686C8A88A8A8A8CACAECEEF0F0F0F0F3F1D1F38E06A282826262),
    .INIT_76(256'hA4A4C4C4C4E6066C8E8EB3F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9B1CFEF),
    .INIT_77(256'h404040606060606262626262606262626262626262626262626282828282A2A4),
    .INIT_78(256'hA6A6A6A6A6A6A6A6A686868686A6A6A6A6A6A6A6C6C6C6C6C8C8C8C8C6A6A686),
    .INIT_79(256'hC8C8C8E8E8C8C8C8C8C8C8C6A6A6A6A6A6A6A6A686868686A6A686A6A6A6A6A6),
    .INIT_7A(256'h8686868686868686868686868686868686868686868686868686868686A6A6C6),
    .INIT_7B(256'hE4E4E4E4E4E4E4E4E4E4E4E4E6E6E6E6E4E4E4E4E4E4E4C46808C8A6A6868686),
    .INIT_7C(256'h2C2A2A0AE8E8C8C8C6C6C6C6C8C8E80A0A0A0A0AE8C8C6A6A6A6A6E666E6E4E4),
    .INIT_7D(256'h2444444422224242424444646464648484848484A4A4A4A4C4C4C6CA8C4C4C2C),
    .INIT_7E(256'hA228AEAE8C8A8A68688888F3F1CEAA8866444444242424242424242424444424),
    .INIT_7F(256'hCECEEECC888A4826AC88A8A8A8A8CACAECECEEF0F0F3F5F3F5F76CE4A2A28282),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "17" *) (* C_ADDRB_WIDTH = "17" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "26" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.042558 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "76800" *) (* C_READ_DEPTH_B = "76800" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "76800" *) 
(* C_WRITE_DEPTH_B = "76800" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [16:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [16:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [16:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [16:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
