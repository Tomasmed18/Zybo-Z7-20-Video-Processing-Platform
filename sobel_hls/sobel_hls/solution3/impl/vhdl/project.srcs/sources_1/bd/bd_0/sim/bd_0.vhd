--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Jun 26 10:17:49 2019
--Host        : NotebookTomasMedina running 64-bit major release  (build 9200)
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    INPUT_STREAM_TVALID : in STD_LOGIC;
    INPUT_STREAM_TREADY : out STD_LOGIC;
    INPUT_STREAM_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    INPUT_STREAM_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    INPUT_STREAM_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_STREAM_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TVALID : out STD_LOGIC;
    OUTPUT_STREAM_TREADY : in STD_LOGIC;
    OUTPUT_STREAM_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    OUTPUT_STREAM_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );
  end component bd_0_hls_inst_0;
  signal INPUT_STREAM_0_1_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal INPUT_STREAM_0_1_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal INPUT_STREAM_0_1_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal INPUT_STREAM_0_1_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal INPUT_STREAM_0_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal INPUT_STREAM_0_1_TREADY : STD_LOGIC;
  signal INPUT_STREAM_0_1_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal INPUT_STREAM_0_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal INPUT_STREAM_0_1_TVALID : STD_LOGIC;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_ctrl_0_1_done : STD_LOGIC;
  signal ap_ctrl_0_1_idle : STD_LOGIC;
  signal ap_ctrl_0_1_ready : STD_LOGIC;
  signal ap_ctrl_0_1_start : STD_LOGIC;
  signal ap_rst_n_0_1 : STD_LOGIC;
  signal hls_inst_OUTPUT_STREAM_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal hls_inst_OUTPUT_STREAM_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_OUTPUT_STREAM_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_OUTPUT_STREAM_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hls_inst_OUTPUT_STREAM_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_OUTPUT_STREAM_TREADY : STD_LOGIC;
  signal hls_inst_OUTPUT_STREAM_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hls_inst_OUTPUT_STREAM_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_OUTPUT_STREAM_TVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of INPUT_STREAM_tready : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tvalid : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tready : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tvalid : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF INPUT_STREAM:OUTPUT_STREAM, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_ctrl_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tdata : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_PARAMETER of INPUT_STREAM_tdata : signal is "XIL_INTERFACENAME INPUT_STREAM, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tdest : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tid : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tkeep : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tlast : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tstrb : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of INPUT_STREAM_tuser : signal is "xilinx.com:interface:axis:1.0 INPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tdata : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_PARAMETER of OUTPUT_STREAM_tdata : signal is "XIL_INTERFACENAME OUTPUT_STREAM, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tdest : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tid : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tkeep : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tlast : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tstrb : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
  attribute X_INTERFACE_INFO of OUTPUT_STREAM_tuser : signal is "xilinx.com:interface:axis:1.0 OUTPUT_STREAM ";
begin
  INPUT_STREAM_0_1_TDATA(23 downto 0) <= INPUT_STREAM_tdata(23 downto 0);
  INPUT_STREAM_0_1_TDEST(0) <= INPUT_STREAM_tdest(0);
  INPUT_STREAM_0_1_TID(0) <= INPUT_STREAM_tid(0);
  INPUT_STREAM_0_1_TKEEP(2 downto 0) <= INPUT_STREAM_tkeep(2 downto 0);
  INPUT_STREAM_0_1_TLAST(0) <= INPUT_STREAM_tlast(0);
  INPUT_STREAM_0_1_TSTRB(2 downto 0) <= INPUT_STREAM_tstrb(2 downto 0);
  INPUT_STREAM_0_1_TUSER(0) <= INPUT_STREAM_tuser(0);
  INPUT_STREAM_0_1_TVALID <= INPUT_STREAM_tvalid;
  INPUT_STREAM_tready <= INPUT_STREAM_0_1_TREADY;
  OUTPUT_STREAM_tdata(23 downto 0) <= hls_inst_OUTPUT_STREAM_TDATA(23 downto 0);
  OUTPUT_STREAM_tdest(0) <= hls_inst_OUTPUT_STREAM_TDEST(0);
  OUTPUT_STREAM_tid(0) <= hls_inst_OUTPUT_STREAM_TID(0);
  OUTPUT_STREAM_tkeep(2 downto 0) <= hls_inst_OUTPUT_STREAM_TKEEP(2 downto 0);
  OUTPUT_STREAM_tlast(0) <= hls_inst_OUTPUT_STREAM_TLAST(0);
  OUTPUT_STREAM_tstrb(2 downto 0) <= hls_inst_OUTPUT_STREAM_TSTRB(2 downto 0);
  OUTPUT_STREAM_tuser(0) <= hls_inst_OUTPUT_STREAM_TUSER(0);
  OUTPUT_STREAM_tvalid <= hls_inst_OUTPUT_STREAM_TVALID;
  ap_clk_0_1 <= ap_clk;
  ap_ctrl_0_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_0_1_done;
  ap_ctrl_idle <= ap_ctrl_0_1_idle;
  ap_ctrl_ready <= ap_ctrl_0_1_ready;
  ap_rst_n_0_1 <= ap_rst_n;
  hls_inst_OUTPUT_STREAM_TREADY <= OUTPUT_STREAM_tready;
hls_inst: component bd_0_hls_inst_0
     port map (
      INPUT_STREAM_TDATA(23 downto 0) => INPUT_STREAM_0_1_TDATA(23 downto 0),
      INPUT_STREAM_TDEST(0) => INPUT_STREAM_0_1_TDEST(0),
      INPUT_STREAM_TID(0) => INPUT_STREAM_0_1_TID(0),
      INPUT_STREAM_TKEEP(2 downto 0) => INPUT_STREAM_0_1_TKEEP(2 downto 0),
      INPUT_STREAM_TLAST(0) => INPUT_STREAM_0_1_TLAST(0),
      INPUT_STREAM_TREADY => INPUT_STREAM_0_1_TREADY,
      INPUT_STREAM_TSTRB(2 downto 0) => INPUT_STREAM_0_1_TSTRB(2 downto 0),
      INPUT_STREAM_TUSER(0) => INPUT_STREAM_0_1_TUSER(0),
      INPUT_STREAM_TVALID => INPUT_STREAM_0_1_TVALID,
      OUTPUT_STREAM_TDATA(23 downto 0) => hls_inst_OUTPUT_STREAM_TDATA(23 downto 0),
      OUTPUT_STREAM_TDEST(0) => hls_inst_OUTPUT_STREAM_TDEST(0),
      OUTPUT_STREAM_TID(0) => hls_inst_OUTPUT_STREAM_TID(0),
      OUTPUT_STREAM_TKEEP(2 downto 0) => hls_inst_OUTPUT_STREAM_TKEEP(2 downto 0),
      OUTPUT_STREAM_TLAST(0) => hls_inst_OUTPUT_STREAM_TLAST(0),
      OUTPUT_STREAM_TREADY => hls_inst_OUTPUT_STREAM_TREADY,
      OUTPUT_STREAM_TSTRB(2 downto 0) => hls_inst_OUTPUT_STREAM_TSTRB(2 downto 0),
      OUTPUT_STREAM_TUSER(0) => hls_inst_OUTPUT_STREAM_TUSER(0),
      OUTPUT_STREAM_TVALID => hls_inst_OUTPUT_STREAM_TVALID,
      ap_clk => ap_clk_0_1,
      ap_done => ap_ctrl_0_1_done,
      ap_idle => ap_ctrl_0_1_idle,
      ap_ready => ap_ctrl_0_1_ready,
      ap_rst_n => ap_rst_n_0_1,
      ap_start => ap_ctrl_0_1_start
    );
end STRUCTURE;
