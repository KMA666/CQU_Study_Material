-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Oct 13 22:42:29 2025
-- Host        : anbera running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/yanha/Desktop/Vivado
--               project/project_1_3_mux4x1.block_design/project_1_3_mux4x1.block_design.srcs/sources_1/bd/mux4x1_block/ip/mux4x1_block_andgate_5_0/mux4x1_block_andgate_5_0_sim_netlist.vhdl}
-- Design      : mux4x1_block_andgate_5_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_block_andgate_5_0_andgate is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 0 to 0 );
    c : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux4x1_block_andgate_5_0_andgate : entity is "andgate";
  attribute WIDTH : integer;
  attribute WIDTH of mux4x1_block_andgate_5_0_andgate : entity is 1;
end mux4x1_block_andgate_5_0_andgate;

architecture STRUCTURE of mux4x1_block_andgate_5_0_andgate is
begin
\c[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => c(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_block_andgate_5_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 0 to 0 );
    c : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux4x1_block_andgate_5_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux4x1_block_andgate_5_0 : entity is "mux4x1_block_andgate_5_0,andgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux4x1_block_andgate_5_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux4x1_block_andgate_5_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux4x1_block_andgate_5_0 : entity is "andgate,Vivado 2018.3";
end mux4x1_block_andgate_5_0;

architecture STRUCTURE of mux4x1_block_andgate_5_0 is
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 1;
begin
inst: entity work.mux4x1_block_andgate_5_0_andgate
     port map (
      a(0) => a(0),
      b(0) => b(0),
      c(0) => c(0)
    );
end STRUCTURE;
