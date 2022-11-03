############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CADVLSI
set_top hand_num_nn
add_files core.cpp
add_files -tb test_hand_nn.cpp
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./CADVLSI/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
