--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Jun 26 10:17:49 2019
--Host        : NotebookTomasMedina running 64-bit major release  (build 9200)
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    INPUT_STREAM_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    INPUT_STREAM_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tready : out STD_LOGIC;
    INPUT_STREAM_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tvalid : in STD_LOGIC;
    OUTPUT_STREAM_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    OUTPUT_STREAM_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tready : in STD_LOGIC;
    OUTPUT_STREAM_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tvalid : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    INPUT_STREAM_tvalid : in STD_LOGIC;
    INPUT_STREAM_tready : out STD_LOGIC;
    INPUT_STREAM_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    INPUT_STREAM_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tvalid : out STD_LOGIC;
    OUTPUT_STREAM_tready : in STD_LOGIC;
    OUTPUT_STREAM_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    OUTPUT_STREAM_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_ctrl_start : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      INPUT_STREAM_tdata(23 downto 0) => INPUT_STREAM_tdata(23 downto 0),
      INPUT_STREAM_tdest(0) => INPUT_STREAM_tdest(0),
      INPUT_STREAM_tid(0) => INPUT_STREAM_tid(0),
      INPUT_STREAM_tkeep(2 downto 0) => INPUT_STREAM_tkeep(2 downto 0),
      INPUT_STREAM_tlast(0) => INPUT_STREAM_tlast(0),
      INPUT_STREAM_tready => INPUT_STREAM_tready,
      INPUT_STREAM_tstrb(2 downto 0) => INPUT_STREAM_tstrb(2 downto 0),
      INPUT_STREAM_tuser(0) => INPUT_STREAM_tuser(0),
      INPUT_STREAM_tvalid => INPUT_STREAM_tvalid,
      OUTPUT_STREAM_tdata(23 downto 0) => OUTPUT_STREAM_tdata(23 downto 0),
      OUTPUT_STREAM_tdest(0) => OUTPUT_STREAM_tdest(0),
      OUTPUT_STREAM_tid(0) => OUTPUT_STREAM_tid(0),
      OUTPUT_STREAM_tkeep(2 downto 0) => OUTPUT_STREAM_tkeep(2 downto 0),
      OUTPUT_STREAM_tlast(0) => OUTPUT_STREAM_tlast(0),
      OUTPUT_STREAM_tready => OUTPUT_STREAM_tready,
      OUTPUT_STREAM_tstrb(2 downto 0) => OUTPUT_STREAM_tstrb(2 downto 0),
      OUTPUT_STREAM_tuser(0) => OUTPUT_STREAM_tuser(0),
      OUTPUT_STREAM_tvalid => OUTPUT_STREAM_tvalid,
      ap_clk => ap_clk,
      ap_ctrl_done => ap_ctrl_done,
      ap_ctrl_idle => ap_ctrl_idle,
      ap_ctrl_ready => ap_ctrl_ready,
      ap_ctrl_start => ap_ctrl_start,
      ap_rst_n => ap_rst_n
    );
end STRUCTURE;
