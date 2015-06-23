/*
*
* Date: 23.06.2015
* Author: Goshik (goshik92@gmail.com)
* Company: MR Technologies
* Description: 
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

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include "SHA256Hasher.h"

#define REGISTER_MEMORY_ADDR 0x40000000
#define REGISTER_MEMORY_SIZE (sizeof(SHA256Hasher_RegisterMemory_t))

#define MESSAGE_MEMORY_ADDR 0x40002000
#define MESSAGE_MEMORY_SIZE 0x2000

volatile SHA256Hasher_RegisterMemory_t* SHA256Hasher_RegisterMemory;
volatile uint32_t* SHA256Hasher_MessageMemory;

static int DevMemFile = -1;

static unsigned int* MapPhysicalMemory(off_t deviceAddress, size_t memorySize)
{
	void* ptr;
	size_t pageSize = sysconf(_SC_PAGESIZE);
	off_t pageAddress = (deviceAddress & (~(pageSize - 1)));
	off_t pageOffset = deviceAddress - pageAddress;

	if ((ptr = mmap(NULL, memorySize + pageOffset, PROT_READ | PROT_WRITE, MAP_SHARED, DevMemFile, pageAddress)) == NULL)
	{
		printf("Can't map the memory\n");
		return NULL;
	}

	return (unsigned int*)(ptr + pageOffset);
}

bool SHA256Hasher_Init()
{
	if ((DevMemFile = open("/dev/mem", O_RDWR | O_SYNC)) == -1)
	{
		printf("Can't open /dev/mem\n");
		return false;
	}

	SHA256Hasher_RegisterMemory = (SHA256Hasher_RegisterMemory_t*)MapPhysicalMemory(REGISTER_MEMORY_ADDR, REGISTER_MEMORY_SIZE);
	SHA256Hasher_MessageMemory = (uint32_t*)MapPhysicalMemory(MESSAGE_MEMORY_ADDR, MESSAGE_MEMORY_SIZE);

	return (SHA256Hasher_RegisterMemory != NULL) && (SHA256Hasher_MessageMemory != NULL);
}

void SHA256Hasher_DeInit()
{
	close(DevMemFile);
}
