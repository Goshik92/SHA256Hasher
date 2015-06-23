/*
*
* Date: 10.04.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: Controller of SHA-256 calculator
*
*/

module SHA256_Controller
(
	input reset,
	input clock,
	output completeIRQ,
	SHA256_RegisterMemory_i.Slave registerMemory,
	SHA256_MessageMemory_i.Slave messageMemory
);

	import SHA256_Registers_p::*;
	
	function logic [255:0] SwapWords(input logic [255:0] inWords);
		
		localparam N = 8;
		logic [255:0] outWords;
		
		for(int i = 0; i < N; i++)
		begin
			outWords[32*i+:32] = inWords[32*(N-1-i)+:32];
		end
		
		return outWords;
		
	endfunction

	/*
	 * Control registers stuff declarations
	 */

	// Storage for all the control registers
	Registers_t registers;
	
	// Temporary storages for incoming data	and register address
	Register_t tmpRegister;
	Address_t tmpReadAddress, tmpWriteAddress;
	
	// Send the required register to the data bus
	assign registerMemory.OutData = registers.Addresses[tmpReadAddress];
	
	// FIFO's stuff
	logic fifoIsEmpty, fifoIsFull;
	logic fifoWriteEnable;
	assign fifoWriteEnable = registerMemory.WriteEnable & registerMemory.Enable & ~fifoIsFull;
	
	// FIFO for clock domain crossing
	SHA256_CdcFifo fifo0
	(
		.rst(reset),
		
		.full(fifoIsFull),
		.wr_clk(registerMemory.Clock),
		.wr_en(fifoWriteEnable),
		.din({registerMemory.InData, registerMemory.Address}),
		
		.empty(fifoIsEmpty),
		.rd_clk(clock),
		.rd_en(~fifoIsEmpty),
		.dout({tmpRegister, tmpWriteAddress})
	);
	
	always_ff @(posedge registerMemory.Clock)
	begin
		// If the register memory is enabled by Master
		if (registerMemory.Enable)
		begin
			// Save the address for a reading operation
			if (!registerMemory.WriteEnable)
			begin
				tmpReadAddress <= registerMemory.Address;
			end
		end
	end
	
	/*
	 * SHA256_Controller's state variables declarations
	 */
	 
	localparam MAX_CLOCK_COUNTER = 13'h1FFF;
	logic [12:0] clockCounter;
	logic resultIsSaved; // This flag will have '0' when hash for a 512-bit block needs to be saved
	assign completeIRQ = registers.Names.HCR0.CCIF & registers.Names.HCR0.CCIE; // Calculation complete interrupt request
	
	/*
	 * Message memory's stuff declarations
	 */
	
	// Address and data buses for message memory
	logic mmEnable;
	logic [6:0] mmAddress;
	logic [511:0] mmData;
	assign mmAddress = clockCounter[12:6] + 1'b1;
	
	// Storage for SHA256 input message
	SHA256_MessageMemory sha256_mm
	(
		.clka(messageMemory.Clock),
		.wea(messageMemory.WriteEnable),
		.ena(messageMemory.Enable),
		.addra(messageMemory.Address),
		.dina(messageMemory.InData),
		
		.clkb(clock),
		.enb(mmEnable),
		.addrb(mmAddress),
		.doutb(mmData)
	);
	
	/*
	 * SHA256 calculator's stuff declarations
	 */
	
	localparam MAX_HASHER_COUNTER = 6'h3F;
	logic hasherFeedback;
	logic [5:0] hasherCounter;
	logic [511:0] hasherInData;
	logic [255:0] hasherInState, hasherOutState;
	assign hasherCounter = clockCounter[5:0];
	assign hasherFeedback = (hasherCounter == 'b0) ? 'b0 : 'b1; // When feedback is 1, sha256_transform will eat its own W and state
	assign hasherInState = SwapWords(registers.Names.HSR); // Hasher gets initial state from the user-controlled registers
	assign hasherInData = mmData;
	assign mmEnable = registers.Names.HCR0.SC & (hasherCounter == MAX_HASHER_COUNTER);
	
	// SHA256 calculator
	sha256_transform #(.LOOP(64)) sha256_t0
	(
		.clk(clock),
		.feedback(hasherFeedback),
		.cnt(hasherCounter),
		.rx_state(hasherInState),
		.rx_input(hasherInData),
		.tx_hash(hasherOutState)
	);
	
	// Assignments for getting write mask for the current register
	Registers_t writeMasks;
	Register_t currentWriteMask;
	assign writeMasks = GetWriteMasks();
	assign currentWriteMask = writeMasks.Addresses[tmpWriteAddress];
	
	// Assignments for getting new current register value according to the write mask
	Register_t maskedOldRegister, maskedNewRegister, newRegisterValue;
	assign maskedOldRegister = registers.Addresses[tmpWriteAddress] & ~currentWriteMask;
	assign maskedNewRegister = tmpRegister & currentWriteMask;
	assign newRegisterValue = maskedOldRegister | maskedNewRegister;
	
	always_ff @(posedge clock)
	begin	
		// Full reset state
		if (reset)
		begin
			resultIsSaved <= 1'b1;
			registers <= GetDefaultValues();
			clockCounter <= MAX_CLOCK_COUNTER;
		end
		
		else
		begin
			// Save temporary data to the real register
			if (!fifoIsEmpty) registers.Addresses[tmpWriteAddress] <= newRegisterValue;
			
			// If calculations are going
			else if (registers.Names.HCR0.SC)
			begin
				// If we have to put a new result to the HSR on the next clock 
				if (hasherCounter == MAX_HASHER_COUNTER && clockCounter != MAX_CLOCK_COUNTER)
				begin
					resultIsSaved <= 1'b0;
				end
			
				// If a 512-bit data block is calculated
				if (!resultIsSaved)
				begin
					// Save a current hash to the user register
					registers.Names.HSR <= SwapWords(hasherOutState);
					resultIsSaved <= 1'b1;
					
					// If it was the last data block
					if (mmAddress - 2'h2 == registers.Names.HCR0.LBA)
					begin
						registers.Names.HCR0.SC <= 1'b0;
						registers.Names.HCR0.CCIF <= 1'b1;
						clockCounter <= MAX_CLOCK_COUNTER;
					end
				end
		
				else clockCounter <= clockCounter + 1'b1;
			end
		end
	end

endmodule
