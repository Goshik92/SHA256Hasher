# General description
SHA256Hasher is an FPGA IP core for ZedBoard (Xilinx Zynq SoC based board) performing [SHA-256](https://en.wikipedia.org/wiki/SHA-2) calculation. The project uses slightly changed Verilog code from [this](https://github.com/progranism/Open-Source-FPGA-Bitcoin-Miner) repository. The other parts of the code are written in SystemVerilog. The IP core contains AXI4 interface, which allows it to be connected to the ARM cores of Zynq. 

# Project intention
SHA256Hasher may be used for:
* Boosting SHA-256 calculation on embedded systems.
* Bitcoin and other SHA-256 based cryptocurrencies mining.

# Project structure
The project includes:
* SHA256Hasher IP Core.
* A demo system, which uses SHA256Hasher and contains all necessary interconnection.
* A demo application for Linux, which access the SHA256Hasher via /dev/mem.

## SHA256Hasher
[Project location](FPGA/SHA256Hasher/), [Sources](FPGA/SHA256Hasher/SHA256Hasher.srcs\sources_1\new)  
Description: [wiki](https://github.com/Goshik92/SHA256Hasher/wiki/SHA256Hasher-description)

## Demo System
[Project location](FPGA/System/), [Sources](FPGA/System/System.srcs/sources_1/bd/System), [Structure](Docs/System.pdf)  
Description: A Vivado project connecting the ARM core with SHA256Hasher.  
Resource utilization:  
Resource|Utilization|Available|Utilization %
--------|-----------|---------|-------------
LUT	    |2325       |53200    |4,37  
LUTRAM  |33         |17400    |0,19  
FF      |1722       |106400   |1,62  
BRAM    |8          |140      |5,71  
IO      |1          |200      |0,50  
BUFG    |3          |32       |9,38  
MMCM    |1          |4        |25,00  


## Demo Application
[Project location](ARM/SHA256HasherTest), [Sources](ARM/SHA256HasherTest/src)  
Description: A Xilinx SDK project, which shows how to use SHA256Hasher on Linux.

# TODO
Since there is a problem with validity of the data read via /dev/mem (probably because reading is cached), a device driver for the SHA256Hasher should be written.

# Keywords
SHA-256, IP Core, Bitcoin, ZedBoard, Zynq, Xilinx, FPGA, ARM, SoC, Vivado, Xilinx SDK, Linux.