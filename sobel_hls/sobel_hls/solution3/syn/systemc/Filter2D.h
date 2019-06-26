// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Filter2D_HH_
#define _Filter2D_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sobel_hls_mux_32_hbi.h"
#include "sobel_hls_mac_mulpcA.h"
#include "sobel_hls_mac_mulqcK.h"
#include "Filter2D_1_k_buf_eOg.h"

namespace ap_rtl {

struct Filter2D : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > p_src_data_stream_V_dout;
    sc_in< sc_logic > p_src_data_stream_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_V_din;
    sc_in< sc_logic > p_dst_data_stream_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_V_write;
    sc_in< sc_lv<2> > p_kernel_val_0_V_1_read;
    sc_in< sc_lv<2> > p_kernel_val_0_V_2_read;
    sc_in< sc_lv<3> > p_kernel_val_1_V_0_read;
    sc_in< sc_lv<4> > p_kernel_val_1_V_2_read;
    sc_in< sc_lv<2> > p_kernel_val_2_V_0_read;
    sc_in< sc_lv<3> > p_kernel_val_2_V_1_read;
    sc_signal< sc_lv<8> > ap_var_for_const0;


    // Module declarations
    Filter2D(sc_module_name name);
    SC_HAS_PROCESS(Filter2D);

    ~Filter2D();

    sc_trace_file* mVcdFile;

    Filter2D_1_k_buf_eOg* k_buf_0_val_3_U;
    Filter2D_1_k_buf_eOg* k_buf_0_val_4_U;
    Filter2D_1_k_buf_eOg* k_buf_0_val_5_U;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U54;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U55;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U56;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U57;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U58;
    sobel_hls_mux_32_hbi<1,1,8,8,8,2,8>* sobel_hls_mux_32_hbi_U59;
    sobel_hls_mac_mulpcA<1,1,2,8,9,11>* sobel_hls_mac_mulpcA_U60;
    sobel_hls_mac_mulqcK<1,1,2,8,11,11>* sobel_hls_mac_mulqcK_U61;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_src_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond460_i_reg_1419;
    sc_signal< sc_lv<1> > exitcond460_i_reg_1419_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_1428;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_1428_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_reg_1384;
    sc_signal< sc_lv<1> > tmp_s_reg_1375;
    sc_signal< sc_logic > p_dst_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<1> > or_cond_i_reg_1449;
    sc_signal< sc_lv<1> > or_cond_i_reg_1449_pp0_iter4_reg;
    sc_signal< sc_lv<11> > t_V_2_reg_323;
    sc_signal< sc_lv<10> > tmp_369_0_1_cast_fu_334_p1;
    sc_signal< sc_lv<10> > tmp_369_0_1_cast_reg_1336;
    sc_signal< sc_lv<10> > tmp_369_0_2_cast_fu_338_p1;
    sc_signal< sc_lv<10> > tmp_369_0_2_cast_reg_1341;
    sc_signal< sc_lv<11> > tmp_369_1_cast_fu_342_p1;
    sc_signal< sc_lv<11> > tmp_369_1_cast_reg_1346;
    sc_signal< sc_lv<12> > tmp_369_1_2_cast_fu_346_p1;
    sc_signal< sc_lv<12> > tmp_369_1_2_cast_reg_1351;
    sc_signal< sc_lv<10> > tmp_369_2_cast_fu_350_p1;
    sc_signal< sc_lv<10> > tmp_369_2_cast_reg_1356;
    sc_signal< sc_lv<11> > tmp_369_2_1_cast_fu_354_p1;
    sc_signal< sc_lv<11> > tmp_369_2_1_cast_reg_1361;
    sc_signal< sc_lv<1> > exitcond461_i_fu_362_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > i_V_fu_368_p2;
    sc_signal< sc_lv<11> > i_V_reg_1370;
    sc_signal< sc_lv<1> > tmp_s_fu_374_p2;
    sc_signal< sc_lv<1> > tmp_284_0_not_fu_380_p2;
    sc_signal< sc_lv<1> > tmp_284_0_not_reg_1379;
    sc_signal< sc_lv<1> > icmp_fu_396_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_402_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_1389;
    sc_signal< sc_lv<1> > tmp_328_1_fu_408_p2;
    sc_signal< sc_lv<1> > tmp_328_1_reg_1393;
    sc_signal< sc_lv<1> > tmp_3_fu_414_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_1397;
    sc_signal< sc_lv<2> > row_assign_10_0_t_fu_568_p2;
    sc_signal< sc_lv<2> > row_assign_10_0_t_reg_1404;
    sc_signal< sc_lv<2> > row_assign_10_1_t_fu_606_p2;
    sc_signal< sc_lv<2> > row_assign_10_1_t_reg_1409;
    sc_signal< sc_lv<2> > row_assign_10_2_t_fu_644_p2;
    sc_signal< sc_lv<2> > row_assign_10_2_t_reg_1414;
    sc_signal< sc_lv<1> > exitcond460_i_fu_654_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_predicate_op161_read_state5;
    sc_signal< bool > ap_predicate_op172_read_state5;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter5;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond460_i_reg_1419_pp0_iter2_reg;
    sc_signal< sc_lv<11> > j_V_fu_660_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > or_cond_i_i_fu_712_p2;
    sc_signal< sc_lv<14> > x_fu_790_p3;
    sc_signal< sc_lv<14> > x_reg_1432;
    sc_signal< sc_lv<2> > tmp_73_fu_798_p1;
    sc_signal< sc_lv<2> > tmp_73_reg_1437;
    sc_signal< sc_lv<1> > brmerge_fu_802_p2;
    sc_signal< sc_lv<1> > brmerge_reg_1442;
    sc_signal< sc_lv<1> > brmerge_reg_1442_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_i_fu_807_p2;
    sc_signal< sc_lv<1> > or_cond_i_reg_1449_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_i_reg_1449_pp0_iter2_reg;
    sc_signal< sc_lv<1> > or_cond_i_reg_1449_pp0_iter3_reg;
    sc_signal< sc_lv<11> > k_buf_0_val_3_addr_reg_1453;
    sc_signal< sc_lv<2> > col_assign_3_t_fu_822_p2;
    sc_signal< sc_lv<2> > col_assign_3_t_reg_1459;
    sc_signal< sc_lv<11> > k_buf_0_val_4_addr_reg_1466;
    sc_signal< sc_lv<11> > k_buf_0_val_5_addr_reg_1472;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_23_fu_946_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_23_reg_1478;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_24_fu_964_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_24_reg_1485;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_25_fu_982_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_25_reg_1491;
    sc_signal< sc_lv<11> > grp_fu_1245_p3;
    sc_signal< sc_lv<11> > sum_V_0_1_reg_1496;
    sc_signal< sc_lv<12> > sum_V_1_1_fu_1061_p2;
    sc_signal< sc_lv<12> > sum_V_1_1_reg_1501;
    sc_signal< sc_lv<12> > r_V_50_1_2_fu_1070_p2;
    sc_signal< sc_lv<12> > r_V_50_1_2_reg_1506;
    sc_signal< sc_lv<8> > tmp_79_fu_1094_p1;
    sc_signal< sc_lv<8> > tmp_79_reg_1511;
    sc_signal< sc_lv<11> > tmp4_fu_1124_p2;
    sc_signal< sc_lv<11> > tmp4_reg_1516;
    sc_signal< sc_lv<8> > tmp6_fu_1130_p2;
    sc_signal< sc_lv<8> > tmp6_reg_1521;
    sc_signal< sc_lv<8> > tmp8_fu_1136_p2;
    sc_signal< sc_lv<8> > tmp8_reg_1526;
    sc_signal< sc_lv<8> > p_Val2_6_fu_1237_p3;
    sc_signal< sc_lv<8> > p_Val2_6_reg_1531;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter2_state5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<11> > k_buf_0_val_3_address0;
    sc_signal< sc_logic > k_buf_0_val_3_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_3_q0;
    sc_signal< sc_lv<11> > k_buf_0_val_3_address1;
    sc_signal< sc_logic > k_buf_0_val_3_ce1;
    sc_signal< sc_logic > k_buf_0_val_3_we1;
    sc_signal< sc_lv<11> > k_buf_0_val_4_address0;
    sc_signal< sc_logic > k_buf_0_val_4_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_4_q0;
    sc_signal< sc_lv<11> > k_buf_0_val_4_address1;
    sc_signal< sc_logic > k_buf_0_val_4_ce1;
    sc_signal< sc_logic > k_buf_0_val_4_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_4_d1;
    sc_signal< sc_lv<11> > k_buf_0_val_5_address0;
    sc_signal< sc_logic > k_buf_0_val_5_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_5_q0;
    sc_signal< sc_lv<11> > k_buf_0_val_5_address1;
    sc_signal< sc_logic > k_buf_0_val_5_ce1;
    sc_signal< sc_logic > k_buf_0_val_5_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_5_d1;
    sc_signal< sc_lv<11> > t_V_reg_312;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_23_fu_815_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_fu_150;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_18_fu_154;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_19_fu_158;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_20_fu_162;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_21_fu_166;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_22_fu_170;
    sc_signal< sc_lv<8> > right_border_buf_0_s_fu_174;
    sc_signal< sc_lv<8> > col_buf_0_val_0_0_fu_856_p3;
    sc_signal< sc_lv<8> > right_border_buf_0_14_fu_178;
    sc_signal< sc_lv<8> > right_border_buf_0_15_fu_182;
    sc_signal< sc_lv<8> > right_border_buf_0_16_fu_186;
    sc_signal< sc_lv<8> > col_buf_0_val_1_0_fu_874_p3;
    sc_signal< sc_lv<8> > right_border_buf_0_17_fu_190;
    sc_signal< sc_lv<8> > right_border_buf_0_18_fu_194;
    sc_signal< sc_lv<8> > col_buf_0_val_2_0_fu_892_p3;
    sc_signal< sc_lv<10> > tmp_55_fu_386_p4;
    sc_signal< sc_lv<12> > t_V_cast_fu_358_p1;
    sc_signal< sc_lv<12> > tmp_7_fu_424_p2;
    sc_signal< sc_lv<1> > tmp_57_fu_430_p3;
    sc_signal< sc_lv<1> > tmp_10_fu_444_p2;
    sc_signal< sc_lv<1> > rev_fu_438_p2;
    sc_signal< sc_lv<1> > tmp_58_fu_456_p3;
    sc_signal< sc_lv<12> > p_assign_7_fu_464_p2;
    sc_signal< sc_lv<12> > p_p2_i497_i_fu_470_p3;
    sc_signal< sc_lv<12> > p_assign_6_1_fu_488_p2;
    sc_signal< sc_lv<12> > p_assign_6_2_fu_514_p2;
    sc_signal< sc_lv<2> > tmp_59_fu_484_p1;
    sc_signal< sc_lv<1> > tmp_13_fu_478_p2;
    sc_signal< sc_lv<2> > tmp_28_fu_540_p2;
    sc_signal< sc_lv<2> > tmp_56_fu_420_p1;
    sc_signal< sc_lv<1> > or_cond_i496_i_fu_450_p2;
    sc_signal< sc_lv<2> > tmp_30_fu_554_p2;
    sc_signal< sc_lv<2> > tmp_29_fu_546_p3;
    sc_signal< sc_lv<2> > tmp_31_fu_560_p3;
    sc_signal< sc_lv<2> > tmp_62_fu_510_p1;
    sc_signal< sc_lv<1> > tmp_61_fu_502_p3;
    sc_signal< sc_lv<2> > tmp_66_fu_580_p2;
    sc_signal< sc_lv<2> > tmp_67_fu_586_p1;
    sc_signal< sc_lv<1> > tmp_60_fu_494_p3;
    sc_signal< sc_lv<2> > tmp_41_fu_590_p3;
    sc_signal< sc_lv<2> > tmp_33_fu_574_p2;
    sc_signal< sc_lv<2> > tmp_35_fu_598_p3;
    sc_signal< sc_lv<2> > tmp_65_fu_536_p1;
    sc_signal< sc_lv<1> > tmp_64_fu_528_p3;
    sc_signal< sc_lv<2> > tmp_68_fu_618_p2;
    sc_signal< sc_lv<2> > tmp_69_fu_624_p1;
    sc_signal< sc_lv<1> > tmp_63_fu_520_p3;
    sc_signal< sc_lv<2> > tmp_42_fu_628_p3;
    sc_signal< sc_lv<2> > tmp_37_fu_612_p2;
    sc_signal< sc_lv<2> > tmp_39_fu_636_p3;
    sc_signal< sc_lv<10> > tmp_70_fu_666_p4;
    sc_signal< sc_lv<12> > t_V_2_cast_fu_650_p1;
    sc_signal< sc_lv<12> > ImagLoc_x_fu_682_p2;
    sc_signal< sc_lv<1> > tmp_71_fu_692_p3;
    sc_signal< sc_lv<1> > tmp_19_fu_706_p2;
    sc_signal< sc_lv<1> > rev3_fu_700_p2;
    sc_signal< sc_lv<1> > tmp_72_fu_718_p3;
    sc_signal< sc_lv<12> > p_assign_1_fu_726_p2;
    sc_signal< sc_lv<12> > p_p2_i_i_fu_732_p3;
    sc_signal< sc_lv<13> > p_p2_i_i_cast_fu_744_p1;
    sc_signal< sc_lv<13> > ImagLoc_x_cast_fu_688_p1;
    sc_signal< sc_lv<13> > p_assign_2_fu_754_p2;
    sc_signal< sc_lv<13> > p_assign_3_fu_760_p3;
    sc_signal< sc_lv<1> > tmp_19_not_fu_772_p2;
    sc_signal< sc_lv<1> > tmp_21_fu_748_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_778_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_784_p2;
    sc_signal< sc_lv<14> > p_p2_i_i_cast1_fu_740_p1;
    sc_signal< sc_lv<14> > sel_tmp_cast_fu_768_p1;
    sc_signal< sc_lv<1> > icmp2_fu_676_p2;
    sc_signal< sc_lv<32> > col_assign_cast_fu_812_p1;
    sc_signal< sc_lv<8> > tmp_24_fu_845_p5;
    sc_signal< sc_lv<8> > tmp_25_fu_863_p5;
    sc_signal< sc_lv<8> > tmp_26_fu_881_p5;
    sc_signal< sc_lv<8> > tmp_32_fu_935_p5;
    sc_signal< sc_lv<8> > tmp_36_fu_953_p5;
    sc_signal< sc_lv<8> > tmp_40_fu_971_p5;
    sc_signal< sc_lv<9> > r_V_0_cast_fu_995_p1;
    sc_signal< sc_lv<9> > r_V_s_fu_999_p2;
    sc_signal< sc_lv<11> > grp_fu_1252_p3;
    sc_signal< sc_lv<3> > r_V_50_1_fu_1045_p0;
    sc_signal< sc_lv<8> > r_V_50_1_fu_1045_p1;
    sc_signal< sc_lv<11> > r_V_50_1_fu_1045_p2;
    sc_signal< sc_lv<12> > tmp_370_1_cast_cast_fu_1050_p1;
    sc_signal< sc_lv<12> > sum_V_0_2_cast_fu_1038_p1;
    sc_signal< sc_lv<4> > r_V_50_1_2_fu_1070_p0;
    sc_signal< sc_lv<8> > r_V_50_1_2_fu_1070_p1;
    sc_signal< sc_lv<8> > tmp_77_fu_1058_p1;
    sc_signal< sc_lv<8> > tmp_76_fu_1054_p1;
    sc_signal< sc_lv<2> > r_V_50_2_fu_1089_p0;
    sc_signal< sc_lv<8> > r_V_50_2_fu_1089_p1;
    sc_signal< sc_lv<10> > r_V_50_2_fu_1089_p2;
    sc_signal< sc_lv<3> > r_V_50_2_1_fu_1102_p0;
    sc_signal< sc_lv<8> > r_V_50_2_1_fu_1102_p1;
    sc_signal< sc_lv<11> > r_V_50_2_1_fu_1102_p2;
    sc_signal< sc_lv<10> > tmp_370_2_2_cast_cas_fu_1111_p1;
    sc_signal< sc_lv<10> > tmp5_fu_1114_p2;
    sc_signal< sc_lv<11> > tmp5_cast_fu_1120_p1;
    sc_signal< sc_lv<8> > tmp_43_fu_1079_p2;
    sc_signal< sc_lv<8> > tmp_78_fu_1075_p1;
    sc_signal< sc_lv<8> > tmp_80_fu_1107_p1;
    sc_signal< sc_lv<12> > tmp3_fu_1165_p2;
    sc_signal< sc_lv<12> > tmp4_cast_fu_1169_p1;
    sc_signal< sc_lv<12> > p_Val2_s_fu_1172_p2;
    sc_signal< sc_lv<8> > tmp7_fu_1186_p2;
    sc_signal< sc_lv<1> > p_Result_s_fu_1178_p3;
    sc_signal< sc_lv<4> > tmp_44_fu_1195_p4;
    sc_signal< sc_lv<1> > not_i_i_fu_1211_p2;
    sc_signal< sc_lv<1> > tmp_i_i_fu_1205_p2;
    sc_signal< sc_lv<1> > overflow_fu_1217_p2;
    sc_signal< sc_lv<1> > tmp_1_i_i_fu_1231_p2;
    sc_signal< sc_lv<8> > p_mux_i_i_cast_fu_1223_p3;
    sc_signal< sc_lv<8> > p_Val2_1_fu_1190_p2;
    sc_signal< sc_lv<2> > grp_fu_1245_p0;
    sc_signal< sc_lv<8> > grp_fu_1245_p1;
    sc_signal< sc_lv<2> > grp_fu_1252_p0;
    sc_signal< sc_lv<8> > grp_fu_1252_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0;
    sc_signal< bool > ap_enable_operation_135;
    sc_signal< bool > ap_enable_state4_pp0_iter1_stage0;
    sc_signal< bool > ap_enable_operation_152;
    sc_signal< bool > ap_enable_state5_pp0_iter2_stage0;
    sc_signal< bool > ap_predicate_op166_store_state5;
    sc_signal< bool > ap_enable_operation_166;
    sc_signal< bool > ap_predicate_op173_store_state5;
    sc_signal< bool > ap_enable_operation_173;
    sc_signal< bool > ap_enable_operation_138;
    sc_signal< bool > ap_enable_operation_155;
    sc_signal< bool > ap_predicate_op164_store_state5;
    sc_signal< bool > ap_enable_operation_164;
    sc_signal< bool > ap_predicate_op171_store_state5;
    sc_signal< bool > ap_enable_operation_171;
    sc_signal< bool > ap_predicate_op140_load_state4;
    sc_signal< bool > ap_enable_operation_140;
    sc_signal< bool > ap_predicate_op158_load_state5;
    sc_signal< bool > ap_enable_operation_158;
    sc_signal< bool > ap_predicate_op162_store_state5;
    sc_signal< bool > ap_enable_operation_162;
    sc_signal< bool > ap_predicate_op170_store_state5;
    sc_signal< bool > ap_enable_operation_170;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<10> > grp_fu_1245_p10;
    sc_signal< sc_lv<10> > grp_fu_1252_p10;
    sc_signal< sc_lv<12> > r_V_50_1_2_fu_1070_p10;
    sc_signal< sc_lv<11> > r_V_50_1_fu_1045_p10;
    sc_signal< sc_lv<11> > r_V_50_2_1_fu_1102_p10;
    sc_signal< sc_lv<10> > r_V_50_2_fu_1089_p10;
    sc_signal< bool > ap_condition_1006;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state9;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_43A;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_438;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<12> ap_const_lv12_FFF;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<12> ap_const_lv12_438;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<12> ap_const_lv12_FFE;
    static const sc_lv<12> ap_const_lv12_FFD;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<11> ap_const_lv11_782;
    static const sc_lv<12> ap_const_lv12_780;
    static const sc_lv<13> ap_const_lv13_EFE;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_FF;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ImagLoc_x_cast_fu_688_p1();
    void thread_ImagLoc_x_fu_682_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_block_state7_pp0_stage0_iter4();
    void thread_ap_block_state8_pp0_stage0_iter5();
    void thread_ap_condition_1006();
    void thread_ap_condition_pp0_exit_iter2_state5();
    void thread_ap_done();
    void thread_ap_enable_operation_135();
    void thread_ap_enable_operation_138();
    void thread_ap_enable_operation_140();
    void thread_ap_enable_operation_152();
    void thread_ap_enable_operation_155();
    void thread_ap_enable_operation_158();
    void thread_ap_enable_operation_162();
    void thread_ap_enable_operation_164();
    void thread_ap_enable_operation_166();
    void thread_ap_enable_operation_170();
    void thread_ap_enable_operation_171();
    void thread_ap_enable_operation_173();
    void thread_ap_enable_pp0();
    void thread_ap_enable_state4_pp0_iter1_stage0();
    void thread_ap_enable_state5_pp0_iter2_stage0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op140_load_state4();
    void thread_ap_predicate_op158_load_state5();
    void thread_ap_predicate_op161_read_state5();
    void thread_ap_predicate_op162_store_state5();
    void thread_ap_predicate_op164_store_state5();
    void thread_ap_predicate_op166_store_state5();
    void thread_ap_predicate_op170_store_state5();
    void thread_ap_predicate_op171_store_state5();
    void thread_ap_predicate_op172_read_state5();
    void thread_ap_predicate_op173_store_state5();
    void thread_ap_ready();
    void thread_brmerge_fu_802_p2();
    void thread_col_assign_3_t_fu_822_p2();
    void thread_col_assign_cast_fu_812_p1();
    void thread_col_buf_0_val_0_0_fu_856_p3();
    void thread_col_buf_0_val_1_0_fu_874_p3();
    void thread_col_buf_0_val_2_0_fu_892_p3();
    void thread_exitcond460_i_fu_654_p2();
    void thread_exitcond461_i_fu_362_p2();
    void thread_grp_fu_1245_p0();
    void thread_grp_fu_1245_p1();
    void thread_grp_fu_1245_p10();
    void thread_grp_fu_1252_p0();
    void thread_grp_fu_1252_p1();
    void thread_grp_fu_1252_p10();
    void thread_i_V_fu_368_p2();
    void thread_icmp2_fu_676_p2();
    void thread_icmp_fu_396_p2();
    void thread_j_V_fu_660_p2();
    void thread_k_buf_0_val_3_address0();
    void thread_k_buf_0_val_3_address1();
    void thread_k_buf_0_val_3_ce0();
    void thread_k_buf_0_val_3_ce1();
    void thread_k_buf_0_val_3_we1();
    void thread_k_buf_0_val_4_address0();
    void thread_k_buf_0_val_4_address1();
    void thread_k_buf_0_val_4_ce0();
    void thread_k_buf_0_val_4_ce1();
    void thread_k_buf_0_val_4_d1();
    void thread_k_buf_0_val_4_we1();
    void thread_k_buf_0_val_5_address0();
    void thread_k_buf_0_val_5_address1();
    void thread_k_buf_0_val_5_ce0();
    void thread_k_buf_0_val_5_ce1();
    void thread_k_buf_0_val_5_d1();
    void thread_k_buf_0_val_5_we1();
    void thread_not_i_i_fu_1211_p2();
    void thread_or_cond_i496_i_fu_450_p2();
    void thread_or_cond_i_fu_807_p2();
    void thread_or_cond_i_i_fu_712_p2();
    void thread_overflow_fu_1217_p2();
    void thread_p_Result_s_fu_1178_p3();
    void thread_p_Val2_1_fu_1190_p2();
    void thread_p_Val2_6_fu_1237_p3();
    void thread_p_Val2_s_fu_1172_p2();
    void thread_p_assign_1_fu_726_p2();
    void thread_p_assign_2_fu_754_p2();
    void thread_p_assign_3_fu_760_p3();
    void thread_p_assign_6_1_fu_488_p2();
    void thread_p_assign_6_2_fu_514_p2();
    void thread_p_assign_7_fu_464_p2();
    void thread_p_dst_data_stream_V_blk_n();
    void thread_p_dst_data_stream_V_din();
    void thread_p_dst_data_stream_V_write();
    void thread_p_mux_i_i_cast_fu_1223_p3();
    void thread_p_p2_i497_i_fu_470_p3();
    void thread_p_p2_i_i_cast1_fu_740_p1();
    void thread_p_p2_i_i_cast_fu_744_p1();
    void thread_p_p2_i_i_fu_732_p3();
    void thread_p_src_data_stream_V_blk_n();
    void thread_p_src_data_stream_V_read();
    void thread_r_V_0_cast_fu_995_p1();
    void thread_r_V_50_1_2_fu_1070_p0();
    void thread_r_V_50_1_2_fu_1070_p1();
    void thread_r_V_50_1_2_fu_1070_p10();
    void thread_r_V_50_1_2_fu_1070_p2();
    void thread_r_V_50_1_fu_1045_p0();
    void thread_r_V_50_1_fu_1045_p1();
    void thread_r_V_50_1_fu_1045_p10();
    void thread_r_V_50_1_fu_1045_p2();
    void thread_r_V_50_2_1_fu_1102_p0();
    void thread_r_V_50_2_1_fu_1102_p1();
    void thread_r_V_50_2_1_fu_1102_p10();
    void thread_r_V_50_2_1_fu_1102_p2();
    void thread_r_V_50_2_fu_1089_p0();
    void thread_r_V_50_2_fu_1089_p1();
    void thread_r_V_50_2_fu_1089_p10();
    void thread_r_V_50_2_fu_1089_p2();
    void thread_r_V_s_fu_999_p2();
    void thread_rev3_fu_700_p2();
    void thread_rev_fu_438_p2();
    void thread_row_assign_10_0_t_fu_568_p2();
    void thread_row_assign_10_1_t_fu_606_p2();
    void thread_row_assign_10_2_t_fu_644_p2();
    void thread_sel_tmp7_fu_778_p2();
    void thread_sel_tmp8_fu_784_p2();
    void thread_sel_tmp_cast_fu_768_p1();
    void thread_src_kernel_win_0_va_23_fu_946_p3();
    void thread_src_kernel_win_0_va_24_fu_964_p3();
    void thread_src_kernel_win_0_va_25_fu_982_p3();
    void thread_sum_V_0_2_cast_fu_1038_p1();
    void thread_sum_V_1_1_fu_1061_p2();
    void thread_t_V_2_cast_fu_650_p1();
    void thread_t_V_cast_fu_358_p1();
    void thread_tmp3_fu_1165_p2();
    void thread_tmp4_cast_fu_1169_p1();
    void thread_tmp4_fu_1124_p2();
    void thread_tmp5_cast_fu_1120_p1();
    void thread_tmp5_fu_1114_p2();
    void thread_tmp6_fu_1130_p2();
    void thread_tmp7_fu_1186_p2();
    void thread_tmp8_fu_1136_p2();
    void thread_tmp_10_fu_444_p2();
    void thread_tmp_13_fu_478_p2();
    void thread_tmp_19_fu_706_p2();
    void thread_tmp_19_not_fu_772_p2();
    void thread_tmp_1_i_i_fu_1231_p2();
    void thread_tmp_21_fu_748_p2();
    void thread_tmp_23_fu_815_p1();
    void thread_tmp_284_0_not_fu_380_p2();
    void thread_tmp_28_fu_540_p2();
    void thread_tmp_29_fu_546_p3();
    void thread_tmp_2_fu_402_p2();
    void thread_tmp_30_fu_554_p2();
    void thread_tmp_31_fu_560_p3();
    void thread_tmp_328_1_fu_408_p2();
    void thread_tmp_33_fu_574_p2();
    void thread_tmp_35_fu_598_p3();
    void thread_tmp_369_0_1_cast_fu_334_p1();
    void thread_tmp_369_0_2_cast_fu_338_p1();
    void thread_tmp_369_1_2_cast_fu_346_p1();
    void thread_tmp_369_1_cast_fu_342_p1();
    void thread_tmp_369_2_1_cast_fu_354_p1();
    void thread_tmp_369_2_cast_fu_350_p1();
    void thread_tmp_370_1_cast_cast_fu_1050_p1();
    void thread_tmp_370_2_2_cast_cas_fu_1111_p1();
    void thread_tmp_37_fu_612_p2();
    void thread_tmp_39_fu_636_p3();
    void thread_tmp_3_fu_414_p2();
    void thread_tmp_41_fu_590_p3();
    void thread_tmp_42_fu_628_p3();
    void thread_tmp_43_fu_1079_p2();
    void thread_tmp_44_fu_1195_p4();
    void thread_tmp_55_fu_386_p4();
    void thread_tmp_56_fu_420_p1();
    void thread_tmp_57_fu_430_p3();
    void thread_tmp_58_fu_456_p3();
    void thread_tmp_59_fu_484_p1();
    void thread_tmp_60_fu_494_p3();
    void thread_tmp_61_fu_502_p3();
    void thread_tmp_62_fu_510_p1();
    void thread_tmp_63_fu_520_p3();
    void thread_tmp_64_fu_528_p3();
    void thread_tmp_65_fu_536_p1();
    void thread_tmp_66_fu_580_p2();
    void thread_tmp_67_fu_586_p1();
    void thread_tmp_68_fu_618_p2();
    void thread_tmp_69_fu_624_p1();
    void thread_tmp_70_fu_666_p4();
    void thread_tmp_71_fu_692_p3();
    void thread_tmp_72_fu_718_p3();
    void thread_tmp_73_fu_798_p1();
    void thread_tmp_76_fu_1054_p1();
    void thread_tmp_77_fu_1058_p1();
    void thread_tmp_78_fu_1075_p1();
    void thread_tmp_79_fu_1094_p1();
    void thread_tmp_7_fu_424_p2();
    void thread_tmp_80_fu_1107_p1();
    void thread_tmp_i_i_fu_1205_p2();
    void thread_tmp_s_fu_374_p2();
    void thread_x_fu_790_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
