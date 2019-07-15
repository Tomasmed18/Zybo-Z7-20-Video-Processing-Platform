# Zybo Z7-20 Video Processing Platform

In this project, I propose a video processing platform to easily work with the Digilent Zybo Z7-20 board together with the Digilent Pcam 5C camera. Not only a video pass-through, but also a sobel filter was implemented using HLS and tested in the platform.

## Vivado software used

For the sobel filter, Vivado HLS 2018.2 was used, together with Vivado Video Library for OpenCV-like image processing methods. The implemented function was exported as an IP Core, and then imported in Vivado to be incorporated to the block diagram.

The hardware designs were implemented using Vivado 2018.2. Most of the design was implemented editing the block diagram. The result was exported as a hardware wrapper, being then used in Xilinx SDK.

The software to be executed in the Zybo's microprocessor was implemented using Xilinx SDK 2018.2.

## :nut_and_bolt: How to make it work

The project is already built, so it can easily be put into work. You need to open it with Vivado, then go to File > Launch SDK, and mark the option "include bitstream". In the SDK, you only need to open up the SKD local project, program the FPGA, run the application and connect with the board via serial communication usign the following paramenters:

| Parameter | Value |
| --- | --- |
| Baud rate | 115200 |
| Data bits | 8 |
| Stop bits | 1 |
| Parity | None |
| Flow control | None |
| Timeout | - |

The communication is set to configure certain video parameters, such as resolution, frame rate and gamma correction.
