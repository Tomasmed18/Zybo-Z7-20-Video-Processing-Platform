// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        p_src_data_stream_V_dout,
        p_src_data_stream_V_empty_n,
        p_src_data_stream_V_read,
        p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n,
        p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n,
        p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n,
        p_dst_data_stream_2_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] p_src_data_stream_V_dout;
input   p_src_data_stream_V_empty_n;
output   p_src_data_stream_V_read;
output  [7:0] p_dst_data_stream_0_V_din;
input   p_dst_data_stream_0_V_full_n;
output   p_dst_data_stream_0_V_write;
output  [7:0] p_dst_data_stream_1_V_din;
input   p_dst_data_stream_1_V_full_n;
output   p_dst_data_stream_1_V_write;
output  [7:0] p_dst_data_stream_2_V_din;
input   p_dst_data_stream_2_V_full_n;
output   p_dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_0_V_write;
reg p_dst_data_stream_1_V_write;
reg p_dst_data_stream_2_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    p_src_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_197;
reg    p_dst_data_stream_0_V_blk_n;
reg    p_dst_data_stream_1_V_blk_n;
reg    p_dst_data_stream_2_V_blk_n;
reg   [10:0] j_reg_153;
wire   [0:0] exitcond1_fu_164_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] i_1_fu_170_p2;
reg   [9:0] i_1_reg_192;
wire   [0:0] exitcond_fu_176_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] j_1_fu_182_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] i_reg_142;
reg    ap_block_state1;
wire    ap_CS_fsm_state5;
reg    ap_block_pp0_stage0_01001;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond1_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond1_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((exitcond1_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_142 <= i_1_reg_192;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_142 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_176_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_reg_153 <= j_1_fu_182_p2;
    end else if (((exitcond1_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_153 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_reg_197 <= exitcond_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_192 <= i_1_fu_170_p2;
    end
end

always @ (*) begin
    if ((exitcond_fu_176_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst_data_stream_0_V_blk_n = p_dst_data_stream_0_V_full_n;
    end else begin
        p_dst_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_0_V_write = 1'b1;
    end else begin
        p_dst_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst_data_stream_1_V_blk_n = p_dst_data_stream_1_V_full_n;
    end else begin
        p_dst_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_1_V_write = 1'b1;
    end else begin
        p_dst_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst_data_stream_2_V_blk_n = p_dst_data_stream_2_V_full_n;
    end else begin
        p_dst_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_2_V_write = 1'b1;
    end else begin
        p_dst_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_V_blk_n = p_src_data_stream_V_empty_n;
    end else begin
        p_src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_V_read = 1'b1;
    end else begin
        p_src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_fu_176_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_fu_176_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_0_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_src_data_stream_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_0_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_src_data_stream_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_0_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_src_data_stream_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_dst_data_stream_0_V_full_n == 1'b0)) | ((exitcond_reg_197 == 1'd0) & (p_src_data_stream_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond1_fu_164_p2 = ((i_reg_142 == 10'd720) ? 1'b1 : 1'b0);

assign exitcond_fu_176_p2 = ((j_reg_153 == 11'd1280) ? 1'b1 : 1'b0);

assign i_1_fu_170_p2 = (i_reg_142 + 10'd1);

assign j_1_fu_182_p2 = (j_reg_153 + 11'd1);

assign p_dst_data_stream_0_V_din = p_src_data_stream_V_dout;

assign p_dst_data_stream_1_V_din = p_src_data_stream_V_dout;

assign p_dst_data_stream_2_V_din = p_src_data_stream_V_dout;

assign start_out = real_start;

endmodule //CvtColor
