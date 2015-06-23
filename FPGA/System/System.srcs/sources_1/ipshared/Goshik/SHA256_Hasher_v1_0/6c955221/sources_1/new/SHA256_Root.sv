/*
*
* Date: 12.04.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: Top module of SHA-256 calculation system
*
*/

module SHA256_Root
(
	input hasherClock,
	output hasherCompleteIRQ,
	
	input wire s_axi_aclk,
	input wire s_axi_aresetn,
	input wire [11 : 0] s_axi_awid,
	input wire [13 : 0] s_axi_awaddr,
	input wire [7 : 0] s_axi_awlen,
	input wire [2 : 0] s_axi_awsize,
	input wire [1 : 0] s_axi_awburst,
	input wire s_axi_awlock,
	input wire [3 : 0] s_axi_awcache,
	input wire [2 : 0] s_axi_awprot,
	input wire s_axi_awvalid,
	output wire s_axi_awready,
	input wire [31 : 0] s_axi_wdata,
	input wire [3 : 0] s_axi_wstrb,
	input wire s_axi_wlast,
	input wire s_axi_wvalid,
	output wire s_axi_wready,
	output wire [11 : 0] s_axi_bid,
	output wire [1 : 0] s_axi_bresp,
	output wire s_axi_bvalid,
	input wire s_axi_bready,
	input wire [11 : 0] s_axi_arid,
	input wire [13 : 0] s_axi_araddr,
	input wire [7 : 0] s_axi_arlen,
	input wire [2 : 0] s_axi_arsize,
	input wire [1 : 0] s_axi_arburst,
	input wire s_axi_arlock,
	input wire [3 : 0] s_axi_arcache,
	input wire [2 : 0] s_axi_arprot,
	input wire s_axi_arvalid,
	output wire s_axi_arready,
	output wire [11 : 0] s_axi_rid,
	output wire [31 : 0] s_axi_rdata,
	output wire [1 : 0] s_axi_rresp,
	output wire s_axi_rlast,
	output wire s_axi_rvalid,
	input wire s_axi_rready
);

	logic bramClock;
	logic bramEnable;
	logic [3:0] bramWriteEnable;
	logic [15:0] bramAddress;
	logic [31:0] bramReadData;
	logic [31:0] bramWriteData;
	
	SHA256_AXIBramController sha256_bc0
	(
		.s_axi_aclk(s_axi_aclk),        // input wire s_axi_aclk
		.s_axi_aresetn(s_axi_aresetn),  // input wire s_axi_aresetn
		.s_axi_awid(s_axi_awid),        // input wire [11 : 0] s_axi_awid
		.s_axi_awaddr(s_axi_awaddr),    // input wire [13 : 0] s_axi_awaddr
		.s_axi_awlen(s_axi_awlen),      // input wire [7 : 0] s_axi_awlen
		.s_axi_awsize(s_axi_awsize),    // input wire [2 : 0] s_axi_awsize
		.s_axi_awburst(s_axi_awburst),  // input wire [1 : 0] s_axi_awburst
		.s_axi_awlock(s_axi_awlock),    // input wire s_axi_awlock
		.s_axi_awcache(s_axi_awcache),  // input wire [3 : 0] s_axi_awcache
		.s_axi_awprot(s_axi_awprot),    // input wire [2 : 0] s_axi_awprot
		.s_axi_awvalid(s_axi_awvalid),  // input wire s_axi_awvalid
		.s_axi_awready(s_axi_awready),  // output wire s_axi_awready
		.s_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
		.s_axi_wstrb(s_axi_wstrb),      // input wire [3 : 0] s_axi_wstrb
		.s_axi_wlast(s_axi_wlast),      // input wire s_axi_wlast
		.s_axi_wvalid(s_axi_wvalid),    // input wire s_axi_wvalid
		.s_axi_wready(s_axi_wready),    // output wire s_axi_wready
		.s_axi_bid(s_axi_bid),          // output wire [11 : 0] s_axi_bid
		.s_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
		.s_axi_bvalid(s_axi_bvalid),    // output wire s_axi_bvalid
		.s_axi_bready(s_axi_bready),    // input wire s_axi_bready
		.s_axi_arid(s_axi_arid),        // input wire [11 : 0] s_axi_arid
		.s_axi_araddr(s_axi_araddr),    // input wire [13 : 0] s_axi_araddr
		.s_axi_arlen(s_axi_arlen),      // input wire [7 : 0] s_axi_arlen
		.s_axi_arsize(s_axi_arsize),    // input wire [2 : 0] s_axi_arsize
		.s_axi_arburst(s_axi_arburst),  // input wire [1 : 0] s_axi_arburst
		.s_axi_arlock(s_axi_arlock),    // input wire s_axi_arlock
		.s_axi_arcache(s_axi_arcache),  // input wire [3 : 0] s_axi_arcache
		.s_axi_arprot(s_axi_arprot),    // input wire [2 : 0] s_axi_arprot
		.s_axi_arvalid(s_axi_arvalid),  // input wire s_axi_arvalid
		.s_axi_arready(s_axi_arready),  // output wire s_axi_arready
		.s_axi_rid(s_axi_rid),          // output wire [11 : 0] s_axi_rid
		.s_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
		.s_axi_rresp(s_axi_rresp),      // output wire [1 : 0] s_axi_rresp
		.s_axi_rlast(s_axi_rlast),      // output wire s_axi_rlast
		.s_axi_rvalid(s_axi_rvalid),    // output wire s_axi_rvalid
		.s_axi_rready(s_axi_rready),    // input wire s_axi_rready
		
		.bram_clk_a(bramClock),
		.bram_we_a(bramWriteEnable),
		.bram_en_a(bramEnable),
		.bram_addr_a(bramAddress),
		.bram_wrdata_a(bramWriteData),
		.bram_rddata_a(bramReadData)
	);
	
	wire memSelect;
	assign memSelect = bramAddress[13];
	
	SHA256_RegisterMemory_i rmi(bramClock);
	assign rmi.Enable = bramEnable & ~memSelect;
	assign rmi.Address = bramAddress[5:2];
	assign rmi.InData = bramWriteData;
	assign rmi.WriteEnable = bramWriteEnable;
	
	SHA256_MessageMemory_i mmi(bramClock);
	assign mmi.Enable = bramEnable & memSelect;
	assign mmi.Address = bramAddress[12:2];
	assign mmi.InData = bramWriteData;
	assign mmi.WriteEnable = bramWriteEnable;
	
	assign bramReadData = ~memSelect ? rmi.OutData : 32'hdeadbeef;
	
	SHA256_Controller sha256_c0
	(
		.reset(~s_axi_aresetn),
		.clock(hasherClock),
		.completeIRQ(hasherCompleteIRQ),
		.registerMemory(rmi),
		.messageMemory(mmi)
	);

endmodule
