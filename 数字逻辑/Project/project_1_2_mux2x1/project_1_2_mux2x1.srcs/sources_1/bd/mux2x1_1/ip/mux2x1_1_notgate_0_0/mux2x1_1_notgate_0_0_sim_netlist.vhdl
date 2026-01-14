-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Oct 13 20:39:02 2025
-- Host        : anbera running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/yanha/Desktop/Vivado
--               project/project_1_2_mux2x1/project_1_2_mux2x1.srcs/sources_1/bd/mux2x1_1/ip/mux2x1_1_notgate_0_0/mux2x1_1_notgate_0_0_sim_netlist.vhdl}
-- Design      : mux2x1_1_notgate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux2x1_1_notgate_0_0_notgate is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    y : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux2x1_1_notgate_0_0_notgate : entity is "notgate";
  attribute WIDTH : integer;
  attribute WIDTH of mux2x1_1_notgate_0_0_notgate : entity is 1;
end mux2x1_1_notgate_0_0_notgate;

architecture STRUCTURE of mux2x1_1_notgate_0_0_notgate is
begin
\y[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(0),
      O => y(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux2x1_1_notgate_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    y : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux2x1_1_notgate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux2x1_1_notgate_0_0 : entity is "mux2x1_1_notgate_0_0,notgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux2x1_1_notgate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux2x1_1_notgate_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux2x1_1_notgate_0_0 : entity is "notgate,Vivado 2018.3";
end mux2x1_1_notgate_0_0;

architecture STRUCTURE of mux2x1_1_notgate_0_0 is
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 1;
begin
inst: entity work.mux2x1_1_notgate_0_0_notgate
     port map (
      a(0) => a(0),
      y(0) => y(0)
    );
end STRUCTURE;
