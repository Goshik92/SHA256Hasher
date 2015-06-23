/*
*
* Date: 23.06.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: The main file of the test application
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

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include "SHA256Hasher.h"

int main()
{
	char* message = "The quick brown fox jumps over the lazy dog";

	size_t block512Size = 512 / 8;
	size_t messageSize = strlen(message);
	size_t messageBitSize = messageSize * 8;
	uint8_t block512[block512Size];

	uint32_t Sha256InitValues[] =
	{
		0x6a09e667,
		0xbb67ae85,
		0x3c6ef372,
		0xa54ff53a,
		0x510e527f,
		0x9b05688c,
		0x1f83d9ab,
		0x5be0cd19
	};

	uint32_t HCR0;

	if (SHA256Hasher_Init())
	{
		// Write the message to the temp buffer (works for message length less than 512-bit only)
		memset(block512, 0, block512Size);
		memcpy(block512, message, messageSize);
		block512[messageSize] = 0x80; // Put bit '1' at the end of the message (see SHA256 spec)

		// Add message length (see SHA256 spec)
		for(int i = 7; i >= 0; i--)
		{
			block512[block512Size - i - 1] = (messageBitSize >> (i * 8)) & 0xFF;
		}

		// Copy the message to the message memory
		//memcpy((uint32_t*)SHA256Hasher_MessageMemory, block512, block512Size);
		for(int i = 0; i < block512Size; i += 4)
		{
			uint32_t tmp = 0;
			uint8_t* tmpArr = (uint8_t*)&tmp;
			for(int j = 0; j < 4; j++) tmpArr[3 - j] = block512[i + j];
			SHA256Hasher_MessageMemory[i / 4] = tmp;
		}

		// Write hasher's initial state
		memcpy((uint32_t*)SHA256Hasher_RegisterMemory->HSR, Sha256InitValues, sizeof(uint32_t) * 8);

		// Setup hasher
		HCR0 = SHA256Hasher_RegisterMemory->HCR0;
		HCR0 |= SHA256Hasher_HCR0_SC;
		SHA256Hasher_RegisterMemory->HCR0 = HCR0;

		// Wait for result
		while(SHA256Hasher_RegisterMemory->HCR0 & SHA256Hasher_HCR0_SC);

		// Print the result
		for(int i = 0; i < 8; i++) printf("HSR[%d] = %x\n", i, SHA256Hasher_RegisterMemory->HSR[i]);
	}

	else printf("Error of memory mapping\n");

	SHA256Hasher_DeInit();
	return 0;
}
