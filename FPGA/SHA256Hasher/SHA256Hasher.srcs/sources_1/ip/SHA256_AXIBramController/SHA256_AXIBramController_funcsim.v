// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Wed May 27 16:35:27 2015
// Host        : SUPER-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/Dropbox/Dropbox/Projects/Complex/mrtech/sha256/workspace/alternative/FPGA/SHA256Hasher/SHA256Hasher.srcs/sources_1/ip/SHA256_AXIBramController/SHA256_AXIBramController_funcsim.v
// Design      : SHA256_AXIBramController
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "SHA256_AXIBramController,axi_bram_ctrl,{}" *) 
(* core_generation_info = "SHA256_AXIBramController,axi_bram_ctrl,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=4096,C_BRAM_ADDR_WIDTH=12,C_S_AXI_ADDR_WIDTH=14,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=12,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=1,C_FAMILY=zynq,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}" *) 
(* NotValidForBitStream *)
module SHA256_AXIBramController
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
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
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input s_axi_aresetn;
  input [11:0]s_axi_awid;
  input [13:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [11:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [11:0]s_axi_arid;
  input [13:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  output [3:0]bram_we_a;
  output [13:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;

  wire [13:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [13:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;

(* C_BRAM_ADDR_WIDTH = "12" *) 
   (* C_BRAM_INST_MODE = "EXTERNAL" *) 
   (* C_ECC = "0" *) 
   (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
   (* C_ECC_TYPE = "0" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_FAULT_INJECT = "0" *) 
   (* C_MEMORY_DEPTH = "4096" *) 
   (* C_SINGLE_PORT_BRAM = "1" *) 
   (* C_S_AXI_ADDR_WIDTH = "14" *) 
   (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
   (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
   (* C_S_AXI_DATA_WIDTH = "32" *) 
   (* C_S_AXI_ID_WIDTH = "12" *) 
   (* C_S_AXI_PROTOCOL = "AXI4" *) 
   (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   SHA256_AXIBramController_axi_bram_ctrl__parameterized0 U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[13:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module SHA256_AXIBramController_SRL_FIFO
   (D,
    E,
    bid_gets_fifo_load,
    I1,
    s_axi_aclk,
    s_axi_awid,
    I2,
    p_1_out,
    axi_wdata_full_reg,
    s_axi_wvalid,
    wr_data_sng_sm_cs,
    axi_wr_burst,
    s_axi_wlast,
    I3,
    AW2Arb_BVALID_Cnt,
    s_axi_bready,
    I4,
    bid_gets_fifo_load_d1);
  output [11:0]D;
  output [0:0]E;
  output bid_gets_fifo_load;
  input I1;
  input s_axi_aclk;
  input [11:0]s_axi_awid;
  input I2;
  input p_1_out;
  input axi_wdata_full_reg;
  input s_axi_wvalid;
  input [1:0]wr_data_sng_sm_cs;
  input axi_wr_burst;
  input s_axi_wlast;
  input I3;
  input [2:0]AW2Arb_BVALID_Cnt;
  input s_axi_bready;
  input I4;
  input bid_gets_fifo_load_d1;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire CI;
  wire [11:0]D;
  wire D_0;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire [11:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire \n_0_Addr_Counters[0].FDRE_I ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_4 ;
  wire \n_0_Addr_Counters[1].FDRE_I ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].FDRE_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].FDRE_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire n_0_Data_Exists_DFF_i_1;
  wire n_0_Data_Exists_DFF_i_2;
  wire \n_0_axi_bid_int[11]_i_4 ;
  wire \n_0_axi_bid_int[11]_i_5 ;
  wire \n_0_axi_bid_int[11]_i_7 ;
  wire \n_0_axi_bid_int[11]_i_8 ;
  wire p_1_out;
  wire s_axi_aclk;
  wire [11:0]s_axi_awid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire [1:0]wr_data_sng_sm_cs;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(D_0),
        .Q(\n_0_Addr_Counters[0].FDRE_I ),
        .R(I1));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\n_0_Addr_Counters[2].FDRE_I ,\n_0_Addr_Counters[1].FDRE_I ,\n_0_Addr_Counters[0].FDRE_I }),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D_0}),
        .S({S,S2_out,S4_out,S6_out}));
LUT4 #(
    .INIT(16'h8C40)) 
     \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_5 ),
        .I1(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I2(bid_fifo_not_empty),
        .I3(\n_0_Addr_Counters[0].FDRE_I ),
        .O(S6_out));
LUT5 #(
    .INIT(32'h10003030)) 
     \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(\n_0_axi_bid_int[11]_i_5 ),
        .I1(I2),
        .I2(p_1_out),
        .I3(bid_fifo_not_empty),
        .I4(\n_0_Addr_Counters[0].MUXCY_L_I_i_4 ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
     \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(I2),
        .I1(p_1_out),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(\n_0_Addr_Counters[1].FDRE_I ),
        .I4(\n_0_Addr_Counters[3].FDRE_I ),
        .I5(\n_0_Addr_Counters[2].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[0].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_4 ));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(\n_0_Addr_Counters[1].FDRE_I ),
        .R(I1));
LUT4 #(
    .INIT(16'h8C40)) 
     \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_5 ),
        .I1(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I2(bid_fifo_not_empty),
        .I3(\n_0_Addr_Counters[1].FDRE_I ),
        .O(S4_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(\n_0_Addr_Counters[2].FDRE_I ),
        .R(I1));
LUT4 #(
    .INIT(16'h8C40)) 
     \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_5 ),
        .I1(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I2(bid_fifo_not_empty),
        .I3(\n_0_Addr_Counters[2].FDRE_I ),
        .O(S2_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(\n_0_Addr_Counters[3].FDRE_I ),
        .R(I1));
LUT4 #(
    .INIT(16'hA208)) 
     \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(bid_fifo_not_empty),
        .I2(\n_0_axi_bid_int[11]_i_5 ),
        .I3(\n_0_Addr_Counters[3].FDRE_I ),
        .O(S));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Data_Exists_DFF_i_1),
        .Q(bid_fifo_not_empty),
        .R(I1));
LUT5 #(
    .INIT(32'hAABAAA30)) 
     Data_Exists_DFF_i_1
       (.I0(bid_fifo_not_empty),
        .I1(I2),
        .I2(p_1_out),
        .I3(n_0_Data_Exists_DFF_i_2),
        .I4(\n_0_axi_bid_int[11]_i_5 ),
        .O(n_0_Data_Exists_DFF_i_1));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     Data_Exists_DFF_i_2
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[0].FDRE_I ),
        .O(n_0_Data_Exists_DFF_i_2));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[11]),
        .Q(bid_fifo_rd[11]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[10].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[1]),
        .Q(bid_fifo_rd[1]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[11].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[0]),
        .Q(bid_fifo_rd[0]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[10]),
        .Q(bid_fifo_rd[10]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[2].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[9]),
        .Q(bid_fifo_rd[9]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[3].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[8]),
        .Q(bid_fifo_rd[8]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[4].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[7]),
        .Q(bid_fifo_rd[7]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[5].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[6]),
        .Q(bid_fifo_rd[6]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[6].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[5]),
        .Q(bid_fifo_rd[5]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[7].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[4]),
        .Q(bid_fifo_rd[4]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[8].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[3]),
        .Q(bid_fifo_rd[3]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[9].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[2]),
        .Q(bid_fifo_rd[2]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[0]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[0]),
        .I5(bid_fifo_rd[0]),
        .O(D[0]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[10]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[10]),
        .I5(bid_fifo_rd[10]),
        .O(D[10]));
LUT6 #(
    .INIT(64'h0400FFFF04000400)) 
     \axi_bid_int[11]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(\n_0_axi_bid_int[11]_i_5 ),
        .I5(bid_fifo_not_empty),
        .O(E));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[11]_i_2 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[11]),
        .I5(bid_fifo_rd[11]),
        .O(D[11]));
LUT6 #(
    .INIT(64'h00000000000040FF)) 
     \axi_bid_int[11]_i_4 
       (.I0(bid_fifo_not_empty),
        .I1(s_axi_bready),
        .I2(I4),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[2]),
        .O(\n_0_axi_bid_int[11]_i_4 ));
LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
     \axi_bid_int[11]_i_5 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(\n_0_axi_bid_int[11]_i_7 ),
        .I5(\n_0_axi_bid_int[11]_i_8 ),
        .O(\n_0_axi_bid_int[11]_i_5 ));
LUT6 #(
    .INIT(64'hCC40CCE0000000A0)) 
     \axi_bid_int[11]_i_7 
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(p_1_out),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(axi_wr_burst),
        .I5(s_axi_wlast),
        .O(\n_0_axi_bid_int[11]_i_7 ));
LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
     \axi_bid_int[11]_i_8 
       (.I0(bid_gets_fifo_load_d1),
        .I1(I4),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_axi_bid_int[11]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[1]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[1]),
        .I5(bid_fifo_rd[1]),
        .O(D[1]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[2]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[2]),
        .I5(bid_fifo_rd[2]),
        .O(D[2]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[3]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[3]),
        .I5(bid_fifo_rd[3]),
        .O(D[3]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[4]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[4]),
        .I5(bid_fifo_rd[4]),
        .O(D[4]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[5]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[5]),
        .I5(bid_fifo_rd[5]),
        .O(D[5]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[6]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[6]),
        .I5(bid_fifo_rd[6]),
        .O(D[6]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[7]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[7]),
        .I5(bid_fifo_rd[7]),
        .O(D[7]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[8]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[8]),
        .I5(bid_fifo_rd[8]),
        .O(D[8]));
LUT6 #(
    .INIT(64'hFFFFFBFF04000000)) 
     \axi_bid_int[9]_i_1 
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .I4(s_axi_awid[9]),
        .I5(bid_fifo_rd[9]),
        .O(D[9]));
LUT4 #(
    .INIT(16'h0400)) 
     bid_gets_fifo_load_d1_i_1
       (.I0(I3),
        .I1(p_1_out),
        .I2(I2),
        .I3(\n_0_axi_bid_int[11]_i_4 ),
        .O(bid_gets_fifo_load));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_MEMORY_DEPTH = "4096" *) 
(* C_BRAM_ADDR_WIDTH = "12" *) (* C_S_AXI_ADDR_WIDTH = "14" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "12" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* C_SINGLE_PORT_BRAM = "1" *) (* C_FAMILY = "zynq" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_ECC = "0" *) (* C_ECC_TYPE = "0" *) 
(* C_FAULT_INJECT = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SHA256_AXIBramController_axi_bram_ctrl__parameterized0
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
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
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [11:0]s_axi_awid;
  input [13:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [11:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_arid;
  input [13:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [13:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [13:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [13:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[13:2] = \^bram_addr_a [13:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
SHA256_AXIBramController_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.O1(s_axi_rlast),
        .O2(s_axi_rvalid),
        .O3(\^bram_addr_a [2]),
        .O4(\^bram_addr_a [4]),
        .O5(\^bram_addr_a [3]),
        .O6(\^bram_addr_a [5]),
        .O7(bram_rst_a),
        .O8(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a [13:6]),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module SHA256_AXIBramController_axi_bram_ctrl_top
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    bram_addr_a,
    O8,
    s_axi_bid,
    bram_wrdata_a,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    s_axi_wready,
    bram_we_a,
    bram_en_a,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_arsize,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awlen,
    s_axi_awid,
    s_axi_aclk,
    s_axi_awburst,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output [7:0]bram_addr_a;
  output O8;
  output [11:0]s_axi_bid;
  output [31:0]bram_wrdata_a;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_wready;
  output [3:0]bram_we_a;
  output bram_en_a;
  input [2:0]s_axi_awsize;
  input [13:0]s_axi_awaddr;
  input [2:0]s_axi_arsize;
  input [13:0]s_axi_araddr;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_awlen;
  input [11:0]s_axi_awid;
  input s_axi_aclk;
  input [1:0]s_axi_awburst;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_a;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire [7:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

SHA256_AXIBramController_full_axi \GEN_AXI4.I_FULL_AXI 
       (.O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module SHA256_AXIBramController_full_axi
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    bram_addr_a,
    O8,
    s_axi_bid,
    bram_wrdata_a,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    s_axi_wready,
    bram_we_a,
    bram_en_a,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_arsize,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awlen,
    s_axi_awid,
    s_axi_aclk,
    s_axi_awburst,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output [7:0]bram_addr_a;
  output O8;
  output [11:0]s_axi_bid;
  output [31:0]bram_wrdata_a;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_wready;
  output [3:0]bram_we_a;
  output bram_en_a;
  input [2:0]s_axi_awsize;
  input [13:0]s_axi_awaddr;
  input [2:0]s_axi_arsize;
  input [13:0]s_axi_araddr;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_awlen;
  input [11:0]s_axi_awid;
  input s_axi_aclk;
  input [1:0]s_axi_awburst;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_a;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire [11:10]RdChnl_BRAM_Addr_Ld;
  wire [11:1]WrChnl_BRAM_Addr_Ld;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire [7:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_2;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2 ;
  wire \n_21_GEN_ARB.I_SNG_PORT ;
  wire n_34_I_RD_CHNL;
  wire n_36_I_WR_CHNL;
  wire n_37_I_WR_CHNL;
  wire n_38_I_WR_CHNL;
  wire n_39_I_RD_CHNL;
  wire n_39_I_WR_CHNL;
  wire n_40_I_RD_CHNL;
  wire n_40_I_WR_CHNL;
  wire n_41_I_RD_CHNL;
  wire n_41_I_WR_CHNL;
  wire n_42_I_RD_CHNL;
  wire n_42_I_WR_CHNL;
  wire n_43_I_RD_CHNL;
  wire n_43_I_WR_CHNL;
  wire n_44_I_RD_CHNL;
  wire n_44_I_WR_CHNL;
  wire n_45_I_WR_CHNL;
  wire n_46_I_RD_CHNL;
  wire n_46_I_WR_CHNL;
  wire n_47_I_RD_CHNL;
  wire n_47_I_WR_CHNL;
  wire n_48_I_RD_CHNL;
  wire n_48_I_WR_CHNL;
  wire n_49_I_RD_CHNL;
  wire \n_4_GEN_ARB.I_SNG_PORT ;
  wire n_50_I_RD_CHNL;
  wire n_51_I_RD_CHNL;
  wire n_52_I_RD_CHNL;
  wire n_53_I_RD_CHNL;
  wire n_54_I_RD_CHNL;
  wire n_55_I_RD_CHNL;
  wire n_56_I_RD_CHNL;
  wire n_57_I_RD_CHNL;
  wire n_58_I_RD_CHNL;
  wire n_59_I_RD_CHNL;
  wire n_60_I_RD_CHNL;
  wire n_60_I_WR_CHNL;
  wire n_61_I_WR_CHNL;
  wire n_62_I_WR_CHNL;
  wire n_63_I_RD_CHNL;
  wire \n_6_GEN_ARB.I_SNG_PORT ;
  wire \n_7_GEN_ARB.I_SNG_PORT ;
  wire \n_9_GEN_ARB.I_SNG_PORT ;
  wire [1:1]narrow_burst_cnt_ld_mod;
  wire [1:1]narrow_burst_cnt_ld_reg;
  wire p_0_out;
  wire p_1_out;
  wire p_1_out_0;
  wire p_2_out;
  wire p_2_out_1;
  wire p_3_out;
  wire [3:0]p_6_in;
  wire p_7_in;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ),
        .I1(n_59_I_RD_CHNL),
        .I2(n_48_I_WR_CHNL),
        .I3(n_50_I_RD_CHNL),
        .I4(bram_addr_a[4]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ),
        .I1(bram_addr_a[4]),
        .I2(n_60_I_RD_CHNL),
        .I3(n_48_I_WR_CHNL),
        .I4(n_50_I_RD_CHNL),
        .I5(bram_addr_a[5]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[1]),
        .I2(n_44_I_WR_CHNL),
        .I3(bram_addr_a[0]),
        .I4(bram_addr_a[2]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[10]),
        .I1(p_0_out),
        .I2(WrChnl_BRAM_Addr_Ld[10]),
        .I3(n_46_I_RD_CHNL),
        .I4(bram_addr_a[6]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[13]_i_2 
       (.I0(RdChnl_BRAM_Addr_Ld[11]),
        .I1(p_0_out),
        .I2(WrChnl_BRAM_Addr_Ld[11]),
        .I3(n_46_I_RD_CHNL),
        .I4(bram_addr_a[7]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_2 ));
LUT6 #(
    .INIT(64'hAAA3AAAAAAACAAAA)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(n_51_I_RD_CHNL),
        .I1(n_48_I_WR_CHNL),
        .I2(ar_active_re),
        .I3(n_47_I_RD_CHNL),
        .I4(n_47_I_WR_CHNL),
        .I5(O3),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(O3),
        .I1(n_52_I_RD_CHNL),
        .I2(n_48_I_WR_CHNL),
        .I3(n_50_I_RD_CHNL),
        .I4(O5),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(O3),
        .I1(O5),
        .I2(n_53_I_RD_CHNL),
        .I3(n_48_I_WR_CHNL),
        .I4(n_50_I_RD_CHNL),
        .I5(O4),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2 ),
        .I1(O4),
        .I2(n_54_I_RD_CHNL),
        .I3(n_48_I_WR_CHNL),
        .I4(n_50_I_RD_CHNL),
        .I5(O6),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(O5),
        .I1(O3),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2 ));
LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(n_44_I_WR_CHNL),
        .I1(n_55_I_RD_CHNL),
        .I2(n_48_I_WR_CHNL),
        .I3(n_50_I_RD_CHNL),
        .I4(bram_addr_a[0]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(n_44_I_WR_CHNL),
        .I1(bram_addr_a[0]),
        .I2(n_56_I_RD_CHNL),
        .I3(n_48_I_WR_CHNL),
        .I4(n_50_I_RD_CHNL),
        .I5(bram_addr_a[1]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ));
LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2 ),
        .I1(n_57_I_RD_CHNL),
        .I2(n_48_I_WR_CHNL),
        .I3(n_50_I_RD_CHNL),
        .I4(bram_addr_a[2]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2 ),
        .I1(bram_addr_a[2]),
        .I2(n_58_I_RD_CHNL),
        .I3(n_48_I_WR_CHNL),
        .I4(n_50_I_RD_CHNL),
        .I5(bram_addr_a[3]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(bram_addr_a[1]),
        .I1(O6),
        .I2(O4),
        .I3(O5),
        .I4(O3),
        .I5(bram_addr_a[0]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ),
        .Q(bram_addr_a[4]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ),
        .Q(bram_addr_a[5]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ),
        .Q(bram_addr_a[6]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_2 ),
        .Q(bram_addr_a[7]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1 ),
        .Q(O3),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1 ),
        .Q(O5),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1 ),
        .Q(O4),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ),
        .Q(O6),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ),
        .Q(bram_addr_a[0]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ),
        .Q(bram_addr_a[1]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ),
        .Q(bram_addr_a[2]),
        .R(n_42_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ),
        .Q(bram_addr_a[3]),
        .R(n_42_I_WR_CHNL));
SHA256_AXIBramController_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.D(narrow_burst_cnt_ld_reg),
        .I1(O7),
        .I10(n_41_I_RD_CHNL),
        .I11(n_43_I_RD_CHNL),
        .I12(narrow_burst_cnt_ld_mod),
        .I13(n_40_I_RD_CHNL),
        .I14(n_49_I_RD_CHNL),
        .I15(n_61_I_WR_CHNL),
        .I16(n_41_I_WR_CHNL),
        .I17(n_44_I_RD_CHNL),
        .I18(n_45_I_WR_CHNL),
        .I19(n_62_I_WR_CHNL),
        .I2(n_36_I_WR_CHNL),
        .I20(n_63_I_RD_CHNL),
        .I21(O1),
        .I22(n_43_I_WR_CHNL),
        .I3(n_39_I_WR_CHNL),
        .I4(n_38_I_WR_CHNL),
        .I5(n_40_I_WR_CHNL),
        .I6(n_37_I_WR_CHNL),
        .I7(n_46_I_WR_CHNL),
        .I8(n_39_I_RD_CHNL),
        .I9(n_42_I_RD_CHNL),
        .O1(\n_4_GEN_ARB.I_SNG_PORT ),
        .O2(\n_6_GEN_ARB.I_SNG_PORT ),
        .O3(\n_7_GEN_ARB.I_SNG_PORT ),
        .O4(\n_9_GEN_ARB.I_SNG_PORT ),
        .O5(\n_21_GEN_ARB.I_SNG_PORT ),
        .Q(p_6_in),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .bram_we_a(bram_we_a),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .curr_wrap_burst(curr_wrap_burst_2),
        .curr_wrap_burst_2(curr_wrap_burst),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_1_out_0(p_1_out_0),
        .p_2_out(p_2_out_1),
        .p_2_out_1(p_2_out),
        .p_3_out(p_3_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[1:0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[1:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[5:4]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready));
SHA256_AXIBramController_rd_chnl I_RD_CHNL
       (.D(narrow_burst_cnt_ld_mod),
        .I1(\n_21_GEN_ARB.I_SNG_PORT ),
        .I10(WrChnl_BRAM_Addr_Ld[9:1]),
        .I2(\n_7_GEN_ARB.I_SNG_PORT ),
        .I3(\n_9_GEN_ARB.I_SNG_PORT ),
        .I4(n_47_I_WR_CHNL),
        .I5(O6),
        .I6(O4),
        .I7(O5),
        .I8(O3),
        .I9(n_60_I_WR_CHNL),
        .O1(O7),
        .O10(O2),
        .O11(n_46_I_RD_CHNL),
        .O12(n_47_I_RD_CHNL),
        .O13(n_48_I_RD_CHNL),
        .O14(n_49_I_RD_CHNL),
        .O15(n_50_I_RD_CHNL),
        .O16(n_51_I_RD_CHNL),
        .O17(n_52_I_RD_CHNL),
        .O18(n_53_I_RD_CHNL),
        .O19(n_54_I_RD_CHNL),
        .O2(n_34_I_RD_CHNL),
        .O20(n_55_I_RD_CHNL),
        .O21(n_56_I_RD_CHNL),
        .O22(n_57_I_RD_CHNL),
        .O23(n_58_I_RD_CHNL),
        .O24(n_59_I_RD_CHNL),
        .O25(n_60_I_RD_CHNL),
        .O26(RdChnl_BRAM_Addr_Ld),
        .O27(n_63_I_RD_CHNL),
        .O3(O1),
        .O4(n_39_I_RD_CHNL),
        .O5(n_40_I_RD_CHNL),
        .O6(n_41_I_RD_CHNL),
        .O7(n_42_I_RD_CHNL),
        .O8(n_43_I_RD_CHNL),
        .O9(n_44_I_RD_CHNL),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .bram_rddata_a(bram_rddata_a),
        .curr_wrap_burst(curr_wrap_burst),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out_0),
        .p_2_out(p_2_out),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
SHA256_AXIBramController_wr_chnl I_WR_CHNL
       (.D(narrow_burst_cnt_ld_reg),
        .I1(O7),
        .I2(\n_4_GEN_ARB.I_SNG_PORT ),
        .I3(\n_6_GEN_ARB.I_SNG_PORT ),
        .I4(O3),
        .I5(O4),
        .I6(O5),
        .I7(O6),
        .I8(n_34_I_RD_CHNL),
        .I9(n_48_I_RD_CHNL),
        .O1(O8),
        .O10(n_44_I_WR_CHNL),
        .O11(n_45_I_WR_CHNL),
        .O12(n_46_I_WR_CHNL),
        .O13(n_47_I_WR_CHNL),
        .O14(n_48_I_WR_CHNL),
        .O15(WrChnl_BRAM_Addr_Ld),
        .O16(n_60_I_WR_CHNL),
        .O17(n_61_I_WR_CHNL),
        .O18(n_62_I_WR_CHNL),
        .O2(n_36_I_WR_CHNL),
        .O3(n_37_I_WR_CHNL),
        .O4(n_38_I_WR_CHNL),
        .O5(n_39_I_WR_CHNL),
        .O6(n_40_I_WR_CHNL),
        .O7(n_41_I_WR_CHNL),
        .O8(n_42_I_WR_CHNL),
        .O9(n_43_I_WR_CHNL),
        .Q(p_6_in),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .bram_en_a(bram_en_a),
        .bram_wrdata_a(bram_wrdata_a),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .curr_wrap_burst(curr_wrap_burst_2),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out_1),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr({s_axi_awaddr[13:3],s_axi_awaddr[1:0]}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module SHA256_AXIBramController_rd_chnl
   (O1,
    s_axi_rdata,
    curr_wrap_burst,
    O2,
    ar_active_d1,
    O3,
    p_7_in,
    D,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    s_axi_rid,
    s_axi_aclk,
    ar_active_re,
    I1,
    I2,
    p_2_out,
    p_1_out,
    I3,
    s_axi_arsize,
    s_axi_araddr,
    p_0_out,
    s_axi_aresetn,
    s_axi_rready,
    I4,
    I5,
    I6,
    I7,
    I8,
    s_axi_arlen,
    I9,
    s_axi_awaddr,
    I10,
    s_axi_arid,
    s_axi_arburst,
    bram_rddata_a);
  output O1;
  output [31:0]s_axi_rdata;
  output curr_wrap_burst;
  output O2;
  output ar_active_d1;
  output O3;
  output p_7_in;
  output [0:0]D;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output [1:0]O26;
  output O27;
  output [11:0]s_axi_rid;
  input s_axi_aclk;
  input ar_active_re;
  input I1;
  input I2;
  input p_2_out;
  input p_1_out;
  input I3;
  input [2:0]s_axi_arsize;
  input [13:0]s_axi_araddr;
  input p_0_out;
  input s_axi_aresetn;
  input s_axi_rready;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input [7:0]s_axi_arlen;
  input I9;
  input [0:0]s_axi_awaddr;
  input [8:0]I10;
  input [11:0]s_axi_arid;
  input [1:0]s_axi_arburst;
  input [31:0]bram_rddata_a;

  wire [0:0]D;
  wire I1;
  wire [8:0]I10;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire [1:0]O26;
  wire O27;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active_d1;
  wire ar_active_re;
  wire [0:0]axi_byte_div_curr_arsize;
  wire axi_rd_burst;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire [11:0]axi_rid_temp;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire bram_addr_inc;
  wire bram_addr_inc10_out;
  wire [31:0]bram_rddata_a;
  wire brst_cnt_max7_out;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_one0;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_27 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[10]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[11]_i_3 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[1]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[2]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[3]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[4]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[5]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[6]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[7]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[8]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[9]_i_1 ;
  wire n_0_act_rd_burst_i_1;
  wire n_0_act_rd_burst_i_3;
  wire n_0_act_rd_burst_i_4;
  wire n_0_act_rd_burst_two_i_1;
  wire n_0_axi_rd_burst_i_1;
  wire n_0_axi_rd_burst_i_2;
  wire n_0_axi_rd_burst_two_i_1;
  wire n_0_axi_rd_burst_two_reg;
  wire n_0_axi_rlast_int_i_1;
  wire n_0_axi_rlast_int_i_2;
  wire n_0_axi_rvalid_clr_ok_i_1;
  wire n_0_axi_rvalid_clr_ok_i_2;
  wire n_0_axi_rvalid_int_i_1;
  wire n_0_bram_en_int_i_1;
  wire n_0_bram_en_int_i_2;
  wire n_0_bram_en_int_i_3;
  wire n_0_bram_en_int_i_4;
  wire n_0_bram_en_int_i_5;
  wire n_0_bram_en_int_i_6;
  wire n_0_bram_en_int_i_7;
  wire n_0_bram_en_int_i_8;
  wire \n_0_brst_cnt[0]_i_1 ;
  wire \n_0_brst_cnt[1]_i_1 ;
  wire \n_0_brst_cnt[2]_i_1 ;
  wire \n_0_brst_cnt[3]_i_1 ;
  wire \n_0_brst_cnt[3]_i_2 ;
  wire \n_0_brst_cnt[4]_i_1 ;
  wire \n_0_brst_cnt[4]_i_2 ;
  wire \n_0_brst_cnt[5]_i_1 ;
  wire \n_0_brst_cnt[5]_i_2 ;
  wire \n_0_brst_cnt[6]_i_1 ;
  wire \n_0_brst_cnt[7]_i_1 ;
  wire \n_0_brst_cnt[7]_i_2 ;
  wire \n_0_brst_cnt_reg[0] ;
  wire \n_0_brst_cnt_reg[1] ;
  wire \n_0_brst_cnt_reg[2] ;
  wire \n_0_brst_cnt_reg[3] ;
  wire \n_0_brst_cnt_reg[4] ;
  wire \n_0_brst_cnt_reg[5] ;
  wire \n_0_brst_cnt_reg[6] ;
  wire \n_0_brst_cnt_reg[7] ;
  wire n_0_brst_one_i_1;
  wire n_0_brst_one_i_4;
  wire n_0_brst_zero_i_1;
  wire n_0_brst_zero_i_2;
  wire n_0_brst_zero_i_3;
  wire n_0_brst_zero_i_4;
  wire n_0_brst_zero_i_5;
  wire n_0_brst_zero_i_6;
  wire n_0_disable_b2b_brst_i_2;
  wire n_0_disable_b2b_brst_i_3;
  wire n_0_disable_b2b_brst_i_4;
  wire n_0_disable_b2b_brst_i_5;
  wire n_0_end_brst_rd_clr_i_1;
  wire n_0_end_brst_rd_i_1;
  wire n_0_last_bram_addr_i_2;
  wire n_0_last_bram_addr_i_3;
  wire n_0_last_bram_addr_i_4;
  wire n_0_last_bram_addr_i_5;
  wire n_0_pend_rd_op_i_1;
  wire n_0_pend_rd_op_i_2;
  wire n_0_pend_rd_op_i_3;
  wire n_0_pend_rd_op_i_4;
  wire n_0_pend_rd_op_i_5;
  wire n_0_pend_rd_op_i_6;
  wire \n_0_rd_data_sm_cs[0]_i_1 ;
  wire \n_0_rd_data_sm_cs[0]_i_2 ;
  wire \n_0_rd_data_sm_cs[0]_i_3 ;
  wire \n_0_rd_data_sm_cs[1]_i_1 ;
  wire \n_0_rd_data_sm_cs[1]_i_2 ;
  wire \n_0_rd_data_sm_cs[1]_i_3 ;
  wire \n_0_rd_data_sm_cs[2]_i_1 ;
  wire \n_0_rd_data_sm_cs[2]_i_2 ;
  wire \n_0_rd_data_sm_cs[2]_i_3 ;
  wire \n_0_rd_data_sm_cs[3]_i_1 ;
  wire \n_0_rd_data_sm_cs[3]_i_2 ;
  wire \n_0_rd_data_sm_cs[3]_i_3 ;
  wire \n_0_rd_data_sm_cs[3]_i_4 ;
  wire \n_0_rd_data_sm_cs[3]_i_5 ;
  wire n_0_rddata_mux_sel_i_1;
  wire n_0_rddata_mux_sel_i_3;
  wire n_16_I_WRAP_BRST;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ;
  wire n_2_I_WRAP_BRST;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [0:0]narrow_burst_cnt_ld_mod;
  wire [1:0]narrow_burst_cnt_ld_reg;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_7_in;
  wire pend_rd_op;
  wire rd_adv_buf29_out;
  wire [3:0]rd_data_sm_cs;
  wire [31:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
(* RTL_KEEP = "yes" *)   wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_awaddr;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rready;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFFFF55FFFDFF55)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(n_16_I_WRAP_BRST),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(rd_data_sm_cs[3]),
        .I4(curr_narrow_burst),
        .I5(narrow_bram_addr_inc_d1),
        .O(O13));
LUT5 #(
    .INIT(32'h10FF1000)) 
     \FSM_sequential_rlast_sm_cs[0]_i_1 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[0]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hAAFEFEFEAFFFFFFF)) 
     \FSM_sequential_rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(s_axi_rready),
        .I4(O10),
        .I5(axi_rd_burst),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ));
LUT5 #(
    .INIT(32'h01FF0100)) 
     \FSM_sequential_rlast_sm_cs[1]_i_1 
       (.I0(rlast_sm_cs[1]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[1]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'h0011001300130013)) 
     \FSM_sequential_rlast_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(rlast_sm_cs[2]),
        .I2(act_rd_burst_two),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(O10),
        .I5(s_axi_rready),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ));
LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
     \FSM_sequential_rlast_sm_cs[2]_i_1 
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(act_rd_burst_two),
        .I2(axi_rd_burst),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ),
        .I4(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I5(rlast_sm_cs[2]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ));
LUT5 #(
    .INIT(32'h00010101)) 
     \FSM_sequential_rlast_sm_cs[2]_i_2 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(rlast_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(O10),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'h1000F1111000E000)) 
     \FSM_sequential_rlast_sm_cs[2]_i_3 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .I2(O10),
        .I3(s_axi_rready),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ),
        .Q(rlast_sm_cs[0]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ),
        .Q(rlast_sm_cs[1]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ),
        .Q(rlast_sm_cs[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(ar_active_d1),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I1(brst_cnt_max7_out),
        .I2(end_brst_rd_clr),
        .I3(s_axi_aresetn),
        .I4(p_0_out),
        .I5(ar_active_d1),
        .O(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ));
LUT5 #(
    .INIT(32'h00D00000)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc),
        .I2(p_0_out),
        .I3(pend_rd_op),
        .I4(brst_zero),
        .O(brst_cnt_max7_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ),
        .Q(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h6464646464646E64)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I1(narrow_addr_int[0]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .I3(narrow_burst_cnt_ld_mod),
        .I4(p_2_out),
        .I5(p_1_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h6E6E646E6464646E)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I1(narrow_addr_int[0]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I4(I2),
        .I5(narrow_burst_cnt_ld_mod),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 
       (.I0(rd_data_sm_cs[3]),
        .I1(curr_narrow_burst),
        .I2(n_16_I_WRAP_BRST),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h11540054)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_araddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0 
       (.I0(rd_data_sm_cs[3]),
        .I1(curr_narrow_burst),
        .I2(n_16_I_WRAP_BRST),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0 ));
LUT6 #(
    .INIT(64'h02AB02A8FFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_14 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26 ),
        .O(O8));
LUT6 #(
    .INIT(64'h3F0F3E0E3B0B3A0A)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_15 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_27 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ),
        .O(O6));
LUT6 #(
    .INIT(64'hFFFCFFFC00FC004C)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0 
       (.I0(s_axi_arsize[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31 ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33__0 ),
        .O(O7));
LUT6 #(
    .INIT(64'hFFFFFFFFABFCA800)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24 ),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0 ),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(O9));
LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_21__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0 ),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h1312)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[1]),
        .O(O14));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_24 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_25 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[5]),
        .I5(s_axi_arlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25 ));
LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_26 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hEBBB2888)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_31 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 ));
LUT6 #(
    .INIT(64'hB8B80000FF000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_33__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ),
        .I4(s_axi_arsize[2]),
        .I5(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33__0 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hFF7FEA00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h333E0002)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44 ),
        .I1(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0 ));
LUT5 #(
    .INIT(32'h00AAF0CC)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0 ),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0 ));
LUT5 #(
    .INIT(32'h550F33FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32__0 ),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0 ));
LUT6 #(
    .INIT(64'h8888888888888A88)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .I3(D),
        .I4(p_2_out),
        .I5(p_1_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ));
LUT5 #(
    .INIT(32'h00010003)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_40 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_araddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40 ));
LUT4 #(
    .INIT(16'h0004)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0 ));
LUT5 #(
    .INIT(32'hFFFFFFF8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_42 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42 ));
LUT5 #(
    .INIT(32'h000033A8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_44 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_45 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_46 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_47 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47 ));
LUT5 #(
    .INIT(32'hC6EEC644)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .I4(I3),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'hFFFF55D5)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .I1(n_16_I_WRAP_BRST),
        .I2(curr_narrow_burst),
        .I3(rd_data_sm_cs[3]),
        .I4(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ));
LUT6 #(
    .INIT(64'hFFF7F7FF00000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0 
       (.I0(n_16_I_WRAP_BRST),
        .I1(curr_narrow_burst),
        .I2(rd_data_sm_cs[3]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[0]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0 ));
LUT6 #(
    .INIT(64'h000000B0BBBBBBBB)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 
       (.I0(n_2_I_WRAP_BRST),
        .I1(n_16_I_WRAP_BRST),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .I5(ar_active_re),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ),
        .Q(narrow_addr_int[0]),
        .R(O1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .Q(narrow_addr_int[1]),
        .R(O1));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_23_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_27 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_27 ),
        .S(s_axi_arsize[2]));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h00020000)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0 
       (.I0(n_16_I_WRAP_BRST),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(rd_data_sm_cs[3]),
        .I4(curr_narrow_burst),
        .O(narrow_bram_addr_inc));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(O1));
LUT5 #(
    .INIT(32'hFF1F0010)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(narrow_burst_cnt_ld_reg[0]),
        .O(narrow_burst_cnt_ld_mod));
LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(narrow_burst_cnt_ld_reg[1]),
        .O(D));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod),
        .Q(narrow_burst_cnt_ld_reg[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(narrow_burst_cnt_ld_reg[1]),
        .R(O1));
LUT6 #(
    .INIT(64'h0000000002AAFEAA)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(curr_narrow_burst),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(n_0_brst_zero_i_3),
        .I4(axi_byte_div_curr_arsize),
        .I5(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ));
LUT5 #(
    .INIT(32'h4500FFFF)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2__0 
       (.I0(pend_rd_op),
        .I1(ar_active_d1),
        .I2(p_0_out),
        .I3(n_0_axi_rlast_int_i_2),
        .I4(s_axi_aresetn),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_a[0]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ),
        .Q(s_axi_rdata[0]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_a[10]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ),
        .Q(s_axi_rdata[10]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_a[11]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ),
        .Q(s_axi_rdata[11]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_a[12]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ),
        .Q(s_axi_rdata[12]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_a[13]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ),
        .Q(s_axi_rdata[13]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_a[14]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ),
        .Q(s_axi_rdata[14]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_a[15]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ),
        .Q(s_axi_rdata[15]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_a[16]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ),
        .Q(s_axi_rdata[16]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_a[17]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ),
        .Q(s_axi_rdata[17]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_a[18]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ),
        .Q(s_axi_rdata[18]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_a[19]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ),
        .Q(s_axi_rdata[19]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_a[1]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ),
        .Q(s_axi_rdata[1]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_a[20]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ),
        .Q(s_axi_rdata[20]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_a[21]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ),
        .Q(s_axi_rdata[21]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_a[22]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ),
        .Q(s_axi_rdata[22]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_a[23]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ),
        .Q(s_axi_rdata[23]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_a[24]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ),
        .Q(s_axi_rdata[24]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_a[25]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ),
        .Q(s_axi_rdata[25]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_a[26]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ),
        .Q(s_axi_rdata[26]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_a[27]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ),
        .Q(s_axi_rdata[27]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_a[28]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ),
        .Q(s_axi_rdata[28]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_a[29]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ),
        .Q(s_axi_rdata[29]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_a[2]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ),
        .Q(s_axi_rdata[2]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_a[30]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ),
        .Q(s_axi_rdata[30]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
LUT3 #(
    .INIT(8'h8F)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(O3),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
LUT6 #(
    .INIT(64'h0302330030003030)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2 
       (.I0(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 ),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_adv_buf29_out),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(axi_rdata_en));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_a[31]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5 
       (.I0(O10),
        .I1(s_axi_rready),
        .O(rd_adv_buf29_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 ),
        .Q(s_axi_rdata[31]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_a[3]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ),
        .Q(s_axi_rdata[3]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_a[4]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ),
        .Q(s_axi_rdata[4]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_a[5]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ),
        .Q(s_axi_rdata[5]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_a[6]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ),
        .Q(s_axi_rdata[6]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_a[7]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ),
        .Q(s_axi_rdata[7]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_a[8]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ),
        .Q(s_axi_rdata[8]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_a[9]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ),
        .Q(s_axi_rdata[9]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_adv_buf29_out),
        .O(rd_skid_buf_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[0]),
        .Q(rd_skid_buf[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[10]),
        .Q(rd_skid_buf[10]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[11]),
        .Q(rd_skid_buf[11]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[12]),
        .Q(rd_skid_buf[12]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[13]),
        .Q(rd_skid_buf[13]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[14]),
        .Q(rd_skid_buf[14]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[15]),
        .Q(rd_skid_buf[15]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[16]),
        .Q(rd_skid_buf[16]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[17]),
        .Q(rd_skid_buf[17]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[18]),
        .Q(rd_skid_buf[18]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[19]),
        .Q(rd_skid_buf[19]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[1]),
        .Q(rd_skid_buf[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[20]),
        .Q(rd_skid_buf[20]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[21]),
        .Q(rd_skid_buf[21]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[22]),
        .Q(rd_skid_buf[22]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[23]),
        .Q(rd_skid_buf[23]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[24]),
        .Q(rd_skid_buf[24]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[25]),
        .Q(rd_skid_buf[25]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[26]),
        .Q(rd_skid_buf[26]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[27]),
        .Q(rd_skid_buf[27]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[28]),
        .Q(rd_skid_buf[28]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[29]),
        .Q(rd_skid_buf[29]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[2]),
        .Q(rd_skid_buf[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[30]),
        .Q(rd_skid_buf[30]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[31]),
        .Q(rd_skid_buf[31]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[3]),
        .Q(rd_skid_buf[3]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[4]),
        .Q(rd_skid_buf[4]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[5]),
        .Q(rd_skid_buf[5]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[6]),
        .Q(rd_skid_buf[6]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[7]),
        .Q(rd_skid_buf[7]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[8]),
        .Q(rd_skid_buf[8]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[9]),
        .Q(rd_skid_buf[9]),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[0]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[10]_i_1 
       (.I0(s_axi_arid[10]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[10]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[10]_i_1 ));
LUT3 #(
    .INIT(8'h8F)) 
     \GEN_RID_SNG.axi_rid_int[11]_i_1 
       (.I0(O3),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
LUT3 #(
    .INIT(8'hBA)) 
     \GEN_RID_SNG.axi_rid_int[11]_i_2 
       (.I0(axi_rvalid_set),
        .I1(ar_active_d1),
        .I2(p_0_out),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[11]_i_3 
       (.I0(s_axi_arid[11]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[11]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_3 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[1]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[1]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[2]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[2]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[3]_i_1 
       (.I0(s_axi_arid[3]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[3]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[3]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[4]_i_1 
       (.I0(s_axi_arid[4]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[4]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[4]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[5]_i_1 
       (.I0(s_axi_arid[5]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[5]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[5]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[6]_i_1 
       (.I0(s_axi_arid[6]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[6]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[6]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[7]_i_1 
       (.I0(s_axi_arid[7]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[7]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[7]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[8]_i_1 
       (.I0(s_axi_arid[8]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[8]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[8]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \GEN_RID_SNG.axi_rid_int[9]_i_1 
       (.I0(s_axi_arid[9]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[9]),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ),
        .Q(s_axi_rid[0]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[10]_i_1 ),
        .Q(s_axi_rid[10]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_3 ),
        .Q(s_axi_rid[11]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[1]_i_1 ),
        .Q(s_axi_rid[1]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[2]_i_1 ),
        .Q(s_axi_rid[2]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[3]_i_1 ),
        .Q(s_axi_rid[3]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[4]_i_1 ),
        .Q(s_axi_rid[4]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[5]_i_1 ),
        .Q(s_axi_rid[5]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[6]_i_1 ),
        .Q(s_axi_rid[6]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[7]_i_1 ),
        .Q(s_axi_rid[7]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[8]_i_1 ),
        .Q(s_axi_rid[8]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_2 ),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[9]_i_1 ),
        .Q(s_axi_rid[9]),
        .R(\n_0_GEN_RID_SNG.axi_rid_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[0]),
        .Q(axi_rid_temp[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[10]),
        .Q(axi_rid_temp[10]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[11]),
        .Q(axi_rid_temp[11]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[1]),
        .Q(axi_rid_temp[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[2]),
        .Q(axi_rid_temp[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[3]),
        .Q(axi_rid_temp[3]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[4]),
        .Q(axi_rid_temp[4]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[5]),
        .Q(axi_rid_temp[5]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[6]),
        .Q(axi_rid_temp[6]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[7]),
        .Q(axi_rid_temp[7]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[8]),
        .Q(axi_rid_temp[8]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[9]),
        .Q(axi_rid_temp[9]),
        .R(O1));
SHA256_AXIBramController_wrap_brst_0 I_WRAP_BRST
       (.I1(ar_active_d1),
        .I10(I10),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(O10),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O12),
        .O11(O11),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(n_2_I_WRAP_BRST),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O3(n_16_I_WRAP_BRST),
        .O4(O1),
        .Q(rd_data_sm_cs),
        .ar_active_re(ar_active_re),
        .axi_byte_div_curr_arsize(axi_byte_div_curr_arsize),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_inc10_out(bram_addr_inc10_out),
        .brst_zero(brst_zero),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_0_out(p_0_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[13:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_rready(s_axi_rready));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     act_rd_burst_i_1
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(ar_active_re),
        .I4(axi_rd_burst_two),
        .I5(n_0_act_rd_burst_i_3),
        .O(n_0_act_rd_burst_i_1));
LUT6 #(
    .INIT(64'h000000000000002E)) 
     act_rd_burst_i_2
       (.I0(n_0_brst_zero_i_3),
        .I1(rd_data_sm_cs[0]),
        .I2(n_0_pend_rd_op_i_2),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(act_rd_burst_set));
LUT6 #(
    .INIT(64'h00000180FFFFFFFF)) 
     act_rd_burst_i_3
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[3]),
        .I4(n_0_act_rd_burst_i_4),
        .I5(s_axi_aresetn),
        .O(n_0_act_rd_burst_i_3));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h1FFF)) 
     act_rd_burst_i_4
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(s_axi_rready),
        .I3(O10),
        .O(n_0_act_rd_burst_i_4));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_i_1),
        .Q(act_rd_burst),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
     act_rd_burst_two_i_1
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(ar_active_re),
        .I4(axi_rd_burst_two),
        .I5(n_0_act_rd_burst_i_3),
        .O(n_0_act_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_two_i_1),
        .Q(act_rd_burst_two),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \arb_sm_cs[1]_i_3 
       (.I0(s_axi_rready),
        .I1(O3),
        .O(O27));
LUT6 #(
    .INIT(64'h00A0303000A000A0)) 
     axi_rd_burst_i_1
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_i_2),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(n_0_axi_rd_burst_i_1));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     axi_rd_burst_i_2
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[1]),
        .I3(n_0_brst_one_i_4),
        .O(n_0_axi_rd_burst_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_i_1),
        .Q(axi_rd_burst),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00A0C0C000A000A0)) 
     axi_rd_burst_two_i_1
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(axi_rd_burst_two),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(n_0_axi_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_two_i_1),
        .Q(n_0_axi_rd_burst_two_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hAA08)) 
     axi_rlast_int_i_1
       (.I0(s_axi_aresetn),
        .I1(O3),
        .I2(s_axi_rready),
        .I3(n_0_axi_rlast_int_i_2),
        .O(n_0_axi_rlast_int_i_1));
LUT6 #(
    .INIT(64'h00000000F4040404)) 
     axi_rlast_int_i_2
       (.I0(O3),
        .I1(rlast_sm_cs[0]),
        .I2(rlast_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(O10),
        .I5(rlast_sm_cs[2]),
        .O(n_0_axi_rlast_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rlast_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rlast_int_i_1),
        .Q(O3),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFFEEEA)) 
     axi_rvalid_clr_ok_i_1
       (.I0(axi_rvalid_clr_ok),
        .I1(last_bram_addr),
        .I2(disable_b2b_brst),
        .I3(n_0_disable_b2b_brst_i_2),
        .I4(n_0_axi_rvalid_clr_ok_i_2),
        .O(n_0_axi_rvalid_clr_ok_i_1));
LUT6 #(
    .INIT(64'h4444444444F44444)) 
     axi_rvalid_clr_ok_i_2
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(n_0_axi_rvalid_clr_ok_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_clr_ok_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_clr_ok_i_1),
        .Q(axi_rvalid_clr_ok),
        .R(O1));
LUT6 #(
    .INIT(64'h00E0E0E0E0E0E0E0)) 
     axi_rvalid_int_i_1
       (.I0(O10),
        .I1(axi_rvalid_set),
        .I2(s_axi_aresetn),
        .I3(axi_rvalid_clr_ok),
        .I4(O3),
        .I5(s_axi_rready),
        .O(n_0_axi_rvalid_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_int_i_1),
        .Q(O10),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     axi_rvalid_set_i_1
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFFABFB0000A808)) 
     bram_en_int_i_1
       (.I0(n_0_bram_en_int_i_2),
        .I1(n_0_bram_en_int_i_3),
        .I2(rd_data_sm_cs[2]),
        .I3(n_0_bram_en_int_i_4),
        .I4(rd_data_sm_cs[3]),
        .I5(p_7_in),
        .O(n_0_bram_en_int_i_1));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     bram_en_int_i_2
       (.I0(ar_active_re),
        .I1(bram_addr_inc10_out),
        .I2(n_0_bram_en_int_i_5),
        .I3(n_0_bram_en_int_i_6),
        .I4(n_0_bram_en_int_i_7),
        .I5(n_0_bram_en_int_i_8),
        .O(n_0_bram_en_int_i_2));
LUT6 #(
    .INIT(64'hF7FFFFFFF7FFFF00)) 
     bram_en_int_i_3
       (.I0(brst_one),
        .I1(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I2(rd_adv_buf29_out),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(ar_active_re),
        .O(n_0_bram_en_int_i_3));
LUT6 #(
    .INIT(64'hEF0FCF0FE00FC000)) 
     bram_en_int_i_4
       (.I0(pend_rd_op),
        .I1(ar_active_re),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_adv_buf29_out),
        .I5(\n_0_rd_data_sm_cs[1]_i_2 ),
        .O(n_0_bram_en_int_i_4));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'h2)) 
     bram_en_int_i_5
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .O(n_0_bram_en_int_i_5));
LUT6 #(
    .INIT(64'hA0A0AFAFFCFCFC0C)) 
     bram_en_int_i_6
       (.I0(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I1(ar_active_re),
        .I2(rd_data_sm_cs[0]),
        .I3(axi_rd_burst),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(rd_data_sm_cs[1]),
        .O(n_0_bram_en_int_i_6));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     bram_en_int_i_7
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .O(n_0_bram_en_int_i_7));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h88F800F0)) 
     bram_en_int_i_8
       (.I0(O10),
        .I1(s_axi_rready),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(pend_rd_op),
        .O(n_0_bram_en_int_i_8));
FDRE #(
    .INIT(1'b0)) 
     bram_en_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bram_en_int_i_1),
        .Q(p_7_in),
        .R(O1));
LUT5 #(
    .INIT(32'h3A33CACC)) 
     \brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(bram_addr_inc),
        .I2(ar_active_d1),
        .I3(p_0_out),
        .I4(\n_0_brst_cnt_reg[0] ),
        .O(\n_0_brst_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hCFAACFCF30AA3030)) 
     \brst_cnt[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[1] ),
        .O(\n_0_brst_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0300)) 
     \brst_cnt[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(bram_addr_inc),
        .I4(ar_active_re),
        .I5(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[2]_i_1 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(\n_0_brst_cnt[3]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \brst_cnt[3]_i_2 
       (.I0(\n_0_brst_cnt_reg[0] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[3]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(\n_0_brst_cnt[4]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \brst_cnt[4]_i_2 
       (.I0(\n_0_brst_cnt_reg[2] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[0] ),
        .I3(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[4]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(\n_0_brst_cnt[5]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \brst_cnt[5]_i_2 
       (.I0(\n_0_brst_cnt_reg[3] ),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[2] ),
        .I4(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[5]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[6]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(\n_0_brst_cnt[7]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[6] ),
        .O(\n_0_brst_cnt[6]_i_1 ));
LUT6 #(
    .INIT(64'hAAAACFFFAAAA3000)) 
     \brst_cnt[7]_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(\n_0_brst_cnt_reg[6] ),
        .I2(\n_0_brst_cnt[7]_i_2 ),
        .I3(bram_addr_inc),
        .I4(ar_active_re),
        .I5(\n_0_brst_cnt_reg[7] ),
        .O(\n_0_brst_cnt[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \brst_cnt[7]_i_2 
       (.I0(\n_0_brst_cnt_reg[4] ),
        .I1(\n_0_brst_cnt_reg[2] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[0] ),
        .I4(\n_0_brst_cnt_reg[3] ),
        .I5(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \brst_cnt[7]_i_3 
       (.I0(n_16_I_WRAP_BRST),
        .I1(rd_data_sm_cs[3]),
        .O(bram_addr_inc));
FDRE #(
    .INIT(1'b0)) 
     brst_cnt_max_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .Q(brst_cnt_max_d1),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[0]_i_1 ),
        .Q(\n_0_brst_cnt_reg[0] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[1]_i_1 ),
        .Q(\n_0_brst_cnt_reg[1] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[2]_i_1 ),
        .Q(\n_0_brst_cnt_reg[2] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[3]_i_1 ),
        .Q(\n_0_brst_cnt_reg[3] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[4]_i_1 ),
        .Q(\n_0_brst_cnt_reg[4] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[5]_i_1 ),
        .Q(\n_0_brst_cnt_reg[5] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[6]_i_1 ),
        .Q(\n_0_brst_cnt_reg[6] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[7]_i_1 ),
        .Q(\n_0_brst_cnt_reg[7] ),
        .R(O1));
LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
     brst_one_i_1
       (.I0(brst_one),
        .I1(brst_one0),
        .I2(n_0_brst_zero_i_2),
        .I3(s_axi_aresetn),
        .I4(ar_active_re),
        .I5(axi_rd_burst_two),
        .O(n_0_brst_one_i_1));
LUT6 #(
    .INIT(64'h80FF808080808080)) 
     brst_one_i_2
       (.I0(s_axi_arlen[0]),
        .I1(ar_active_re),
        .I2(n_0_axi_rd_burst_i_2),
        .I3(\n_0_brst_cnt_reg[0] ),
        .I4(\n_0_brst_cnt_reg[1] ),
        .I5(n_0_brst_zero_i_4),
        .O(brst_one0));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h00000020)) 
     brst_one_i_3
       (.I0(n_0_brst_one_i_4),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .O(axi_rd_burst_two));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     brst_one_i_4
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arlen[6]),
        .O(n_0_brst_one_i_4));
FDRE #(
    .INIT(1'b0)) 
     brst_one_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_one_i_1),
        .Q(brst_one),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h00E0)) 
     brst_zero_i_1
       (.I0(brst_zero),
        .I1(n_0_brst_zero_i_2),
        .I2(s_axi_aresetn),
        .I3(n_0_brst_zero_i_3),
        .O(n_0_brst_zero_i_1));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h08)) 
     brst_zero_i_2
       (.I0(n_0_brst_zero_i_4),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .O(n_0_brst_zero_i_2));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'h04)) 
     brst_zero_i_3
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(n_0_brst_zero_i_5),
        .O(n_0_brst_zero_i_3));
LUT3 #(
    .INIT(8'h40)) 
     brst_zero_i_4
       (.I0(\n_0_brst_cnt_reg[3] ),
        .I1(n_16_I_WRAP_BRST),
        .I2(n_0_brst_zero_i_6),
        .O(n_0_brst_zero_i_4));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h00000002)) 
     brst_zero_i_5
       (.I0(n_0_brst_one_i_4),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .O(n_0_brst_zero_i_5));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     brst_zero_i_6
       (.I0(\n_0_brst_cnt_reg[5] ),
        .I1(\n_0_brst_cnt_reg[2] ),
        .I2(\n_0_brst_cnt_reg[7] ),
        .I3(rd_data_sm_cs[3]),
        .I4(\n_0_brst_cnt_reg[4] ),
        .I5(\n_0_brst_cnt_reg[6] ),
        .O(n_0_brst_zero_i_6));
FDRE #(
    .INIT(1'b0)) 
     brst_zero_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_zero_i_1),
        .Q(brst_zero),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT2 #(
    .INIT(4'h1)) 
     curr_fixed_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_fixed_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_fixed_burst),
        .Q(O2),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT2 #(
    .INIT(4'h2)) 
     curr_wrap_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_wrap_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(O1));
LUT6 #(
    .INIT(64'hEEEAAAEAEEEAEEEE)) 
     disable_b2b_brst_i_1
       (.I0(n_0_disable_b2b_brst_i_2),
        .I1(disable_b2b_brst),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_cmb));
LUT6 #(
    .INIT(64'h0000000020222222)) 
     disable_b2b_brst_i_2
       (.I0(n_0_disable_b2b_brst_i_3),
        .I1(rd_data_sm_cs[2]),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(axi_rd_burst),
        .I4(n_0_disable_b2b_brst_i_4),
        .I5(n_0_disable_b2b_brst_i_5),
        .O(n_0_disable_b2b_brst_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFF000045FF)) 
     disable_b2b_brst_i_3
       (.I0(rd_adv_buf29_out),
        .I1(brst_one),
        .I2(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(disable_b2b_brst),
        .O(n_0_disable_b2b_brst_i_3));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT2 #(
    .INIT(4'h1)) 
     disable_b2b_brst_i_4
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .O(n_0_disable_b2b_brst_i_4));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hD8FF)) 
     disable_b2b_brst_i_5
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .O(n_0_disable_b2b_brst_i_5));
FDRE #(
    .INIT(1'b0)) 
     disable_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFCFFFD03000000)) 
     end_brst_rd_clr_i_1
       (.I0(ar_active_re),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(n_0_end_brst_rd_clr_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_clr_i_1),
        .Q(end_brst_rd_clr),
        .R(O1));
LUT5 #(
    .INIT(32'h0040F040)) 
     end_brst_rd_i_1
       (.I0(brst_cnt_max_d1),
        .I1(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I2(s_axi_aresetn),
        .I3(end_brst_rd),
        .I4(end_brst_rd_clr),
        .O(n_0_end_brst_rd_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_i_1),
        .Q(end_brst_rd),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBABABABBAAAAAAAA)) 
     last_bram_addr_i_1
       (.I0(n_0_brst_zero_i_2),
        .I1(n_0_last_bram_addr_i_2),
        .I2(ar_active_re),
        .I3(axi_rd_burst),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(n_0_last_bram_addr_i_3),
        .O(last_bram_addr0));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h7E)) 
     last_bram_addr_i_2
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .O(n_0_last_bram_addr_i_2));
LUT6 #(
    .INIT(64'h0000F300AAAAC0C0)) 
     last_bram_addr_i_3
       (.I0(n_0_last_bram_addr_i_4),
        .I1(ar_active_re),
        .I2(n_0_brst_zero_i_5),
        .I3(n_0_last_bram_addr_i_5),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(n_0_last_bram_addr_i_3));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     last_bram_addr_i_4
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(axi_rd_burst),
        .I2(s_axi_rready),
        .I3(O10),
        .O(n_0_last_bram_addr_i_4));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h88880080)) 
     last_bram_addr_i_5
       (.I0(s_axi_rready),
        .I1(O10),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(pend_rd_op),
        .O(n_0_last_bram_addr_i_5));
FDRE #(
    .INIT(1'b0)) 
     last_bram_addr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(O1));
LUT6 #(
    .INIT(64'h00E0FFFF00E00000)) 
     pend_rd_op_i_1
       (.I0(n_0_pend_rd_op_i_2),
        .I1(rd_data_sm_cs[2]),
        .I2(ar_active_re),
        .I3(rd_data_sm_cs[1]),
        .I4(n_0_pend_rd_op_i_3),
        .I5(pend_rd_op),
        .O(n_0_pend_rd_op_i_1));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT2 #(
    .INIT(4'h1)) 
     pend_rd_op_i_2
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .O(n_0_pend_rd_op_i_2));
LUT6 #(
    .INIT(64'hFFFF00F800F800F8)) 
     pend_rd_op_i_3
       (.I0(O3),
        .I1(pend_rd_op),
        .I2(ar_active_re),
        .I3(n_0_pend_rd_op_i_4),
        .I4(rd_data_sm_cs[0]),
        .I5(n_0_pend_rd_op_i_5),
        .O(n_0_pend_rd_op_i_3));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hFEFF)) 
     pend_rd_op_i_4
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .O(n_0_pend_rd_op_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
     pend_rd_op_i_5
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[3]),
        .I2(pend_rd_op),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(n_0_pend_rd_op_i_6),
        .O(n_0_pend_rd_op_i_5));
LUT6 #(
    .INIT(64'h0003000300020000)) 
     pend_rd_op_i_6
       (.I0(n_0_pend_rd_op_i_2),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(ar_active_re),
        .I5(pend_rd_op),
        .O(n_0_pend_rd_op_i_6));
FDRE #(
    .INIT(1'b0)) 
     pend_rd_op_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_pend_rd_op_i_1),
        .Q(pend_rd_op),
        .R(O1));
LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
     \rd_data_sm_cs[0]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(\n_0_rd_data_sm_cs[0]_i_2 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\n_0_rd_data_sm_cs[0]_i_3 ),
        .O(\n_0_rd_data_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hF3C0B3B0FFFFFFFF)) 
     \rd_data_sm_cs[0]_i_2 
       (.I0(pend_rd_op),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_adv_buf29_out),
        .I3(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 ),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'h8080808FFFFFFFFF)) 
     \rd_data_sm_cs[0]_i_3 
       (.I0(s_axi_rready),
        .I1(O10),
        .I2(rd_data_sm_cs[1]),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(axi_rd_burst),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_3 ));
LUT6 #(
    .INIT(64'h00000000FFFF404C)) 
     \rd_data_sm_cs[1]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(\n_0_rd_data_sm_cs[1]_i_2 ),
        .I4(\n_0_rd_data_sm_cs[1]_i_3 ),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'hE000E0000000FFFF)) 
     \rd_data_sm_cs[1]_i_2 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(rd_adv_buf29_out),
        .I3(ar_active_re),
        .I4(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h000003E0)) 
     \rd_data_sm_cs[1]_i_3 
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .O(\n_0_rd_data_sm_cs[1]_i_3 ));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     \rd_data_sm_cs[2]_i_1 
       (.I0(\n_0_rd_data_sm_cs[2]_i_2 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\n_0_rd_data_sm_cs[2]_i_3 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'hA8AC)) 
     \rd_data_sm_cs[2]_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(axi_rd_burst),
        .O(\n_0_rd_data_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'h777F777F0000FFFF)) 
     \rd_data_sm_cs[2]_i_3 
       (.I0(ar_active_re),
        .I1(rd_adv_buf29_out),
        .I2(act_rd_burst_two),
        .I3(act_rd_burst),
        .I4(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[2]_i_3 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
     \rd_data_sm_cs[3]_i_1 
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(\n_0_rd_data_sm_cs[3]_i_3 ),
        .O(\n_0_rd_data_sm_cs[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000070400000)) 
     \rd_data_sm_cs[3]_i_2 
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(\n_0_rd_data_sm_cs[3]_i_4 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[3]_i_2 ));
LUT6 #(
    .INIT(64'hBFFFDDDD9DFFDD88)) 
     \rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_adv_buf29_out),
        .I2(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(ar_active_re),
        .O(\n_0_rd_data_sm_cs[3]_i_3 ));
LUT6 #(
    .INIT(64'h4000400040000000)) 
     \rd_data_sm_cs[3]_i_4 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(O10),
        .I3(s_axi_rready),
        .I4(act_rd_burst_two),
        .I5(act_rd_burst),
        .O(\n_0_rd_data_sm_cs[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \rd_data_sm_cs[3]_i_5 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .O(\n_0_rd_data_sm_cs[3]_i_5 ));
FDRE \rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[0]_i_1 ),
        .Q(rd_data_sm_cs[0]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[1]_i_1 ),
        .Q(rd_data_sm_cs[1]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[2]_i_1 ),
        .Q(rd_data_sm_cs[2]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[3]_i_2 ),
        .Q(rd_data_sm_cs[3]),
        .R(O1));
LUT6 #(
    .INIT(64'h0000000000D500AA)) 
     rd_skid_buf_ld_reg_i_1
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(O10),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
FDRE #(
    .INIT(1'b0)) 
     rd_skid_buf_ld_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(O1));
LUT3 #(
    .INIT(8'hB8)) 
     rddata_mux_sel_i_1
       (.I0(rddata_mux_sel_cmb),
        .I1(n_0_rddata_mux_sel_i_3),
        .I2(rddata_mux_sel),
        .O(n_0_rddata_mux_sel_i_1));
LUT6 #(
    .INIT(64'hF0100FF0F0F00000)) 
     rddata_mux_sel_i_2
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_adv_buf29_out),
        .I5(rd_data_sm_cs[0]),
        .O(rddata_mux_sel_cmb));
LUT6 #(
    .INIT(64'h000000003FF83F08)) 
     rddata_mux_sel_i_3
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_adv_buf29_out),
        .I5(rd_data_sm_cs[3]),
        .O(n_0_rddata_mux_sel_i_3));
FDRE #(
    .INIT(1'b0)) 
     rddata_mux_sel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rddata_mux_sel_i_1),
        .Q(rddata_mux_sel),
        .R(O1));
endmodule

(* ORIG_REF_NAME = "sng_port_arb" *) 
module SHA256_AXIBramController_sng_port_arb
   (s_axi_awready,
    s_axi_arready,
    p_0_out,
    p_1_out,
    O1,
    p_2_out,
    O2,
    O3,
    p_1_out_0,
    O4,
    arb_sm_cs,
    p_3_out,
    aw_active_re,
    p_2_out_1,
    ar_active_re,
    curr_narrow_burst_en,
    bram_we_a,
    O5,
    I1,
    s_axi_aclk,
    I2,
    I3,
    I4,
    I5,
    D,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    s_axi_arvalid,
    s_axi_awvalid,
    curr_wrap_burst,
    s_axi_awburst,
    s_axi_awaddr,
    I16,
    s_axi_awsize,
    curr_wrap_burst_2,
    s_axi_arburst,
    s_axi_araddr,
    I17,
    s_axi_arsize,
    I18,
    s_axi_awlen,
    aw_active_d1,
    ar_active_d1,
    I19,
    I20,
    I21,
    s_axi_rready,
    Q,
    I22,
    s_axi_aresetn);
  output s_axi_awready;
  output s_axi_arready;
  output p_0_out;
  output p_1_out;
  output O1;
  output p_2_out;
  output O2;
  output O3;
  output p_1_out_0;
  output O4;
  output [1:0]arb_sm_cs;
  output p_3_out;
  output aw_active_re;
  output p_2_out_1;
  output ar_active_re;
  output curr_narrow_burst_en;
  output [3:0]bram_we_a;
  output O5;
  input I1;
  input s_axi_aclk;
  input I2;
  input I3;
  input I4;
  input I5;
  input [0:0]D;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input [0:0]I12;
  input I13;
  input I14;
  input I15;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input curr_wrap_burst;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awaddr;
  input I16;
  input [2:0]s_axi_awsize;
  input curr_wrap_burst_2;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_araddr;
  input I17;
  input [2:0]s_axi_arsize;
  input I18;
  input [1:0]s_axi_awlen;
  input aw_active_d1;
  input ar_active_d1;
  input I19;
  input I20;
  input I21;
  input s_axi_rready;
  input [3:0]Q;
  input I22;
  input s_axi_aresetn;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire [0:0]I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire [3:0]Q;
  wire ar_active_cmb;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_arready_cmb;
  wire axi_awready_cmb;
  wire [3:0]bram_we_a;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_2;
  wire last_arb_won;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23 ;
  wire n_0_ar_active_i_1;
  wire n_0_ar_active_i_2;
  wire \n_0_arb_sm_cs[0]_i_1 ;
  wire \n_0_arb_sm_cs[0]_i_2 ;
  wire \n_0_arb_sm_cs[0]_i_3 ;
  wire \n_0_arb_sm_cs[1]_i_1 ;
  wire n_0_aw_active_i_1;
  wire n_0_axi_arready_int_i_2;
  wire n_0_axi_awready_int_i_3;
  wire n_0_last_arb_won_i_1;
  wire n_0_last_arb_won_i_2;
  wire p_0_out;
  wire p_1_out;
  wire p_1_out_0;
  wire p_2_out;
  wire p_2_out_1;
  wire p_3_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_rready;

(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h0888)) 
     \GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(p_0_out),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(I21),
        .O(O5));
LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23 ),
        .I1(I2),
        .I2(I3),
        .I3(I4),
        .I4(I5),
        .I5(p_2_out),
        .O(O1));
LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20 ),
        .I1(I8),
        .I2(I9),
        .I3(I10),
        .I4(I11),
        .I5(p_1_out_0),
        .O(O3));
LUT6 #(
    .INIT(64'h0000000044400000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_10 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(aw_active_re),
        .I5(I16),
        .O(p_2_out));
LUT6 #(
    .INIT(64'h0000000044400000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_10__0 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(ar_active_re),
        .I5(I17),
        .O(p_1_out_0));
LUT6 #(
    .INIT(64'h0000888AFFFFBBBA)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_12 
       (.I0(D),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23 ),
        .I2(I2),
        .I3(I6),
        .I4(p_2_out),
        .I5(I7),
        .O(O2));
LUT6 #(
    .INIT(64'h0000888AFFFFBBBA)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0 
       (.I0(I12),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20 ),
        .I2(I8),
        .I3(I13),
        .I4(p_1_out_0),
        .I5(I14),
        .O(O4));
LUT6 #(
    .INIT(64'h04FF04FF04FFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_18 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(ar_active_re),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18 ));
LUT6 #(
    .INIT(64'hFFFFFF1FFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_20 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(ar_active_re),
        .I3(I17),
        .I4(s_axi_arburst[0]),
        .I5(s_axi_arburst[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20 ));
LUT6 #(
    .INIT(64'h04FF04FF04FFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_21 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(aw_active_re),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_awaddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21 ));
LUT6 #(
    .INIT(64'hFFFFFF1FFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_23 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(aw_active_re),
        .I3(I16),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23 ));
LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_9 
       (.I0(I5),
        .I1(I4),
        .I2(I3),
        .I3(I2),
        .I4(curr_wrap_burst),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21 ),
        .O(p_3_out));
LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0 
       (.I0(I11),
        .I1(I10),
        .I2(I9),
        .I3(I8),
        .I4(curr_wrap_burst_2),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18 ),
        .O(p_2_out_1));
LUT6 #(
    .INIT(64'hFD00FD00FD000000)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(I18),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[1]),
        .I3(aw_active_re),
        .I4(s_axi_awburst[1]),
        .I5(s_axi_awburst[0]),
        .O(curr_narrow_burst_en));
LUT6 #(
    .INIT(64'hFFFFAAEA0000AA2A)) 
     ar_active_i_1
       (.I0(p_0_out),
        .I1(arb_sm_cs[0]),
        .I2(I20),
        .I3(arb_sm_cs[1]),
        .I4(n_0_ar_active_i_2),
        .I5(ar_active_cmb),
        .O(n_0_ar_active_i_1));
LUT6 #(
    .INIT(64'h000000000F770000)) 
     ar_active_i_2
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(I19),
        .I3(arb_sm_cs[1]),
        .I4(s_axi_arvalid),
        .I5(arb_sm_cs[0]),
        .O(n_0_ar_active_i_2));
LUT6 #(
    .INIT(64'hFF00FF001F001300)) 
     ar_active_i_3
       (.I0(last_arb_won),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(I15),
        .I5(arb_sm_cs[1]),
        .O(ar_active_cmb));
FDRE #(
    .INIT(1'b0)) 
     ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_ar_active_i_1),
        .Q(p_0_out),
        .R(I1));
LUT5 #(
    .INIT(32'hF0FFF800)) 
     \arb_sm_cs[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[1]),
        .I2(\n_0_arb_sm_cs[0]_i_2 ),
        .I3(\n_0_arb_sm_cs[0]_i_3 ),
        .I4(arb_sm_cs[0]),
        .O(\n_0_arb_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'h0040005000405050)) 
     \arb_sm_cs[0]_i_2 
       (.I0(arb_sm_cs[1]),
        .I1(I15),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .I5(last_arb_won),
        .O(\n_0_arb_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'hCCFFEFEFCCFF2323)) 
     \arb_sm_cs[0]_i_3 
       (.I0(n_0_axi_awready_int_i_3),
        .I1(arb_sm_cs[0]),
        .I2(I15),
        .I3(I19),
        .I4(arb_sm_cs[1]),
        .I5(I20),
        .O(\n_0_arb_sm_cs[0]_i_3 ));
LUT6 #(
    .INIT(64'h33000D0D33000101)) 
     \arb_sm_cs[1]_i_1 
       (.I0(n_0_axi_awready_int_i_3),
        .I1(arb_sm_cs[0]),
        .I2(I15),
        .I3(I19),
        .I4(arb_sm_cs[1]),
        .I5(I20),
        .O(\n_0_arb_sm_cs[1]_i_1 ));
FDRE \arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_arb_sm_cs[0]_i_1 ),
        .Q(arb_sm_cs[0]),
        .R(I1));
FDRE \arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_arb_sm_cs[1]_i_1 ),
        .Q(arb_sm_cs[1]),
        .R(I1));
LUT6 #(
    .INIT(64'h3377307700440044)) 
     aw_active_i_1
       (.I0(I15),
        .I1(axi_awready_cmb),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(I19),
        .I5(p_1_out),
        .O(n_0_aw_active_i_1));
FDRE #(
    .INIT(1'b0)) 
     aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_aw_active_i_1),
        .Q(p_1_out),
        .R(I1));
LUT5 #(
    .INIT(32'h00007555)) 
     axi_arready_int_i_1
       (.I0(arb_sm_cs[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(I15),
        .I4(n_0_axi_arready_int_i_2),
        .O(axi_arready_cmb));
LUT5 #(
    .INIT(32'h0000FF7F)) 
     axi_arready_int_i_2
       (.I0(arb_sm_cs[0]),
        .I1(I21),
        .I2(s_axi_rready),
        .I3(arb_sm_cs[1]),
        .I4(n_0_ar_active_i_2),
        .O(n_0_axi_arready_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(I1));
LUT6 #(
    .INIT(64'h1011000100010001)) 
     axi_awready_int_i_1
       (.I0(arb_sm_cs[1]),
        .I1(I15),
        .I2(arb_sm_cs[0]),
        .I3(n_0_axi_awready_int_i_3),
        .I4(I21),
        .I5(s_axi_rready),
        .O(axi_awready_cmb));
LUT3 #(
    .INIT(8'h2A)) 
     axi_awready_int_i_3
       (.I0(s_axi_arvalid),
        .I1(last_arb_won),
        .I2(s_axi_awvalid),
        .O(n_0_axi_awready_int_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[0]_INST_0 
       (.I0(p_1_out),
        .I1(Q[0]),
        .O(bram_we_a[0]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[1]_INST_0 
       (.I0(p_1_out),
        .I1(Q[1]),
        .O(bram_we_a[1]));
LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[2]_INST_0 
       (.I0(p_1_out),
        .I1(Q[2]),
        .O(bram_we_a[2]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[3]_INST_0 
       (.I0(p_1_out),
        .I1(Q[3]),
        .O(bram_we_a[3]));
LUT5 #(
    .INIT(32'hAAABAAA8)) 
     last_arb_won_i_1
       (.I0(ar_active_cmb),
        .I1(n_0_last_arb_won_i_2),
        .I2(I22),
        .I3(n_0_ar_active_i_2),
        .I4(last_arb_won),
        .O(n_0_last_arb_won_i_1));
LUT6 #(
    .INIT(64'h0000080008080808)) 
     last_arb_won_i_2
       (.I0(arb_sm_cs[0]),
        .I1(I20),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awvalid),
        .I5(I15),
        .O(n_0_last_arb_won_i_2));
FDRE #(
    .INIT(1'b0)) 
     last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_last_arb_won_i_1),
        .Q(last_arb_won),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \save_init_bram_addr_ld[13]_i_1 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .O(aw_active_re));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(p_0_out),
        .I1(ar_active_d1),
        .O(ar_active_re));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module SHA256_AXIBramController_wr_chnl
   (aw_active_d1,
    bram_wrdata_a,
    s_axi_wready,
    O1,
    D,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    curr_wrap_burst,
    bram_en_a,
    s_axi_bid,
    Q,
    I1,
    s_axi_aclk,
    s_axi_awid,
    p_1_out,
    s_axi_wdata,
    I2,
    p_3_out,
    p_2_out,
    I3,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_awvalid,
    arb_sm_cs,
    I4,
    I5,
    I6,
    I7,
    s_axi_awlen,
    I8,
    I9,
    p_0_out,
    s_axi_bready,
    aw_active_re,
    s_axi_awburst,
    p_7_in,
    curr_narrow_burst_en,
    s_axi_wstrb);
  output aw_active_d1;
  output [31:0]bram_wrdata_a;
  output s_axi_wready;
  output O1;
  output [0:0]D;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output [10:0]O15;
  output O16;
  output O17;
  output O18;
  output curr_wrap_burst;
  output bram_en_a;
  output [11:0]s_axi_bid;
  output [3:0]Q;
  input I1;
  input s_axi_aclk;
  input [11:0]s_axi_awid;
  input p_1_out;
  input [31:0]s_axi_wdata;
  input I2;
  input p_3_out;
  input p_2_out;
  input I3;
  input [2:0]s_axi_awsize;
  input [12:0]s_axi_awaddr;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input [1:0]arb_sm_cs;
  input I4;
  input I5;
  input I6;
  input I7;
  input [7:0]s_axi_awlen;
  input I8;
  input I9;
  input p_0_out;
  input s_axi_bready;
  input aw_active_re;
  input [1:0]s_axi_awburst;
  input p_7_in;
  input curr_narrow_burst_en;
  input [3:0]s_axi_wstrb;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire [0:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire [10:0]O15;
  wire O16;
  wire O17;
  wire O18;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [3:0]Q;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire [0:0]axi_byte_div_curr_awsize;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [31:0]bram_wrdata_a;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_7 ;
  wire n_0_BID_FIFO;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_49 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_50 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_51 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_31 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ;
  wire \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ;
  wire \n_0_axi_bid_int[11]_i_3 ;
  wire \n_0_axi_bid_int[11]_i_6 ;
  wire n_0_axi_bvalid_int_i_1;
  wire n_0_axi_bvalid_int_i_2;
  wire n_0_axi_wr_burst_i_1;
  wire n_0_axi_wr_burst_i_2;
  wire n_0_axi_wready_int_mod_i_1;
  wire \n_0_bvalid_cnt[0]_i_1 ;
  wire \n_0_bvalid_cnt[1]_i_1 ;
  wire \n_0_bvalid_cnt[2]_i_1 ;
  wire n_10_BID_FIFO;
  wire n_11_BID_FIFO;
  wire n_12_BID_FIFO;
  wire n_17_I_WRAP_BRST;
  wire n_18_I_WRAP_BRST;
  wire n_1_BID_FIFO;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ;
  wire n_2_BID_FIFO;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ;
  wire n_3_BID_FIFO;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ;
  wire n_3_I_WRAP_BRST;
  wire n_4_BID_FIFO;
  wire n_5_BID_FIFO;
  wire n_6_BID_FIFO;
  wire n_7_BID_FIFO;
  wire n_8_BID_FIFO;
  wire n_9_BID_FIFO;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [0:0]narrow_burst_cnt_ld_reg;
  wire p_0_out;
  wire p_11_in;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]wr_data_sng_sm_cs;
  wire wrdata_reg_ld;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h10101010101F1010)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(I8),
        .I1(I9),
        .I2(p_0_out),
        .I3(curr_fixed_burst_reg),
        .I4(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_7 ),
        .I5(n_3_I_WRAP_BRST),
        .O(O14));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_7 ));
SHA256_AXIBramController_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .D({n_0_BID_FIFO,n_1_BID_FIFO,n_2_BID_FIFO,n_3_BID_FIFO,n_4_BID_FIFO,n_5_BID_FIFO,n_6_BID_FIFO,n_7_BID_FIFO,n_8_BID_FIFO,n_9_BID_FIFO,n_10_BID_FIFO,n_11_BID_FIFO}),
        .E(n_12_BID_FIFO),
        .I1(I1),
        .I2(aw_active_d1),
        .I3(\n_0_axi_bid_int[11]_i_3 ),
        .I4(O1),
        .axi_wdata_full_reg(axi_wdata_full_reg),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
LUT6 #(
    .INIT(64'h6464646464646E64)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ),
        .I1(narrow_addr_int[0]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .I3(narrow_burst_cnt_ld_reg),
        .I4(p_3_out),
        .I5(p_2_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ));
LUT6 #(
    .INIT(64'h6E6E646E6464646E)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ),
        .I1(narrow_addr_int[0]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I4(I2),
        .I5(narrow_burst_cnt_ld_reg),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT5 #(
    .INIT(32'h4000FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(curr_narrow_burst),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT5 #(
    .INIT(32'h11540054)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awaddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT5 #(
    .INIT(32'h4000FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_11 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(curr_narrow_burst),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[1]),
        .I3(wr_data_sng_sm_cs[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27 ),
        .I4(wr_data_sng_sm_cs[0]),
        .I5(wr_data_sng_sm_cs[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0 ));
LUT6 #(
    .INIT(64'h02AB02A8FFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_16 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30 ),
        .O(O6));
LUT6 #(
    .INIT(64'h3F0F3E0E3B0B3A0A)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_17 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_31 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ),
        .O(O4));
LUT6 #(
    .INIT(64'hFFFCFFFC00FC004C)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_18__0 
       (.I0(s_axi_awsize[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35 ),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37 ),
        .O(O5));
LUT6 #(
    .INIT(64'hFFFFFFFFABFCA800)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_19 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28 ),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38 ),
        .O(O2));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_20__0 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(curr_wrap_burst));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_22 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(O7));
LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43 ),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h1312)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[1]),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_27 
       (.I0(s_axi_wvalid),
        .I1(curr_narrow_burst),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_28 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_29 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[5]),
        .I5(s_axi_awlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29 ));
LUT6 #(
    .INIT(64'h8888888888888A88)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .I3(D),
        .I4(p_3_out),
        .I5(p_2_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ));
LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_30 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_32 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_33 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_34 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT5 #(
    .INIT(32'hEBBB2888)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_35 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_50 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_51 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_36 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36 ));
LUT6 #(
    .INIT(64'hB8B80000FF000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_37 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[3]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT5 #(
    .INIT(32'hFF7FEA00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_38 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_51 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_50 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT5 #(
    .INIT(32'h333E0002)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_39 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39 ));
LUT5 #(
    .INIT(32'hC6EEC644)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .I4(I3),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48 ),
        .I1(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0 ));
LUT5 #(
    .INIT(32'h00AAF0CC)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_41 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32 ),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_51 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0 ));
LUT5 #(
    .INIT(32'h550F33FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_43 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36 ),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43 ));
LUT5 #(
    .INIT(32'h00010003)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awaddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0 ));
LUT4 #(
    .INIT(16'h0004)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0 ));
LUT5 #(
    .INIT(32'hFFFFFFF8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_46__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46__0 ));
LUT5 #(
    .INIT(32'h000033A8)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_47__0 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_48 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_49 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_49 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_50 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_50 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_51 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_51 ));
LUT6 #(
    .INIT(64'hFFFFFFFF5555D555)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .I1(curr_narrow_burst),
        .I2(s_axi_wvalid),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(wr_data_sng_sm_cs[0]),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ));
LUT4 #(
    .INIT(16'hD700)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ));
LUT6 #(
    .INIT(64'h5555555500045555)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_8 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(p_1_out),
        .I5(aw_active_d1),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .Q(narrow_addr_int[0]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .Q(narrow_addr_int[1]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_26_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47__0 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_31 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_49 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_31 ),
        .S(s_axi_awsize[2]));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_13 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(narrow_addr_int[1]),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(curr_narrow_burst),
        .O(narrow_bram_addr_inc));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(I1));
LUT5 #(
    .INIT(32'hFF1F0010)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(p_1_out),
        .I3(aw_active_d1),
        .I4(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .O(narrow_burst_cnt_ld_reg));
LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(p_1_out),
        .I4(aw_active_d1),
        .I5(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .O(D));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .O(p_11_in));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_in),
        .Q(axi_wlast_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h30303030A000A0A0)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1__0 
       (.I0(curr_narrow_burst),
        .I1(axi_byte_div_curr_awsize),
        .I2(s_axi_aresetn),
        .I3(axi_wlast_d1),
        .I4(p_11_in),
        .I5(curr_narrow_burst_en),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[2]),
        .O(O11));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT5 #(
    .INIT(32'hD8D888DC)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(wr_data_sng_sm_cs[1]),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wvalid),
        .I3(p_1_out),
        .I4(wr_data_sng_sm_cs[0]),
        .O(axi_wdata_full_cmb));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT5 #(
    .INIT(32'h0000F0C8)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(p_1_out),
        .I2(s_axi_wvalid),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(wr_data_sng_sm_cs[0]),
        .O(bram_en_cmb));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(p_8_in),
        .R(I1));
LUT1 #(
    .INIT(2'h1)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_3 ),
        .O(bvalid_cnt_inc));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFF5C0000)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(axi_wr_burst),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ),
        .I5(wr_data_sng_sm_cs[0]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000FFFF00A30000)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(axi_wr_burst),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(wr_data_sng_sm_cs[0]),
        .I4(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ),
        .I5(wr_data_sng_sm_cs[1]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFF0AA0088)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(p_1_out),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wlast),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sng_sm_cs[0]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ));
FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ),
        .Q(wr_data_sng_sm_cs[0]),
        .R(I1));
FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ),
        .Q(wr_data_sng_sm_cs[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0CC4)) 
     \GEN_WRDATA[31].bram_wrdata_int[31]_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .O(wrdata_reg_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hF33B0000FFFFFFFF)) 
     \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(Q[0]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(Q[1]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(Q[2]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(Q[3]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1 ));
SHA256_AXIBramController_wrap_brst I_WRAP_BRST
       (.I1(aw_active_d1),
        .I2(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_7 ),
        .I3(I1),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .O1(n_3_I_WRAP_BRST),
        .O10(O10),
        .O13(O13),
        .O15(O15),
        .O16(O16),
        .O2(n_17_I_WRAP_BRST),
        .O3(n_18_I_WRAP_BRST),
        .O8(O8),
        .aw_active_re(aw_active_re),
        .axi_byte_div_curr_awsize(axi_byte_div_curr_awsize),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \arb_sm_cs[1]_i_2 
       (.I0(wr_data_sng_sm_cs[1]),
        .I1(wr_data_sng_sm_cs[0]),
        .O(O18));
FDRE #(
    .INIT(1'b0)) 
     aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(aw_active_d1),
        .R(I1));
LUT4 #(
    .INIT(16'hD555)) 
     axi_awready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .O(O17));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT5 #(
    .INIT(32'hBFFFAAAA)) 
     \axi_bid_int[11]_i_3 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(s_axi_wlast),
        .I2(wr_data_sng_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(\n_0_axi_bid_int[11]_i_6 ),
        .O(\n_0_axi_bid_int[11]_i_3 ));
LUT6 #(
    .INIT(64'hFCFFFCFFF5FFFFFF)) 
     \axi_bid_int[11]_i_6 
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst),
        .I2(wr_data_sng_sm_cs[1]),
        .I3(p_1_out),
        .I4(s_axi_wvalid),
        .I5(axi_wdata_full_reg),
        .O(\n_0_axi_bid_int[11]_i_6 ));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_11_BID_FIFO),
        .Q(s_axi_bid[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_1_BID_FIFO),
        .Q(s_axi_bid[10]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_0_BID_FIFO),
        .Q(s_axi_bid[11]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_10_BID_FIFO),
        .Q(s_axi_bid[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_9_BID_FIFO),
        .Q(s_axi_bid[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_8_BID_FIFO),
        .Q(s_axi_bid[3]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_7_BID_FIFO),
        .Q(s_axi_bid[4]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_6_BID_FIFO),
        .Q(s_axi_bid[5]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_5_BID_FIFO),
        .Q(s_axi_bid[6]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_4_BID_FIFO),
        .Q(s_axi_bid[7]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_3_BID_FIFO),
        .Q(s_axi_bid[8]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(n_12_BID_FIFO),
        .D(n_2_BID_FIFO),
        .Q(s_axi_bid[9]),
        .R(I1));
LUT6 #(
    .INIT(64'hAAAAAAAAAA2AAA0A)) 
     axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(n_0_axi_bvalid_int_i_2),
        .I2(\n_0_axi_bid_int[11]_i_3 ),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .I5(AW2Arb_BVALID_Cnt[1]),
        .O(n_0_axi_bvalid_int_i_1));
LUT5 #(
    .INIT(32'hFE000000)) 
     axi_bvalid_int_i_2
       (.I0(AW2Arb_BVALID_Cnt[0]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(s_axi_bready),
        .I4(O1),
        .O(n_0_axi_bvalid_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bvalid_int_i_1),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'h74)) 
     axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(n_0_axi_wr_burst_i_2),
        .I2(axi_wr_burst),
        .O(n_0_axi_wr_burst_i_1));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT5 #(
    .INIT(32'h0000F2D0)) 
     axi_wr_burst_i_2
       (.I0(axi_wdata_full_reg),
        .I1(wr_data_sng_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(p_1_out),
        .I4(wr_data_sng_sm_cs[1]),
        .O(n_0_axi_wr_burst_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wr_burst_i_1),
        .Q(axi_wr_burst),
        .R(I1));
LUT6 #(
    .INIT(64'h0000AAAA20A820AA)) 
     axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(wr_data_sng_sm_cs[0]),
        .I2(p_1_out),
        .I3(s_axi_wvalid),
        .I4(axi_wdata_full_reg),
        .I5(wr_data_sng_sm_cs[1]),
        .O(n_0_axi_wready_int_mod_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wready_int_mod_i_1),
        .Q(s_axi_wready),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(I1));
LUT2 #(
    .INIT(4'hE)) 
     bram_en_a_INST_0
       (.I0(p_8_in),
        .I1(p_7_in),
        .O(bram_en_a));
LUT6 #(
    .INIT(64'h6A6A6A6A95959555)) 
     \bvalid_cnt[0]_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_3 ),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hEAEA15157F7F8000)) 
     \bvalid_cnt[1]_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_3 ),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hEA15FF00FF007F00)) 
     \bvalid_cnt[2]_i_1 
       (.I0(\n_0_axi_bid_int[11]_i_3 ),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[0]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[1]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[2]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_17_I_WRAP_BRST),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_18_I_WRAP_BRST),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000007F00)) 
     last_arb_won_i_3
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .I5(arb_sm_cs[1]),
        .O(O9));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module SHA256_AXIBramController_wrap_brst
   (O8,
    O10,
    O13,
    O1,
    O15,
    O16,
    axi_byte_div_curr_awsize,
    O2,
    O3,
    s_axi_aresetn,
    I4,
    I5,
    I6,
    wr_data_sng_sm_cs,
    I7,
    I1,
    p_1_out,
    curr_wrap_burst_reg,
    I2,
    s_axi_awaddr,
    aw_active_re,
    curr_narrow_burst,
    s_axi_wvalid,
    narrow_addr_int,
    narrow_bram_addr_inc_d1,
    s_axi_awlen,
    s_axi_awsize,
    curr_fixed_burst_reg,
    s_axi_awburst,
    I3,
    s_axi_aclk);
  output O8;
  output O10;
  output O13;
  output O1;
  output [10:0]O15;
  output O16;
  output [0:0]axi_byte_div_curr_awsize;
  output O2;
  output O3;
  input s_axi_aresetn;
  input I4;
  input I5;
  input I6;
  input [1:0]wr_data_sng_sm_cs;
  input I7;
  input I1;
  input p_1_out;
  input curr_wrap_burst_reg;
  input I2;
  input [10:0]s_axi_awaddr;
  input aw_active_re;
  input curr_narrow_burst;
  input s_axi_wvalid;
  input [1:0]narrow_addr_int;
  input narrow_bram_addr_inc_d1;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input curr_fixed_burst_reg;
  input [1:0]s_axi_awburst;
  input I3;
  input s_axi_aclk;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire O1;
  wire O10;
  wire O13;
  wire [10:0]O15;
  wire O16;
  wire O2;
  wire O3;
  wire O8;
  wire aw_active_re;
  wire [0:0]axi_byte_div_curr_awsize;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_3 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_3 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_4 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_5 ;
  wire \n_0_save_init_bram_addr_ld[3]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[4]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[5]_i_2 ;
  wire \n_0_wrap_burst_total[0]_i_2 ;
  wire \n_0_wrap_burst_total[1]_i_2 ;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire p_1_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_wvalid;
  wire [13:3]save_init_bram_addr_ld;
  wire [1:0]wr_data_sng_sm_cs;
  wire [2:0]wrap_burst_total;
  wire [2:0]wrap_burst_total_cmb;

LUT2 #(
    .INIT(4'hB)) 
     \ADDR_SNG_PORT.bram_addr_int[13]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_3 ),
        .I1(s_axi_aresetn),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \ADDR_SNG_PORT.bram_addr_int[13]_i_3 
       (.I0(O13),
        .I1(wr_data_sng_sm_cs[0]),
        .I2(wr_data_sng_sm_cs[1]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_3 ));
LUT6 #(
    .INIT(64'hBB0BBBBBBBBBBBBB)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_4 
       (.I0(I1),
        .I1(p_1_out),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(I2),
        .O(O13));
LUT4 #(
    .INIT(16'h8000)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(I7),
        .I1(I5),
        .I2(I6),
        .I3(I4),
        .O(O10));
LUT6 #(
    .INIT(64'h00000000222E0000)) 
     curr_fixed_burst_reg_i_1__0
       (.I0(curr_fixed_burst_reg),
        .I1(aw_active_re),
        .I2(s_axi_awburst[0]),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_aresetn),
        .I5(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_3 ),
        .O(O2));
LUT6 #(
    .INIT(64'h000000002E220000)) 
     curr_wrap_burst_reg_i_1__0
       (.I0(curr_wrap_burst_reg),
        .I1(aw_active_re),
        .I2(s_axi_awburst[0]),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_aresetn),
        .I5(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_3 ),
        .O(O3));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[10]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[10]),
        .O(O15[7]));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[11]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[11]),
        .O(O15[8]));
LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCC8C)) 
     \save_init_bram_addr_ld[11]_i_2 
       (.I0(\n_0_save_init_bram_addr_ld[11]_i_4 ),
        .I1(curr_narrow_burst),
        .I2(s_axi_wvalid),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[1]),
        .I5(narrow_bram_addr_inc_d1),
        .O(O1));
LUT5 #(
    .INIT(32'hFF2F0020)) 
     \save_init_bram_addr_ld[11]_i_3 
       (.I0(O10),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_5 ),
        .O(\n_0_save_init_bram_addr_ld[11]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \save_init_bram_addr_ld[11]_i_4 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .O(\n_0_save_init_bram_addr_ld[11]_i_4 ));
LUT6 #(
    .INIT(64'h44C004C000C000C0)) 
     \save_init_bram_addr_ld[11]_i_5 
       (.I0(wrap_burst_total[2]),
        .I1(I4),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[1]),
        .I4(I5),
        .I5(I6),
        .O(\n_0_save_init_bram_addr_ld[11]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[12]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(O16),
        .I2(save_init_bram_addr_ld[12]),
        .O(O15[9]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[13]_i_2 
       (.I0(s_axi_awaddr[10]),
        .I1(O16),
        .I2(save_init_bram_addr_ld[13]),
        .O(O15[10]));
LUT5 #(
    .INIT(32'hFF4FFFFF)) 
     \save_init_bram_addr_ld[13]_i_3 
       (.I0(I1),
        .I1(p_1_out),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .O(O16));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[3]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(\n_0_save_init_bram_addr_ld[3]_i_2 ),
        .O(O15[0]));
LUT4 #(
    .INIT(16'hC0B0)) 
     \save_init_bram_addr_ld[3]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(save_init_bram_addr_ld[3]),
        .I3(wrap_burst_total[1]),
        .O(\n_0_save_init_bram_addr_ld[3]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[4]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(\n_0_save_init_bram_addr_ld[4]_i_2 ),
        .O(O15[1]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'hBD00)) 
     \save_init_bram_addr_ld[4]_i_2 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[4]),
        .O(\n_0_save_init_bram_addr_ld[4]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[5]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(\n_0_save_init_bram_addr_ld[5]_i_2 ),
        .O(O15[2]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \save_init_bram_addr_ld[5]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[5]),
        .O(\n_0_save_init_bram_addr_ld[5]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[6]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[6]),
        .O(O15[3]));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[7]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[7]),
        .O(O15[4]));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[8]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[8]),
        .O(O15[5]));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[9]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(aw_active_re),
        .I2(curr_wrap_burst_reg),
        .I3(O1),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I5(save_init_bram_addr_ld[9]),
        .O(O15[6]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[7]),
        .Q(save_init_bram_addr_ld[10]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[8]),
        .Q(save_init_bram_addr_ld[11]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[9]),
        .Q(save_init_bram_addr_ld[12]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[10]),
        .Q(save_init_bram_addr_ld[13]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[0]),
        .Q(save_init_bram_addr_ld[3]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[1]),
        .Q(save_init_bram_addr_ld[4]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[2]),
        .Q(save_init_bram_addr_ld[5]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[3]),
        .Q(save_init_bram_addr_ld[6]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[4]),
        .Q(save_init_bram_addr_ld[7]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[5]),
        .Q(save_init_bram_addr_ld[8]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(O15[6]),
        .Q(save_init_bram_addr_ld[9]),
        .R(I3));
LUT6 #(
    .INIT(64'h0000000040344037)) 
     \wrap_burst_total[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awlen[1]),
        .I5(\n_0_wrap_burst_total[0]_i_2 ),
        .O(wrap_burst_total_cmb[0]));
LUT5 #(
    .INIT(32'hFFFF45FF)) 
     \wrap_burst_total[0]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[2]),
        .O(\n_0_wrap_burst_total[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000001015400)) 
     \wrap_burst_total[1]_i_1__0 
       (.I0(\n_0_wrap_burst_total[1]_i_2 ),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(wrap_burst_total_cmb[1]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \wrap_burst_total[1]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .O(\n_0_wrap_burst_total[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \wrap_burst_total[2]_i_1 
       (.I0(axi_byte_div_curr_awsize),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awlen[2]),
        .O(wrap_burst_total_cmb[2]));
LUT3 #(
    .INIT(8'h02)) 
     \wrap_burst_total[2]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .O(axi_byte_div_curr_awsize));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(I3));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(I3));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module SHA256_AXIBramController_wrap_brst_0
   (O11,
    O1,
    O2,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O3,
    bram_addr_inc10_out,
    O4,
    axi_byte_div_curr_arsize,
    I4,
    p_0_out,
    I1,
    narrow_addr_int,
    Q,
    curr_narrow_burst,
    narrow_bram_addr_inc_d1,
    I5,
    I6,
    I7,
    I8,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_araddr,
    I9,
    s_axi_awaddr,
    I10,
    axi_rd_burst,
    I2,
    s_axi_rready,
    I3,
    brst_zero,
    end_brst_rd,
    s_axi_aresetn,
    curr_wrap_burst_reg,
    ar_active_re,
    s_axi_aclk);
  output O11;
  output O1;
  output O2;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output [1:0]O26;
  output O3;
  output bram_addr_inc10_out;
  output O4;
  output [0:0]axi_byte_div_curr_arsize;
  input I4;
  input p_0_out;
  input I1;
  input [1:0]narrow_addr_int;
  input [3:0]Q;
  input curr_narrow_burst;
  input narrow_bram_addr_inc_d1;
  input I5;
  input I6;
  input I7;
  input I8;
  input [2:0]s_axi_arsize;
  input [3:0]s_axi_arlen;
  input [11:0]s_axi_araddr;
  input I9;
  input [0:0]s_axi_awaddr;
  input [8:0]I10;
  input axi_rd_burst;
  input I2;
  input s_axi_rready;
  input I3;
  input brst_zero;
  input end_brst_rd;
  input s_axi_aresetn;
  input curr_wrap_burst_reg;
  input ar_active_re;
  input s_axi_aclk;

  wire I1;
  wire [8:0]I10;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O11;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire [1:0]O26;
  wire O3;
  wire O4;
  wire [3:0]Q;
  wire [9:1]RdChnl_BRAM_Addr_Ld;
  wire ar_active_re;
  wire [0:0]axi_byte_div_curr_arsize;
  wire axi_rd_burst;
  wire bram_addr_inc10_out;
  wire brst_zero;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire end_brst_rd;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_6 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_7 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_8 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4 ;
  wire \n_0_save_init_bram_addr_ld_reg[10] ;
  wire \n_0_save_init_bram_addr_ld_reg[11] ;
  wire \n_0_save_init_bram_addr_ld_reg[12] ;
  wire \n_0_save_init_bram_addr_ld_reg[13] ;
  wire \n_0_save_init_bram_addr_ld_reg[3] ;
  wire \n_0_save_init_bram_addr_ld_reg[4] ;
  wire \n_0_save_init_bram_addr_ld_reg[5] ;
  wire \n_0_save_init_bram_addr_ld_reg[6] ;
  wire \n_0_save_init_bram_addr_ld_reg[7] ;
  wire \n_0_save_init_bram_addr_ld_reg[8] ;
  wire \n_0_save_init_bram_addr_ld_reg[9] ;
  wire \n_0_wrap_burst_total[0]_i_2__0 ;
  wire \n_0_wrap_burst_total[1]_i_2__0 ;
  wire \n_0_wrap_burst_total_reg[0] ;
  wire \n_0_wrap_burst_total_reg[1] ;
  wire \n_0_wrap_burst_total_reg[2] ;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire p_0_out;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_awaddr;
  wire s_axi_rready;
  wire [2:0]wrap_burst_total_cmb;

(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(\n_0_save_init_bram_addr_ld_reg[10] ),
        .I1(O1),
        .I2(s_axi_araddr[8]),
        .I3(p_0_out),
        .I4(I10[7]),
        .O(O24));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(\n_0_save_init_bram_addr_ld_reg[11] ),
        .I1(O1),
        .I2(s_axi_araddr[9]),
        .I3(p_0_out),
        .I4(I10[8]),
        .O(O25));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h2202)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(I4),
        .I1(O1),
        .I2(p_0_out),
        .I3(I1),
        .O(O15));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hFF5D)) 
     \ADDR_SNG_PORT.bram_addr_int[13]_i_4 
       (.I0(I4),
        .I1(p_0_out),
        .I2(I1),
        .I3(O1),
        .O(O11));
LUT5 #(
    .INIT(32'h2F202020)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(O1),
        .I2(p_0_out),
        .I3(I9),
        .I4(s_axi_awaddr),
        .O(O16));
LUT5 #(
    .INIT(32'h00001F00)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_3 
       (.I0(curr_narrow_burst),
        .I1(Q[3]),
        .I2(O2),
        .I3(O3),
        .I4(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_6 ),
        .O(O1));
LUT5 #(
    .INIT(32'hFFFFFEFF)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_5 
       (.I0(narrow_addr_int[1]),
        .I1(narrow_addr_int[0]),
        .I2(Q[3]),
        .I3(curr_narrow_burst),
        .I4(narrow_bram_addr_inc_d1),
        .O(O2));
LUT6 #(
    .INIT(64'hBBBBFBBBBBBBFBFB)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_6 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_7 ),
        .I1(curr_wrap_burst_reg),
        .I2(\n_0_wrap_burst_total_reg[2] ),
        .I3(\n_0_wrap_burst_total_reg[0] ),
        .I4(\n_0_wrap_burst_total_reg[1] ),
        .I5(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_8 ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_6 ));
LUT6 #(
    .INIT(64'hFFFF000075FF0FFF)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_7 
       (.I0(I7),
        .I1(I6),
        .I2(\n_0_wrap_burst_total_reg[0] ),
        .I3(I8),
        .I4(\n_0_wrap_burst_total_reg[1] ),
        .I5(\n_0_wrap_burst_total_reg[2] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_7 ));
LUT4 #(
    .INIT(16'h8000)) 
     \ADDR_SNG_PORT.bram_addr_int[2]_i_8 
       (.I0(I5),
        .I1(I6),
        .I2(I7),
        .I3(I8),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_8 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3 ),
        .I1(O1),
        .I2(s_axi_araddr[1]),
        .I3(p_0_out),
        .I4(I10[0]),
        .O(O17));
LUT4 #(
    .INIT(16'hC0B0)) 
     \ADDR_SNG_PORT.bram_addr_int[3]_i_3 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_save_init_bram_addr_ld_reg[3] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3 ),
        .I1(O1),
        .I2(s_axi_araddr[2]),
        .I3(p_0_out),
        .I4(I10[1]),
        .O(O18));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'hBD00)) 
     \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[4] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4 ),
        .I1(O1),
        .I2(s_axi_araddr[3]),
        .I3(p_0_out),
        .I4(I10[2]),
        .O(O19));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_4 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[5] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(\n_0_save_init_bram_addr_ld_reg[6] ),
        .I1(O1),
        .I2(s_axi_araddr[4]),
        .I3(p_0_out),
        .I4(I10[3]),
        .O(O20));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_3 
       (.I0(\n_0_save_init_bram_addr_ld_reg[7] ),
        .I1(O1),
        .I2(s_axi_araddr[5]),
        .I3(p_0_out),
        .I4(I10[4]),
        .O(O21));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(\n_0_save_init_bram_addr_ld_reg[8] ),
        .I1(O1),
        .I2(s_axi_araddr[6]),
        .I3(p_0_out),
        .I4(I10[5]),
        .O(O22));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[9]_i_3 
       (.I0(\n_0_save_init_bram_addr_ld_reg[9] ),
        .I1(O1),
        .I2(s_axi_araddr[7]),
        .I3(p_0_out),
        .I4(I10[6]),
        .O(O23));
LUT6 #(
    .INIT(64'h5120512051644064)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(bram_addr_inc10_out),
        .I3(Q[0]),
        .I4(axi_rd_burst),
        .I5(I2),
        .O(O3));
LUT4 #(
    .INIT(16'h0008)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 
       (.I0(s_axi_rready),
        .I1(I3),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .O(bram_addr_inc10_out));
LUT1 #(
    .INIT(2'h1)) 
     bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[10] ),
        .I1(O1),
        .I2(s_axi_araddr[8]),
        .O(RdChnl_BRAM_Addr_Ld[8]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[11] ),
        .I1(O1),
        .I2(s_axi_araddr[9]),
        .O(RdChnl_BRAM_Addr_Ld[9]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[12] ),
        .I1(O1),
        .I2(s_axi_araddr[10]),
        .O(O26[0]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[13]_i_2__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[13] ),
        .I1(O1),
        .I2(s_axi_araddr[11]),
        .O(O26[1]));
LUT6 #(
    .INIT(64'hC0B0FFFFC0B00000)) 
     \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_save_init_bram_addr_ld_reg[3] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .I4(O1),
        .I5(s_axi_araddr[1]),
        .O(RdChnl_BRAM_Addr_Ld[1]));
LUT6 #(
    .INIT(64'hBD00FFFFBD000000)) 
     \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[4] ),
        .I4(O1),
        .I5(s_axi_araddr[2]),
        .O(RdChnl_BRAM_Addr_Ld[2]));
LUT6 #(
    .INIT(64'hFB00FFFFFB000000)) 
     \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[5] ),
        .I4(O1),
        .I5(s_axi_araddr[3]),
        .O(RdChnl_BRAM_Addr_Ld[3]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[6] ),
        .I1(O1),
        .I2(s_axi_araddr[4]),
        .O(RdChnl_BRAM_Addr_Ld[4]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[7] ),
        .I1(O1),
        .I2(s_axi_araddr[5]),
        .O(RdChnl_BRAM_Addr_Ld[5]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[8] ),
        .I1(O1),
        .I2(s_axi_araddr[6]),
        .O(RdChnl_BRAM_Addr_Ld[6]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[9] ),
        .I1(O1),
        .I2(s_axi_araddr[7]),
        .O(RdChnl_BRAM_Addr_Ld[7]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[8]),
        .Q(\n_0_save_init_bram_addr_ld_reg[10] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[9]),
        .Q(\n_0_save_init_bram_addr_ld_reg[11] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(O26[0]),
        .Q(\n_0_save_init_bram_addr_ld_reg[12] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(O26[1]),
        .Q(\n_0_save_init_bram_addr_ld_reg[13] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[1]),
        .Q(\n_0_save_init_bram_addr_ld_reg[3] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[2]),
        .Q(\n_0_save_init_bram_addr_ld_reg[4] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[3]),
        .Q(\n_0_save_init_bram_addr_ld_reg[5] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[4]),
        .Q(\n_0_save_init_bram_addr_ld_reg[6] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[5]),
        .Q(\n_0_save_init_bram_addr_ld_reg[7] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[6]),
        .Q(\n_0_save_init_bram_addr_ld_reg[8] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[7]),
        .Q(\n_0_save_init_bram_addr_ld_reg[9] ),
        .R(O4));
LUT6 #(
    .INIT(64'h0100411000010000)) 
     \wrap_burst_total[0]_i_1__0 
       (.I0(\n_0_wrap_burst_total[0]_i_2__0 ),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[1]),
        .O(wrap_burst_total_cmb[0]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \wrap_burst_total[0]_i_2__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arlen[0]),
        .O(\n_0_wrap_burst_total[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000098000000)) 
     \wrap_burst_total[1]_i_1 
       (.I0(\n_0_wrap_burst_total[1]_i_2__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[2]),
        .O(wrap_burst_total_cmb[1]));
LUT2 #(
    .INIT(4'h1)) 
     \wrap_burst_total[1]_i_2__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arsize[0]),
        .O(\n_0_wrap_burst_total[1]_i_2__0 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \wrap_burst_total[2]_i_1__0 
       (.I0(axi_byte_div_curr_arsize),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .O(wrap_burst_total_cmb[2]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .O(axi_byte_div_curr_arsize));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[0]),
        .Q(\n_0_wrap_burst_total_reg[0] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[1]),
        .Q(\n_0_wrap_burst_total_reg[1] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[2]),
        .Q(\n_0_wrap_burst_total_reg[2] ),
        .R(O4));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
