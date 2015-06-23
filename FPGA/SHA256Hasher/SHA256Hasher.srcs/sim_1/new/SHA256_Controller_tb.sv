/*
*
* Date: 12.04.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: Testbench for SHA256_Controller
*
*
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
* 
*/

`timescale 1ns / 1ns

module SHA256_Controller_tb;

	import SHA256_Registers_p::*;

	logic reset, irq, clock;
	SHA256_RegisterMemory_i rmi(.Clock(clock));
	SHA256_MessageMemory_i mmi(.Clock(clock));
	integer blocksNumber;
	Register_t tmpReg;
	
	localparam HCR0_ADDR = 0;
	localparam HSR0_ADDR = 1;
	localparam LBA_MSB = 31;
	localparam LBA_LSB = 25;
	localparam SC_BIT = 24;
	localparam CCIE_BIT = 23;
	
	SHA256_Controller sha256_c0
	(
		.reset(reset),
		.clock(clock),
		.completeIRQ(irq),
		.registerMemory(rmi.Slave),
		.messageMemory(mmi.Slave)
	);
	
	initial
	begin
		clock = 1'b0;
		reset = 1'b1;
	
		#10 reset = 1'b0;
		@(posedge clock);
		
		mmi.LoadFile(blocksNumber);
		$display("\n***** Message is loaded *****");
		
		// Set init state for the hasher
		rmi.WriteRegister(HSR0_ADDR + 0, 32'h6a09e667);
		rmi.WriteRegister(HSR0_ADDR + 1, 32'hbb67ae85);
		rmi.WriteRegister(HSR0_ADDR + 2, 32'h3c6ef372);
		rmi.WriteRegister(HSR0_ADDR + 3, 32'ha54ff53a);
		rmi.WriteRegister(HSR0_ADDR + 4, 32'h510e527f);
		rmi.WriteRegister(HSR0_ADDR + 5, 32'h9b05688c);
		rmi.WriteRegister(HSR0_ADDR + 6, 32'h1f83d9ab);
		rmi.WriteRegister(HSR0_ADDR + 7, 32'h5be0cd19);
		$display("***** Init state is set *****");
		
		// Configure control register
		rmi.ReadRegister(HCR0_ADDR, tmpReg);
		tmpReg[LBA_MSB:LBA_LSB] = blocksNumber - 1; // Set address of the last 512-bit block of message
		tmpReg[CCIE_BIT] = 1'b1; // Enable complete interrupt
		tmpReg[SC_BIT] = 1'b1; // Start calculation
		rmi.WriteRegister(HCR0_ADDR, tmpReg);
		$display("***** Calculations are started *****");
		
		// Wait for calculating
		@(posedge irq);
		@(posedge clock);
		$display("***** Calculations are finished *****");
		
		// Display the result
		$display("\nThe result is:");
		for(int i = 0; i < 8; i++)
		begin
			rmi.ReadRegister(HSR0_ADDR + i, tmpReg);
			$display("HSR%1d = %x", i, tmpReg);
		end
		
		$finish;
	end
	
	always #1 clock = ~clock;

endmodule
