-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Mar  1 12:40:54 2019
-- Host        : elodlt-ro running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_DVIClocking_0_0_sim_netlist.vhdl
-- Design      : system_DVIClocking_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
  port (
    aLockedOut : out STD_LOGIC;
    CLR : out STD_LOGIC;
    PixelClk : in STD_LOGIC;
    aLockedIn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
  signal \^clr\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  CLR <= \^clr\;
  aLockedOut <= oSyncStages(1);
PixelClkBuffer_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aLockedIn,
      O => \^clr\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      CLR => \^clr\,
      D => '1',
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      CLR => \^clr\,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
  port (
    aLockedOut : out STD_LOGIC;
    CLR : out STD_LOGIC;
    PixelClk : in STD_LOGIC;
    aLockedIn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync
     port map (
      CLR => CLR,
      PixelClk => PixelClk,
      aLockedIn => aLockedIn,
      aLockedOut => aLockedOut
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DVIClocking is
  port (
    aLockedOut : out STD_LOGIC;
    SerialClk : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    PixelClk5X : in STD_LOGIC;
    aLockedIn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DVIClocking;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DVIClocking is
  signal CLR : STD_LOGIC;
  signal \^pixelclk\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of PixelClkBuffer : label is "PRIMITIVE";
  attribute box_type of SerialClkBuffer : label is "PRIMITIVE";
begin
  PixelClk <= \^pixelclk\;
PixelClkBuffer: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "5",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => CLR,
      I => PixelClk5X,
      O => \^pixelclk\
    );
SerialClkBuffer: unisim.vcomponents.BUFIO
     port map (
      I => PixelClk5X,
      O => SerialClk
    );
SyncLockedOut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge
     port map (
      CLR => CLR,
      PixelClk => \^pixelclk\,
      aLockedIn => aLockedIn,
      aLockedOut => aLockedOut
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    PixelClk5X : in STD_LOGIC;
    PixelClk : out STD_LOGIC;
    SerialClk : out STD_LOGIC;
    aLockedIn : in STD_LOGIC;
    aLockedOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_DVIClocking_0_0,DVIClocking,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DVIClocking,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DVIClocking
     port map (
      PixelClk => PixelClk,
      PixelClk5X => PixelClk5X,
      SerialClk => SerialClk,
      aLockedIn => aLockedIn,
      aLockedOut => aLockedOut
    );
end STRUCTURE;
