-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Oct 13 22:42:29 2025
-- Host        : anbera running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/yanha/Desktop/Vivado
--               project/project_1_3_mux4x1.block_design/project_1_3_mux4x1.block_design.srcs/sources_1/bd/mux4x1_block/ip/mux4x1_block_notgate_2_0_0/mux4x1_block_notgate_2_0_0_sim_netlist.vhdl}
-- Design      : mux4x1_block_notgate_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_block_notgate_2_0_0_notgate_2 is
  port (
    in1 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux4x1_block_notgate_2_0_0_notgate_2 : entity is "notgate_2";
end mux4x1_block_notgate_2_0_0_notgate_2;

architecture STRUCTURE of mux4x1_block_notgate_2_0_0_notgate_2 is
begin
out1_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in1,
      O => out1
    );
out2_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in2,
      O => out2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_block_notgate_2_0_0 is
  port (
    in1 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux4x1_block_notgate_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux4x1_block_notgate_2_0_0 : entity is "mux4x1_block_notgate_2_0_0,notgate_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux4x1_block_notgate_2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux4x1_block_notgate_2_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux4x1_block_notgate_2_0_0 : entity is "notgate_2,Vivado 2018.3";
end mux4x1_block_notgate_2_0_0;

architecture STRUCTURE of mux4x1_block_notgate_2_0_0 is
begin
inst: entity work.mux4x1_block_notgate_2_0_0_notgate_2
     port map (
      in1 => in1,
      in2 => in2,
      out1 => out1,
      out2 => out2
    );
end STRUCTURE;
