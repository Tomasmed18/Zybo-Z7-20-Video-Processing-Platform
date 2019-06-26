-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Mar  1 12:40:54 2019
-- Host        : elodlt-ro running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/git/Zybo-Z7-20-pcam-5c/proj/Zybo-Z7-20-pcam-5c.srcs/sources_1/bd/system/ip/system_DVIClocking_0_0/system_DVIClocking_0_0_stub.vhdl
-- Design      : system_DVIClocking_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_DVIClocking_0_0 is
  Port ( 
    PixelClk5X : in STD_LOGIC;
    PixelClk : out STD_LOGIC;
    SerialClk : out STD_LOGIC;
    aLockedIn : in STD_LOGIC;
    aLockedOut : out STD_LOGIC
  );

end system_DVIClocking_0_0;

architecture stub of system_DVIClocking_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PixelClk5X,PixelClk,SerialClk,aLockedIn,aLockedOut";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DVIClocking,Vivado 2018.2";
begin
end;
