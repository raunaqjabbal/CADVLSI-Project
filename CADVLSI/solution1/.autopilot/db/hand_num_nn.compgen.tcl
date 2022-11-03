# This script segment is generated automatically by AutoPilot

set id 1
set name hand_num_nn_fadd_g8j
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 2
set name hand_num_nn_fmul_hbi
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 3
set name hand_num_nn_fptruibs
set corename simcore_fptrunc
set op fptrunc
set stage_num 1
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set in0_width 64
set in0_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fptrunc] == "ap_gen_simcore_fptrunc"} {
eval "ap_gen_simcore_fptrunc { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fptrunc, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fptrunc
set corename Double2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 4
set name hand_num_nn_fpextjbC
set corename simcore_fpext
set op fpext
set stage_num 1
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fpext] == "ap_gen_simcore_fpext"} {
eval "ap_gen_simcore_fpext { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fpext, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fpext
set corename Float2Double
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 5
set name hand_num_nn_fcmp_kbM
set corename simcore_fcmp
set op fcmp
set stage_num 1
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCmp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 6
set name hand_num_nn_dadd_lbW
set corename simcore_dadd
set op dadd
set stage_num 6
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dadd] == "ap_gen_simcore_dadd"} {
eval "ap_gen_simcore_dadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dadd
set corename DAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 7
set name hand_num_nn_ddiv_mb6
set corename simcore_ddiv
set op ddiv
set stage_num 31
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_ddiv] == "ap_gen_simcore_ddiv"} {
eval "ap_gen_simcore_ddiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_ddiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op ddiv
set corename DDiv
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 8
set name hand_num_nn_dexp_ncg
set corename simcore_dexp
set op dexp
set stage_num 18
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dexp] == "ap_gen_simcore_dexp"} {
eval "ap_gen_simcore_dexp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dexp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dexp
set corename DExp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 17
set MemName hand_num_nn_thetabkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 105
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00111110111111001100011111101101" "10111110110100010010100101100000" "00111110010001101111011010001101" "00111111000100111010101111000010" "10111110101011010100100111101000" "10111110101111010001001100000000" "10111110101000110011010100001000" "00111100100100011011000101111001" "10111110101010000000001000001100" "00111100111001010010010010110010" "00111110101111001010000111001001" "10111111000010110100100100001101" "00111110100110110101011101011100" "10111110100001011101100110011001" "10111110000010111100010010000000" "00111111001100100000111100001011" "00111011101100111100011110000011" "10111110100010110111010101100110" "10111111000001011100001101110110" "10111110010110101010000100011001" "00111110100000101100011111001101" "10111101011000111111100111100101" "00111110010010011010111111001001" "10111101111111101001111100100111" "10111111000100000011100010110000" "00111110101110101111011111000100" "00111110100011111110000101010010" "00111110010111101101010001100100" "10111110111011100101010100101101" "00111110110101001010010001010010" "00111110101010110001110110010101" "10111011111011001111000110000101" "10111110011100011101000111000110" "00111110001011001111111100100100" "00111110100111110011100010100001" "00111101010010101001010000100000" "10111100100010011001100110010111" "00111110001011101000010011111001" "10111110101100010111101000001010" "00111110011111010110001010001001" "00111101001001010100000011001100" "00111100111000101010011110000000" "00111110001011010000000111000110" "10111110110010110011011000010010" "10111110110010110101110001001011" "00111110110111011100011101011100" "00111110000001011010011100010100" "10111111000000111101001110111000" "00111110010001010001101101000001" "10111101111000000111100111101110" "10111111000011101001010010010100" "10111110111010001111100100011011" "10111110110111011100000000111011" "10111101111010111101011101101100" "00111110100001111001011001000111" "10111110100110011001001111000100" "10111110110100011101010001001011" "00111110011100111011001001011100" "10111110111010001110011111001111" "10111110100100010001011100110011" "00111111001010001111100111101011" "10111110010011100110110101001110" "00111110011011110100001100011001" "10111111001010011010111100001100" "10111101110000110100101111011110" "00111110100101100000100111010011" "00111110101010100100000110100100" "00111110011011100000101101001000" "10111011111000010110111000000100" "10111100101110110000100001101010" "00111110011001110011000110011111" "00111110011101110110100101101100" "10111100011001110101001001001010" "10111110101010000101110111110101" "10111110100110100010110000010101" "10111110001111100100110010101100" "10111101001101110011010100111001" "10111110100010000111110000110110" "10111110010001110010110011001010" "00111110101100010101010110100110" "10111110010110111101000111100110" "00111110101000010000000111010011" "00111110010101110011101001101011" "10111110011101010111110011000100" "00111110000000010110110111110010" "10111101110111010111111100010111" "10111110001001000011111110001001" "00111110010011110000001110100111" "10111111000000110111000110111101" "10111110100000010110011111010001" "00111110011101011011001000000100" "10111110101111010101101000011110" "00111100111010110010011100100110" "00111110110011000110111100110000" "00111111000000111111101110010100" "00111110110111001111111101010111" "00111101011101111011110001100101" "00111110001111100100001001100110" "00111100100100001000100011111111" "00111011001001101101001001100111" "10111100001101010011100011011100" "10111110000100011001111000110010" "00111101100001110001001110110100" "00111111000000000100110101111011" "00111101011101011010001101100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 18
set MemName hand_num_nn_thetacud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 15
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "10111111001001010011100010100010" "00000000000000000000000000000000" "10111100101011000011011100000000" "00111111001100111100010010110110" "10111110101110000110101110100110" "00111111001111001100110100100110" "00111111001110101101100000100011" "00111111000101111011011101100000" "00000000000000000000000000000000" "00111111001001000011111110010001" "10111111000101001110100001101001" "10111101011001011100101001100010" "10111111000100010011000011010100" "00000000000000000000000000000000" "00000000000000000000000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 19
set MemName hand_num_nn_thetadEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 450
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "10111110000111011001011111010000" "10111110000111010011001101000000" "00111101001100001101000100101000" "00111111001101000011110000111011" "00111110100010010011011101111110" "00111100100100001000101000000111" "00111110111001001110010100100001" "00111110000101000110000101101011" "00111110101110111110010110100101" "10111110100010111010110010100111" "00111110110110110111100110111100" "10111110000110000010110001011110" "00111110100010101100010001010000" "10111110001111110001011011110110" "00111101101111100001110111111001" "10111110010110111111111001001011" "00111101100011111000001010110100" "00111111000110111110101111101000" "10111110101001011011101110111000" "10111110010010011101001001100101" "00111110111101011111101111011110" "10111110011100100111010000111011" "00111101100110101101111101011101" "10111101010000000110111001111000" "10111101001000110000010101010011" "00111101010110000001010100101000" "00111110100010010101001000100100" "10111110101011011111110001110001" "00111101100101110000011101001010" "00111110100111001010101001000111" "00111101100101110010001000001000" "10111101011001011010111101100000" "10111100101000100010110010100000" "00111101100100110101001101101000" "10111100111100010000101100000000" "10111110010101001011001101100111" "10111110001100101000100110110000" "10111110100000111111010111011111" "10111110011101111100110010010110" "00111110101000111101100011000110" "10111101000101101011001101001000" "00111110100000010010111111001110" "00111110001101000000001000010000" "10111110100001111111110101001010" "10111110001010001001100110101110" "10111110010010000110111111111001" "00111110100001101000110101100100" "10111101110010010010100100010000" "00111101111011000000101010111000" "00111110000000100000101010011010" "00111110100101111001110001011100" "00111110100010111111111001101110" "10111110000011111100100000011111" "10111110001111100101000101110011" "10111101010110001111000010110000" "00111101100111001111010111110000" "10111110000111000101110001011101" "00111110011011101010101100100100" "10111101100001001011111001000100" "10111110000111001001001110001100" "00111101101101110011010101000000" "00111110010000110001111110000000" "10111101111011011010000110001000" "00111110001110010111101110110001" "10111110100001100001010101011000" "00111110101000100101111100011100" "00111110101001111010101101111001" "00111110010011011001101011000001" "00111101100101011111111001010001" "10111110100001110001011000011011" "10111110000100101101100100110110" "10111110100010011110010000011000" "10111110100100100011001100101110" "00111110100010100000101000111000" "00111101110010000000110001101100" "10111110101010111001011110110111" "10111110101101101011010001111000" "00111110100011010110010001010111" "10111110100110011000111110100010" "10111110101101000101100111010001" "10111110101010011101111010000111" "00111110100111001010001010001100" "00111110001100110010101110110010" "10111110000000000011101011001011" "10111110010000010011000100111111" "00111101000001110101111000100000" "00111110100110000101101010001000" "00111110010000000010111100100011" "10111110011101101100011111001110" "10111110100101110111100111101001" "00111110001101010110001000011100" "10111110100011100101011011010111" "10111101100100011001000101110000" "10111101101111110001001100101011" "00111101101111011101110100111111" "00111111000001110101000010100110" "10111110101000000001000010110000" "10111101111111100101110110010110" "10111111000010000000101101001110" "10111110000100001001010101100001" "10111110011110011001011011000000" "00111111000010011101000010010111" "00111101101101110111000010101100" "00111110111001010011101111100101" "00111110110110001010001000011010" "00111110010111001100011110010000" "10111110101110111011111011111001" "10111101111011101001000011000011" "10111110101000001010100111111110" "10111110011111110010001001000110" "10111110100010010101101100111111" "00111111000010011100000111101010" "00111110110010000110001101011101" "10111110010001111000011100000000" "10111101010000001101001100110010" "10111110011010100001010110110101" "10111110100011001000011011101000" "00111111000101011011010011110000" "10111101110011100000010110110010" "10111110011000100001100101100111" "10111110011100111100010101010111" "00111110100010100101110010110010" "10111110101001001100111001011001" "00111111100000000001110110110001" "00111111010101101110001010001000" "10111111100001001101000111110100" "00111111101110000011000011000000" "10111111001011000011110011100101" "00111111101001010000010011011101" "10111101110100000110011000111100" "00111111101000001101111011110011" "10111111100100110000000001100111" "00111111010001010011101101010101" "10111111100101111110001110111011" "10111111101000100011001011010011" "10111101111101110111010111110100" "10111110011011110111000011010011" "00111111100011001000110101000100" "00111101100010110000111101110100" "10111110100110101010000001001111" "00111111011101101000000001010111" "10111111100000110101100100001110" "10111111100110100000011001011100" "00111110001110111100100001111100" "00111110101101001100011001110111" "10111110010011001000010100110000" "00111111011111000100111011110010" "10111111101000010101101011010100" "00111110000000111100100011111100" "00111111100111101010111001100011" "10111110000110101111001101011110" "10111110001011100000011100011100" "10111110101101001110000011101001" "10111110101100010010100110010010" "10111110101011100011000001011100" "00111101101011110001111011100110" "10111110111000111000101000111001" "00111110001100111110100111111011" "10111110000101111111111111111010" "00111110100000011001001011111010" "10111110110000001110111001001110" "00111111001000101000100110110000" "10111110101000010011010101000011" "00111110111011101001010110111101" "00111110101100111100111000100100" "10111100001000101100111100100000" "00111110000101101111111011110001" "10111110110110010000110100010111" "00111110100000011100100011001010" "10111101111111010101100010110010" "10111101001001100101111110000010" "00111111000001001000111110011101" "00111110110100011000001010111000" "00111100100100010001010110000101" "10111110000100100010100100011011" "10111110101101101001111011110011" "10111101000000100011111111100011" "00111110100011100101011011110100" "10111111011110010110101100111100" "10111111000000000011101101011101" "00111101100110001111110111010000" "10111110010001000100111111001000" "00111110011111000100010001100000" "10111111001011111001001111110111" "10111111001010011101011010000010" "00111110111010110111101101100110" "10111110101110011010001000010000" "00111111000001001001010100001011" "10111111000010100100001101011111" "10111101010100000011010100101000" "10111110111011111111000101101010" "00111110100101010101001100001100" "10111110011101011101100001001101" "00111111000111110100101011101111" "00111111010011011000100011110101" "00111110101001110001001001110010" "10111110110111010100110011000011" "10111110001101111110011010010011" "10111110001001000111101001011010" "00111110000010110111000000111000" "10111110100010011100101011100010" "00111111000101111100010000001001" "00111111010100000000111000111101" "00111110011100100110100111100010" "00111101110110110110101010100100" "00111101011011111000110110010000" "10111101011000101100100110101010" "00111111000010110010001110101011" "10111110011111000001110100010100" "00111101010111101010111000001110" "00111110001110101010111111101011" "00111110001111000001010001111111" "10111101110111110001110101010100" "10111110100010111111100000011000" "00111100100000001100101111101100" "00111110100001111011001001111010" "00111110011001100101110110011100" "00111110110101011011100110101011" "00111011100011010000010001010000" "00111100100001110110111111110000" "10111101100101110110101111101110" "00111110010011101011110000011111" "00111101000111001110001000010111" "00111110011001011001011001000010" "00111101111100101110000000110000" "10111101100010011001110000001100" "10111110001010111110101001100000" "10111110100110011101010000000111" "10111101111011110100000011110000" "00111110011011101111000101101000" "10111110001001000100110110110011" "00111110000100101010001110011011" "00111110110111011101000000011100" "10111110101110101100011010110100" "00111101111001010111010010000100" "10111101101100011111010010111100" "00111110010010000011111101001111" "00111110111100001001000110000101" "00111110100001000101001000011010" "10111110101000000110011011110011" "10111110010000111110111011101101" "00111110100010110010001110001100" "00111110101001110110000010101110" "10111110101100100001001100100111" "10111101110100000111100101101000" "10111110001110110000101110000111" "00111100000000111001010011100000" "10111110000010101100000000111110" "00111110011100010001100100011000" "10111110100101110001110100110000" "00111110101100011100011101011100" "10111110011110110001000111110110" "00111110101001000101011110010010" "10111101100001000011001010000000" "00111110001001010001101000001000" "00111101111001111110011100011000" "10111110000000000000001111010110" "00111110001011110110011010111100" "10111110100100100001111110100011" "00111101010110100010111001001000" "10111101101111000001110001110100" "10111101110010001100011011001000" "10111110001100011110111000101001" "00111110101101000111011101110110" "10111101111010101101011101111000" "00111101110000100000011010101100" "00111110001011000001111010010000" "10111110101110011111100001010111" "00111110010000100000010101010100" "10111110101011001011101010110001" "10111110100100010011001001011100" "00111101000011001011011101000000" "10111110100001100110010000100010" "10111101010110010111010010000101" "00111100000110011010001000111100" "00111101111010011101001110110001" "10111110100010001110101000101101" "00111111000101101100011011101101" "00111101110111010111001001001101" "00111100100110101001110100110000" "00111101100000001011010100100111" "00111101100100110100111100011101" "10111110011100001000110100111000" "00111110110101001101010000011010" "00111111000011000000111000001101" "10111110100100101011110100100001" "00111011011111100100000000010111" "10111110101101111001111010111100" "00111110000000010010000100110100" "10111110100110011011110001000110" "10111110011000100001101011001100" "00111110010100110100000001111111" "10111100011111000001110100111000" "00111110100111100011100100011000" "10111110100111000100000001011000" "10111110010111001111101101101001" "10111110111001101100010110110000" "00111110101101100001101110110111" "00111110011100000010100101000101" "00111100111110010100001100100101" "10111110010111000010110011010111" "00111110100110110001001100101011" "10111110000011101100110101101100" "00111111100010000000100000010010" "00111111100011011110111110110100" "10111111010011110001000101100001" "00111111001111011110001110010001" "10111110111100101101110111000001" "00111111100001000000100011101110" "10111110101101101111101001100000" "00111111011111100111100001100111" "10111111101110100101001101000100" "00111111100000001011001101111101" "10111111011000011011010111110101" "10111110110100111111010001010110" "00111110101011101100101111010100" "10111110101110000010000101010101" "00111110111010101111100100000010" "00111100111101100001010010000000" "00111110010101010111001011101000" "00111111101101110100001100100110" "10111111010011111110000110100110" "10111111001000110101000011010101" "00111100001111011000011110000000" "00111101111001001100011110010001" "10111110010000100110001100100110" "00111111010101101001011001011001" "10111111010111001101011000101110" "00111111101110111110000010001001" "00111111011100111111010101101000" "10111110101100101000111111110111" "00111110011001100110001010111100" "00111110011101100100100100001000" "00111110001101000111011001101110" "00111110100000111110111101001111" "00111110100000111011011001001101" "10111110011111110010001001000110" "00111100100011101100010011001100" "10111110100001001001010110111000" "00111110100011100110110010001100" "10111110011110000101011111000100" "10111100010001101101010011100011" "10111110100100111101110000100010" "00111101101111011000011110011111" "00111110010111100111100011010001" "10111110011011000111010000000100" "00111101101100110000000111101001" "00111101000110001110100100101010" "00111110100011110110100100110100" "10111101101111000101000101010000" "10111101111100000010010011000101" "10111110100011110111011110010100" "10111010011111011111000000101111" "10111110101000100011101100000001" "00111100000101110000110111111111" "00111110000011000110100011001100" "10111110100001111110000100010000" "10111101110010110101001110110110" "00111101111010100110011110101000" "10111100010100101101000110100101" "10111110010111001001010010111000" "10111110000110001011010101001001" "10111110100100000000111111001000" "00111110100000000000110101111000" "00111111010100110101111110111011" "10111101111101111111010011010010" "00111110100111111110100010011101" "10111111010000000000101010100101" "00111111001100010011111110011010" "00111101110001011101000010011000" "00111111001001011111101001100111" "10111110110011111001011111010100" "00111110101110111101111111111001" "10111110110110010111010011001010" "10111111001100010101010001001001" "10111110011001010111001111101001" "00111110011000111000111110000000" "00111110111000101110111110110110" "00111110001011011111101101111000" "00111101111010110100111111110000" "00111110110110010110110100010001" "00111110110010101000001110110100" "10111110001110111110010011000011" "00111101100011011000110010001100" "10111110100100100010000101001010" "10111110100101010001011101111100" "00111111000001001101011001101111" "10111110110010011000001000101011" "00111111001101011001000000000110" "00111111010110011001100101110001" "10111110011000010110100101100110" "10111110011110101010110111111011" "10111110011110001100010001101110" "10111100010110111111110010000000" "00111101100000101100001101000000" "00111100111001101010110101110000" "00111110100101011010100111111000" "00111110101011001000111110010100" "00111110001011010101000101011100" "00111110100000101010101000100000" "10111110101000100000000011100111" "00111100011100001001010101000000" "00111110100110011110000000001100" "10111110010110011001110000101101" "00111110100101001101110100010000" "00111110100101001001111011111000" "10111101101000001111111111001100" "00111110100010110100001101101000" "10111101000011111011110011010000" "10111101010011011101111111001000" "10111110101100101111100110011001" "00111110001011100011101111111000" "00111101111110001100000000000000" "10111110010101111101110101001101" "10111110000100110001010010101001" "10111110001100001110010110010000" "00111110101010111000001111010110" "10111101011010000111100010001000" "10111110011000111101111111111101" "10111101001001101001000011000000" "00111110100000110110110000111110" "00111110010101111110110110111000" "00111110101110100011011011000000" "10111110100111111100000110110000" "00111110010110001001110001110000" "00111110101000110110111000100110" "00111110100010010010110100001100" "10111101101110010001101001101000" "10111110000111011010010001000100" "10111110011110011101010110001010" "00111110010101101100101101010100" "10111110100000000101011101111000" "10111101100111111101101011101000" "00111110101100110000011000011010" "10111101100110101000000100000100" "10111101000000111110101011011000" "00111110011110111001101110111000" "10111110010110100100001000000110" "00111110010001010110000110110000" "00111110011110000011011001000000" "10111101100011100100011101010100" "00111110101101110111111001011010" "00111110100111111111001001000100" "10111101101011111011001100110100" "10111110101011011101101100100000" "00111110001001101011110101110100" "10111101100000111001001111001100" "00111110010111101111011110101000" "10111110011000101011001111111111" "00111101101100100000100001110100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 20
set MemName hand_num_nn_thetaeOg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 30
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "10111100001011011101101000101110" "10111100011011111011011011111101" "00000000000000000000000000000000" "10111110111111101000011000000101" "10111110111010110101010010011110" "00111110110111011111011011100010" "10111110111111101010111111000011" "00111110110111111011111110001110" "10111110111010000000010010101101" "00000000000000000000000000000000" "10111110111010001100111000011110" "00111111001011010011010110001111" "10111110110011000101111100111010" "00111111000000000001110010000000" "00111110111001100011111110000011" "00000000000000000000000000000000" "10111100110100001100010111010110" "10111110111010010110001100111000" "00000000000000000000000000000000" "00000000000000000000000000000000" "10111111000001010010010011111001" "00111111000101111111000011010000" "00111110111101010100111000101100" "10111100010000010111001110101000" "10111100111110101010110110110001" "00000000000000000000000000000000" "10111110110111100111100110010100" "00111111000111010110011110011101" "10111110111000001111011011000110" "10111110110101010100011101111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 21
set MemName hand_num_nn_thetafYi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 30
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "10111101111110010001101100011010" "10111110000111001011100110010000" "00111110110000010100000001111110" "00111111010001011101011101011100" "00111111011001011101111000001111" "10111111000110001111010110000001" "00111111100100101010011110000110" "10111110110100111011011011000111" "00111111110001111100111111111100" "10111110110010100011011001110001" "00111111100011110110110100000110" "10111111011011010110010011010010" "00111111100011101011110110111010" "10111111100010000111011110000100" "10111111000011010001110110101100" "00111110100110000010111110000000" "10111110100001011011010000010011" "00111111011100000110001100010001" "10111110100010010100001010000100" "10111110101000011010010101000100" "00111111100010111111010101111011" "10111111010011010000001101111100" "10111110011100110010100101000010" "00111110101110011101011010001000" "10111011111001010000111000100010" "10111110110111000011001000000000" "00111111011110111010010111101010" "10111111100001100000100101010001" "01000000000110010101010110000001" "00111111111000000000001111111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 22
set MemName hand_num_nn_h1
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 15
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.152
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 23
set MemName hand_num_nn_h2
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 30
set AddrWd 5
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.152
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_CRTL_BUS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 24 \
			corename hand_num_nn_CRTL_BUS_axilite \
			name hand_num_nn_CRTL_BUS_s_axi \
			ports {$port_CRTL_BUS} \
			op interface \
			is_flushable 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'CRTL_BUS'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hand_num_nn_CRTL_BUS_s_axi
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 0 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


