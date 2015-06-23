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

#ifndef __SHA256HASHER_H__
#define __SHA256HASHER_H__

#include <stdbool.h>
#include <stdint.h>

#define SHA256Hasher_HCR0_LBA0 (1 << 25)
#define SHA256Hasher_HCR0_SC   (1 << 24)
#define SHA256Hasher_HCR0_CCIE (1 << 23)
#define SHA256Hasher_HCR0_CCIF (1 << 22)

typedef struct __attribute__((packed))
{
	uint32_t HCR0;
	uint32_t HSR[8];
	uint32_t Reserved[7];
} SHA256Hasher_RegisterMemory_t;

extern volatile SHA256Hasher_RegisterMemory_t* SHA256Hasher_RegisterMemory;
extern volatile uint32_t* SHA256Hasher_MessageMemory;

bool SHA256Hasher_Init();
void SHA256Hasher_DeInit();

#endif
