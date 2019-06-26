# ==============================================================
# File generated on Wed Jun 26 10:06:10 -0300 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../sobel_hls_test.cpp -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files -tb ../../test.bmp -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files sobel_hls.cpp
add_files sobel_hls.hpp
set_part xc7z020clg400-1
create_clock -name default -period 10
