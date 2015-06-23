/*
*
* Date: 19.04.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: MessageMemory related stuff
*
*/

package SHA256_MessageMemory_p;
	typedef logic [31:0] Data_t;
	typedef logic [10:0] Address_t;
endpackage

// Interface for memory with source message
interface SHA256_MessageMemory_i(input Clock);

	import SHA256_MessageMemory_p::*;

	Data_t InData;
	Address_t Address;
	logic WriteEnable;
	logic Enable;
	
	// To memory controller
	modport Master
	(
		input Clock,
		output InData,
		output Address,
		output Enable,
		output WriteEnable
	);
	
	// To memory
	modport Slave
	(
		input Clock,
		input InData,
		input Address,
		input Enable,
		input WriteEnable
	);
	
	task WriteData(input Address_t address, input Data_t data);
		InData <= data;
		Address <= address;
		Enable <= 1'b1;
		WriteEnable <= 1'b1;
		@(posedge Clock);
		WriteEnable <= 1'b0;
		Enable <= 1'b0;
	endtask
	
	task automatic LoadFile(output integer blocksNumber);
		localparam FILE_NAME = "../../../message.txt"; // This file is in root project dir
		
		static logic [63:0] messageLength; // Length in bits
		static byte tmpChar[4] = '{4{1'b0}}; // Storage for 4 chars from the file
		static logic [60:0] byteCounter = 0; // Counter of total number of bytes written to memory
		
		// Try to open the file
		integer file = $fopen(FILE_NAME, "r");
		
		// If the file can't be opened
		if (!file)
		begin
			$display("ERROR: Could not open %s", FILE_NAME);
			$finish;
		end
		
		// Write file content to the message memory
		while(1)
		begin
			// Read a char
			tmpChar[byteCounter[1:0]] = $fgetc(file);
			
			// Check EOF
			if ($feof(file)) break;
			
			// If we have 4 chars
			if (byteCounter[1:0] == 2'h3)
			begin
				WriteData(byteCounter >> 2, {tmpChar[0], tmpChar[1], tmpChar[2], tmpChar[3]});
				tmpChar = '{4{1'b0}};
			end
			
			byteCounter++;
		end
		
		$fclose(file);
		
		// Save the number of bits in the message
		messageLength = byteCounter * 8;
			
		// Write residual chars and/or 1 bit to the end of the message
		tmpChar[byteCounter[1:0]] = 8'h80; // Add Bit 1 to the end of the message
		WriteData(byteCounter >> 2, {tmpChar[0], tmpChar[1], tmpChar[2], tmpChar[3]});
		byteCounter += 4 - byteCounter[1:0]; // byteCounter must be a multiple of 4
		
		// Add a tail to the message
		while((byteCounter * 8) % 512 != 448)
		begin
			WriteData(byteCounter >> 2, 1'b0);
			byteCounter += 4;
		end
		
		// Add the message length
		WriteData(byteCounter >> 2, messageLength[63:32]);
		byteCounter += 4;
		WriteData(byteCounter >> 2, messageLength[31:0]);
		byteCounter += 4;
		
		// Return number of used 512-bit blocks
		blocksNumber = byteCounter * 8 / 512;
	endtask
	
endinterface