############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sobel_hls
set_top sobel_hls
add_files sobel_hls.hpp
add_files sobel_hls.cpp
add_files -tb test.bmp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb sobel_hls_test.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution4"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./sobel_hls/solution4/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl vhdl -format ip_catalog
