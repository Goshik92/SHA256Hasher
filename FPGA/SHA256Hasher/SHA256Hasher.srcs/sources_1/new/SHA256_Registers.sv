/*
*
* Date: 10.04.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: Registers related stuff
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

package SHA256_Registers_p;

	typedef logic [31:0] Register_t;
	typedef logic [3:0] Address_t;

	// Registers and their bits definition
	typedef union packed
	{
		// Name based register access
		struct packed
		{
			// Hasher Control Register 0
			struct packed
			{
				logic [6:0] LBA; // Last Block's Address
				logic SC; // Start Calculations
				logic CCIE; // Calculations Complete Interrupt Enable
				logic CCIF; // Calculations Complete Interrupt Flag
				logic [21:0] Reserved; // Reserved bits
			} HCR0;
			
			// Hasher State Registers 0-7
			Register_t [0:7] HSR;
			
			// Reserved area (7 32-bit words)
			Register_t [0:6] Reserved;
		} Names;
		
		// Address based register access
		Register_t [0:15] Addresses;
	} Registers_t;

	// Return initial values for the registers
	function Registers_t GetDefaultValues();

		Registers_t r;
		
		// Init HCR0
		r.Names.HCR0.LBA = 1'b0;
		r.Names.HCR0.SC = 1'b0;
		r.Names.HCR0.CCIE = 1'b0;
		r.Names.HCR0.CCIF = 1'b0;
		r.Names.HCR0.Reserved = {6'b0, 16'hBEEF}; // Value for reading test
		
		// Init HSR[0:7]
		r.Names.HSR = '{8{32'h0}};
		
		// Init the reserved area
		r.Names.Reserved = '{7{32'h0}};
		
		return r;
		
	endfunction

	// Return write masks for the registers
	// 1 - bit is r/w, 0 - r only
	function Registers_t GetWriteMasks();

		Registers_t r;

		// HCR0 write mask
		r.Names.HCR0.LBA = {7{1'b1}};
		r.Names.HCR0.SC = 1'b1;
		r.Names.HCR0.CCIE = 1'b1;
		r.Names.HCR0.CCIF = 1'b1;
		r.Names.HCR0.Reserved = 1'b0;
		
		// HSR[0:7] write mask
		r.Names.HSR = '{8{32'hFFFFFFFF}};
		
		// Reserved area write mask
		r.Names.Reserved = '{7{32'h0}};
		
		return r;
		
	endfunction

endpackage

// Interface for accessing control registers like memory
interface SHA256_RegisterMemory_i(input Clock);
	
	import SHA256_Registers_p::*;
	
	Register_t InData;
	Register_t OutData;
	Address_t Address;
	logic WriteEnable;
	logic Enable;
	
	// To memory controller
	modport Master
	(
		input Clock,
		output InData,
		input OutData,
		output Address,
		output Enable,
		output WriteEnable
	);
	
	// To memory
	modport Slave
	(
		input Clock,
		input InData,
		output OutData,
		input Address,
		input Enable,
		input WriteEnable
	);
	
	task WriteRegister(input Address_t address, input Register_t register);
		Address = address;
		InData = register;
		Enable = 1'b1;
		WriteEnable = 1'b1;
		@(posedge Clock);
		WriteEnable = 1'b0;
		Enable = 1'b0;
	endtask
	
	task automatic ReadRegister(input Address_t address, ref Register_t register);
		Enable = 1'b1;
		WriteEnable = 1'b0;
		Address = address;
		@(posedge Clock);
		register = OutData;
		Enable = 1'b0;
	endtask
	
endinterface