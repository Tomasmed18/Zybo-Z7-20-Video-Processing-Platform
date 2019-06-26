-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CvtColor is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    p_src_rows_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
    p_src_rows_V_empty_n : IN STD_LOGIC;
    p_src_rows_V_read : OUT STD_LOGIC;
    p_src_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    p_src_cols_V_empty_n : IN STD_LOGIC;
    p_src_cols_V_read : OUT STD_LOGIC;
    p_src_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_data_stream_V_empty_n : IN STD_LOGIC;
    p_src_data_stream_V_read : OUT STD_LOGIC;
    p_dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_data_stream_0_V_full_n : IN STD_LOGIC;
    p_dst_data_stream_0_V_write : OUT STD_LOGIC;
    p_dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_data_stream_1_V_full_n : IN STD_LOGIC;
    p_dst_data_stream_1_V_write : OUT STD_LOGIC;
    p_dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_data_stream_2_V_full_n : IN STD_LOGIC;
    p_dst_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of CvtColor is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal p_src_rows_V_blk_n : STD_LOGIC;
    signal p_src_cols_V_blk_n : STD_LOGIC;
    signal p_src_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_69_i_reg_253 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_dst_data_stream_0_V_blk_n : STD_LOGIC;
    signal p_dst_data_stream_1_V_blk_n : STD_LOGIC;
    signal p_dst_data_stream_2_V_blk_n : STD_LOGIC;
    signal j_i_reg_193 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_src_cols_V_read_reg_234 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal p_src_rows_V_read_reg_239 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_i_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_213_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_reg_248 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_69_i_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_228_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_i_reg_182 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_cast_cast_i_fu_204_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal j_cast_cast_i_fu_219_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_208_p2 = ap_const_lv1_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((tmp_i_fu_208_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((tmp_i_fu_208_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_i_reg_182_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_i_reg_182 <= i_reg_248;
            elsif ((not(((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_i_reg_182 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    j_i_reg_193_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_69_i_fu_223_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_i_reg_193 <= j_fu_228_p2;
            elsif (((tmp_i_fu_208_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_i_reg_193 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_248 <= i_fu_213_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                p_src_cols_V_read_reg_234 <= p_src_cols_V_dout;
                p_src_rows_V_read_reg_239 <= p_src_rows_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_69_i_reg_253 <= tmp_69_i_fu_223_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_src_rows_V_empty_n, p_src_cols_V_empty_n, tmp_i_fu_208_p2, ap_CS_fsm_state2, tmp_69_i_fu_223_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_208_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_69_i_fu_223_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_69_i_fu_223_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(p_src_data_stream_V_empty_n, p_dst_data_stream_0_V_full_n, p_dst_data_stream_1_V_full_n, p_dst_data_stream_2_V_full_n, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_2_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_1_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_0_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(p_src_data_stream_V_empty_n, p_dst_data_stream_0_V_full_n, p_dst_data_stream_1_V_full_n, p_dst_data_stream_2_V_full_n, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_2_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_1_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_0_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(p_src_data_stream_V_empty_n, p_dst_data_stream_0_V_full_n, p_dst_data_stream_1_V_full_n, p_dst_data_stream_2_V_full_n, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_2_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_1_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_0_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, p_src_rows_V_empty_n, p_src_cols_V_empty_n)
    begin
                ap_block_state1 <= ((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(p_src_data_stream_V_empty_n, p_dst_data_stream_0_V_full_n, p_dst_data_stream_1_V_full_n, p_dst_data_stream_2_V_full_n, tmp_69_i_reg_253)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_2_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_1_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_dst_data_stream_0_V_full_n = ap_const_logic_0)) or ((tmp_69_i_reg_253 = ap_const_lv1_1) and (p_src_data_stream_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(tmp_69_i_fu_223_p2)
    begin
        if ((tmp_69_i_fu_223_p2 = ap_const_lv1_0)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, tmp_i_fu_208_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_208_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    i_cast_cast_i_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_i_reg_182),11));
    i_fu_213_p2 <= std_logic_vector(unsigned(i_i_reg_182) + unsigned(ap_const_lv10_1));

    internal_ap_ready_assign_proc : process(tmp_i_fu_208_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_208_p2 = ap_const_lv1_0))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_cast_cast_i_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_i_reg_193),12));
    j_fu_228_p2 <= std_logic_vector(unsigned(j_i_reg_193) + unsigned(ap_const_lv11_1));

    p_dst_data_stream_0_V_blk_n_assign_proc : process(p_dst_data_stream_0_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_69_i_reg_253)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst_data_stream_0_V_blk_n <= p_dst_data_stream_0_V_full_n;
        else 
            p_dst_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_data_stream_0_V_din <= p_src_data_stream_V_dout;

    p_dst_data_stream_0_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_data_stream_0_V_write <= ap_const_logic_1;
        else 
            p_dst_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_data_stream_1_V_blk_n_assign_proc : process(p_dst_data_stream_1_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_69_i_reg_253)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst_data_stream_1_V_blk_n <= p_dst_data_stream_1_V_full_n;
        else 
            p_dst_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_data_stream_1_V_din <= p_src_data_stream_V_dout;

    p_dst_data_stream_1_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_data_stream_1_V_write <= ap_const_logic_1;
        else 
            p_dst_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_data_stream_2_V_blk_n_assign_proc : process(p_dst_data_stream_2_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_69_i_reg_253)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst_data_stream_2_V_blk_n <= p_dst_data_stream_2_V_full_n;
        else 
            p_dst_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_data_stream_2_V_din <= p_src_data_stream_V_dout;

    p_dst_data_stream_2_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_data_stream_2_V_write <= ap_const_logic_1;
        else 
            p_dst_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    p_src_cols_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_cols_V_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_cols_V_blk_n <= p_src_cols_V_empty_n;
        else 
            p_src_cols_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_cols_V_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_rows_V_empty_n, p_src_cols_V_empty_n)
    begin
        if ((not(((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_cols_V_read <= ap_const_logic_1;
        else 
            p_src_cols_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_src_data_stream_V_blk_n_assign_proc : process(p_src_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_69_i_reg_253)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_src_data_stream_V_blk_n <= p_src_data_stream_V_empty_n;
        else 
            p_src_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_69_i_reg_253, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_69_i_reg_253 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_src_data_stream_V_read <= ap_const_logic_1;
        else 
            p_src_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_src_rows_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_rows_V_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_rows_V_blk_n <= p_src_rows_V_empty_n;
        else 
            p_src_rows_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_rows_V_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_rows_V_empty_n, p_src_cols_V_empty_n)
    begin
        if ((not(((p_src_cols_V_empty_n = ap_const_logic_0) or (p_src_rows_V_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_rows_V_read <= ap_const_logic_1;
        else 
            p_src_rows_V_read <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_69_i_fu_223_p2 <= "1" when (signed(j_cast_cast_i_fu_219_p1) < signed(p_src_cols_V_read_reg_234)) else "0";
    tmp_i_fu_208_p2 <= "1" when (signed(i_cast_cast_i_fu_204_p1) < signed(p_src_rows_V_read_reg_239)) else "0";
end behav;
