-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Feb  7 22:16:22 2021
-- Host        : DESKTOP-GN5VI1U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Stopwatch.vhd
-- Design      : Stopwatch
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity muxdivider is
  port (
    AN_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
end muxdivider;

architecture STRUCTURE of muxdivider is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AN_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \AN_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AN_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of dp_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outside_couter_signal[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \outside_couter_signal[1]_i_1\ : label is "soft_lutpair2";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\AN_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(0)
    );
\AN_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => AN_OBUF(2)
    );
\AN_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(3)
    );
dp_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(1)
    );
\outside_couter_signal[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_2_out(0)
    );
\outside_couter_signal[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_2_out(1)
    );
\outside_couter_signal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_out(0),
      Q => \^q\(0),
      R => '0'
    );
\outside_couter_signal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_out(1),
      Q => \^q\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sixteen_bit_counter is
  port (
    DISP0_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_stop_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sixteen_bit_counter;

architecture STRUCTURE of sixteen_bit_counter is
  signal \DISP0_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \DISP0_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Q_INT1[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT1[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT1[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT1[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT1_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_INT20 : STD_LOGIC;
  signal \Q_INT2[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT2[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT2[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT2[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT2[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT2_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_INT30 : STD_LOGIC;
  signal \Q_INT3[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT3[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT3[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT3[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT3_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_INT40 : STD_LOGIC;
  signal \Q_INT4[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT4_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cathodes : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal s_1 : STD_LOGIC_VECTOR ( 5 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DISP0_OBUF[0]_inst_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DISP0_OBUF[0]_inst_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DISP0_OBUF[1]_inst_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DISP0_OBUF[1]_inst_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DISP0_OBUF[2]_inst_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DISP0_OBUF[2]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DISP0_OBUF[3]_inst_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DISP0_OBUF[3]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DISP0_OBUF[4]_inst_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DISP0_OBUF[4]_inst_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DISP0_OBUF[5]_inst_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DISP0_OBUF[5]_inst_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DISP0_OBUF[6]_inst_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DISP0_OBUF[6]_inst_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q_INT1[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q_INT1[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_INT1[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q_INT2[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q_INT2[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_INT2[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Q_INT2[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q_INT2[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_INT3[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q_INT3[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q_INT3[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q_INT3[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q_INT4[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q_INT4[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q_INT4[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q_INT4[3]_i_2\ : label is "soft_lutpair5";
begin
\DISP0_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[0]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[0]_inst_i_3_n_0\,
      O => DISP0_OBUF(0),
      S => Q(0)
    );
\DISP0_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0091FFFF00910000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(2),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[0]_inst_i_4_n_0\,
      O => \DISP0_OBUF[0]_inst_i_2_n_0\
    );
\DISP0_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0091FFFF00910000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(1),
      I1 => \Q_INT4_reg__0\(2),
      I2 => \Q_INT4_reg__0\(0),
      I3 => \Q_INT4_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[0]_inst_i_5_n_0\,
      O => \DISP0_OBUF[0]_inst_i_3_n_0\
    );
\DISP0_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(2),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(3),
      O => \DISP0_OBUF[0]_inst_i_4_n_0\
    );
\DISP0_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(2),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(3),
      O => \DISP0_OBUF[0]_inst_i_5_n_0\
    );
\DISP0_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[1]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[1]_inst_i_3_n_0\,
      O => DISP0_OBUF(1),
      S => Q(0)
    );
\DISP0_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008EFFFF008E0000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(0),
      I1 => \Q_INT3_reg__0\(1),
      I2 => \Q_INT3_reg__0\(2),
      I3 => \Q_INT3_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[1]_inst_i_4_n_0\,
      O => \DISP0_OBUF[1]_inst_i_2_n_0\
    );
\DISP0_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008EFFFF008E0000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(0),
      I1 => \Q_INT4_reg__0\(1),
      I2 => \Q_INT4_reg__0\(2),
      I3 => \Q_INT4_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[1]_inst_i_5_n_0\,
      O => \DISP0_OBUF[1]_inst_i_3_n_0\
    );
\DISP0_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \Q_INT1_reg__0\(0),
      I1 => \Q_INT1_reg__0\(1),
      I2 => \Q_INT1_reg__0\(2),
      I3 => \Q_INT1_reg__0\(3),
      O => \DISP0_OBUF[1]_inst_i_4_n_0\
    );
\DISP0_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \Q_INT2_reg__0\(0),
      I1 => \Q_INT2_reg__0\(1),
      I2 => \Q_INT2_reg__0\(2),
      I3 => \Q_INT2_reg__0\(3),
      O => \DISP0_OBUF[1]_inst_i_5_n_0\
    );
\DISP0_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[2]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[2]_inst_i_3_n_0\,
      O => DISP0_OBUF(2),
      S => Q(0)
    );
\DISP0_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5710FFFF57100000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(3),
      I1 => \Q_INT3_reg__0\(1),
      I2 => \Q_INT3_reg__0\(2),
      I3 => \Q_INT3_reg__0\(0),
      I4 => Q(1),
      I5 => cathodes(2),
      O => \DISP0_OBUF[2]_inst_i_2_n_0\
    );
\DISP0_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5710FFFF57100000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(3),
      I1 => \Q_INT4_reg__0\(1),
      I2 => \Q_INT4_reg__0\(2),
      I3 => \Q_INT4_reg__0\(0),
      I4 => Q(1),
      I5 => s_1(2),
      O => \DISP0_OBUF[2]_inst_i_3_n_0\
    );
\DISP0_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \Q_INT1_reg__0\(3),
      I1 => \Q_INT1_reg__0\(1),
      I2 => \Q_INT1_reg__0\(2),
      I3 => \Q_INT1_reg__0\(0),
      O => cathodes(2)
    );
\DISP0_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \Q_INT2_reg__0\(3),
      I1 => \Q_INT2_reg__0\(1),
      I2 => \Q_INT2_reg__0\(2),
      I3 => \Q_INT2_reg__0\(0),
      O => s_1(2)
    );
\DISP0_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[3]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[3]_inst_i_3_n_0\,
      O => DISP0_OBUF(3),
      S => Q(0)
    );
\DISP0_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABCFFFFEABC0000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(3),
      I1 => \Q_INT3_reg__0\(2),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(1),
      I4 => Q(1),
      I5 => cathodes(3),
      O => \DISP0_OBUF[3]_inst_i_2_n_0\
    );
\DISP0_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABCFFFFEABC0000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(3),
      I1 => \Q_INT4_reg__0\(2),
      I2 => \Q_INT4_reg__0\(0),
      I3 => \Q_INT4_reg__0\(1),
      I4 => Q(1),
      I5 => s_1(3),
      O => \DISP0_OBUF[3]_inst_i_3_n_0\
    );
\DISP0_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABC"
    )
        port map (
      I0 => \Q_INT1_reg__0\(3),
      I1 => \Q_INT1_reg__0\(2),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(1),
      O => cathodes(3)
    );
\DISP0_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABC"
    )
        port map (
      I0 => \Q_INT2_reg__0\(3),
      I1 => \Q_INT2_reg__0\(2),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(1),
      O => s_1(3)
    );
\DISP0_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[4]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[4]_inst_i_3_n_0\,
      O => DISP0_OBUF(4),
      S => Q(0)
    );
\DISP0_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0FFFFAAB00000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(3),
      I1 => \Q_INT3_reg__0\(0),
      I2 => \Q_INT3_reg__0\(1),
      I3 => \Q_INT3_reg__0\(2),
      I4 => Q(1),
      I5 => cathodes(4),
      O => \DISP0_OBUF[4]_inst_i_2_n_0\
    );
\DISP0_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0FFFFAAB00000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(3),
      I1 => \Q_INT4_reg__0\(0),
      I2 => \Q_INT4_reg__0\(1),
      I3 => \Q_INT4_reg__0\(2),
      I4 => Q(1),
      I5 => s_1(4),
      O => \DISP0_OBUF[4]_inst_i_3_n_0\
    );
\DISP0_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => \Q_INT1_reg__0\(3),
      I1 => \Q_INT1_reg__0\(0),
      I2 => \Q_INT1_reg__0\(1),
      I3 => \Q_INT1_reg__0\(2),
      O => cathodes(4)
    );
\DISP0_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => \Q_INT2_reg__0\(3),
      I1 => \Q_INT2_reg__0\(0),
      I2 => \Q_INT2_reg__0\(1),
      I3 => \Q_INT2_reg__0\(2),
      O => s_1(4)
    );
\DISP0_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[5]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[5]_inst_i_3_n_0\,
      O => DISP0_OBUF(5),
      S => Q(0)
    );
\DISP0_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEC8FFFFAEC80000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(3),
      I1 => \Q_INT3_reg__0\(2),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(1),
      I4 => Q(1),
      I5 => cathodes(5),
      O => \DISP0_OBUF[5]_inst_i_2_n_0\
    );
\DISP0_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEC8FFFFAEC80000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(3),
      I1 => \Q_INT4_reg__0\(2),
      I2 => \Q_INT4_reg__0\(0),
      I3 => \Q_INT4_reg__0\(1),
      I4 => Q(1),
      I5 => s_1(5),
      O => \DISP0_OBUF[5]_inst_i_3_n_0\
    );
\DISP0_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEC8"
    )
        port map (
      I0 => \Q_INT1_reg__0\(3),
      I1 => \Q_INT1_reg__0\(2),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(1),
      O => cathodes(5)
    );
\DISP0_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEC8"
    )
        port map (
      I0 => \Q_INT2_reg__0\(3),
      I1 => \Q_INT2_reg__0\(2),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(1),
      O => s_1(5)
    );
\DISP0_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DISP0_OBUF[6]_inst_i_2_n_0\,
      I1 => \DISP0_OBUF[6]_inst_i_3_n_0\,
      O => DISP0_OBUF(6),
      S => Q(0)
    );
\DISP0_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0034FFFF00340000"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(0),
      I2 => \Q_INT3_reg__0\(2),
      I3 => \Q_INT3_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[6]_inst_i_4_n_0\,
      O => \DISP0_OBUF[6]_inst_i_2_n_0\
    );
\DISP0_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0034FFFF00340000"
    )
        port map (
      I0 => \Q_INT4_reg__0\(1),
      I1 => \Q_INT4_reg__0\(0),
      I2 => \Q_INT4_reg__0\(2),
      I3 => \Q_INT4_reg__0\(3),
      I4 => Q(1),
      I5 => \DISP0_OBUF[6]_inst_i_5_n_0\,
      O => \DISP0_OBUF[6]_inst_i_3_n_0\
    );
\DISP0_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0034"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(0),
      I2 => \Q_INT1_reg__0\(2),
      I3 => \Q_INT1_reg__0\(3),
      O => \DISP0_OBUF[6]_inst_i_4_n_0\
    );
\DISP0_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0034"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(0),
      I2 => \Q_INT2_reg__0\(2),
      I3 => \Q_INT2_reg__0\(3),
      O => \DISP0_OBUF[6]_inst_i_5_n_0\
    );
\Q_INT1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(3),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(2),
      O => \Q_INT1[0]_i_1_n_0\
    );
\Q_INT1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(3),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(2),
      O => \Q_INT1[1]_i_1_n_0\
    );
\Q_INT1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(0),
      I2 => \Q_INT1_reg__0\(2),
      O => \Q_INT1[2]_i_1_n_0\
    );
\Q_INT1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \Q_INT1_reg__0\(1),
      I1 => \Q_INT1_reg__0\(3),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(2),
      O => \Q_INT1[3]_i_1_n_0\
    );
\Q_INT1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => start_stop_IBUF,
      CLR => AR(0),
      D => \Q_INT1[0]_i_1_n_0\,
      Q => \Q_INT1_reg__0\(0)
    );
\Q_INT1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => start_stop_IBUF,
      CLR => AR(0),
      D => \Q_INT1[1]_i_1_n_0\,
      Q => \Q_INT1_reg__0\(1)
    );
\Q_INT1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => start_stop_IBUF,
      CLR => AR(0),
      D => \Q_INT1[2]_i_1_n_0\,
      Q => \Q_INT1_reg__0\(2)
    );
\Q_INT1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => start_stop_IBUF,
      CLR => AR(0),
      D => \Q_INT1[3]_i_1_n_0\,
      Q => \Q_INT1_reg__0\(3)
    );
\Q_INT2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(3),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(2),
      O => \Q_INT2[0]_i_1_n_0\
    );
\Q_INT2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(3),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(2),
      O => \Q_INT2[1]_i_1_n_0\
    );
\Q_INT2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(0),
      I2 => \Q_INT2_reg__0\(2),
      O => \Q_INT2[2]_i_1_n_0\
    );
\Q_INT2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA02000000"
    )
        port map (
      I0 => start_stop_IBUF,
      I1 => \Q_INT1_reg__0\(2),
      I2 => \Q_INT1_reg__0\(0),
      I3 => \Q_INT1_reg__0\(3),
      I4 => \Q_INT1_reg__0\(1),
      I5 => \Q_INT2[3]_i_3_n_0\,
      O => Q_INT20
    );
\Q_INT2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \Q_INT2_reg__0\(1),
      I1 => \Q_INT2_reg__0\(3),
      I2 => \Q_INT2_reg__0\(0),
      I3 => \Q_INT2_reg__0\(2),
      O => \Q_INT2[3]_i_2_n_0\
    );
\Q_INT2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \Q_INT2_reg__0\(2),
      I1 => \Q_INT2_reg__0\(0),
      I2 => \Q_INT2_reg__0\(3),
      I3 => \Q_INT2_reg__0\(1),
      O => \Q_INT2[3]_i_3_n_0\
    );
\Q_INT2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT20,
      CLR => AR(0),
      D => \Q_INT2[0]_i_1_n_0\,
      Q => \Q_INT2_reg__0\(0)
    );
\Q_INT2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT20,
      CLR => AR(0),
      D => \Q_INT2[1]_i_1_n_0\,
      Q => \Q_INT2_reg__0\(1)
    );
\Q_INT2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT20,
      CLR => AR(0),
      D => \Q_INT2[2]_i_1_n_0\,
      Q => \Q_INT2_reg__0\(2)
    );
\Q_INT2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT20,
      CLR => AR(0),
      D => \Q_INT2[3]_i_2_n_0\,
      Q => \Q_INT2_reg__0\(3)
    );
\Q_INT3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(3),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(2),
      O => \Q_INT3[0]_i_1_n_0\
    );
\Q_INT3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(3),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(2),
      O => \Q_INT3[1]_i_1_n_0\
    );
\Q_INT3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(0),
      I2 => \Q_INT3_reg__0\(2),
      O => \Q_INT3[2]_i_1_n_0\
    );
\Q_INT3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888888888888"
    )
        port map (
      I0 => start_stop_IBUF,
      I1 => \Q_INT2[3]_i_3_n_0\,
      I2 => \Q_INT3_reg__0\(2),
      I3 => \Q_INT3_reg__0\(0),
      I4 => \Q_INT3_reg__0\(3),
      I5 => \Q_INT3_reg__0\(1),
      O => Q_INT30
    );
\Q_INT3[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \Q_INT3_reg__0\(1),
      I1 => \Q_INT3_reg__0\(3),
      I2 => \Q_INT3_reg__0\(0),
      I3 => \Q_INT3_reg__0\(2),
      O => \Q_INT3[3]_i_2_n_0\
    );
\Q_INT3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT30,
      CLR => AR(0),
      D => \Q_INT3[0]_i_1_n_0\,
      Q => \Q_INT3_reg__0\(0)
    );
\Q_INT3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT30,
      CLR => AR(0),
      D => \Q_INT3[1]_i_1_n_0\,
      Q => \Q_INT3_reg__0\(1)
    );
\Q_INT3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT30,
      CLR => AR(0),
      D => \Q_INT3[2]_i_1_n_0\,
      Q => \Q_INT3_reg__0\(2)
    );
\Q_INT3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT30,
      CLR => AR(0),
      D => \Q_INT3[3]_i_2_n_0\,
      Q => \Q_INT3_reg__0\(3)
    );
\Q_INT4[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Q_INT4_reg__0\(0),
      O => \Q_INT4[0]_i_1_n_0\
    );
\Q_INT4[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_INT4_reg__0\(0),
      I1 => \Q_INT4_reg__0\(1),
      O => plusOp(1)
    );
\Q_INT4[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Q_INT4_reg__0\(0),
      I1 => \Q_INT4_reg__0\(1),
      I2 => \Q_INT4_reg__0\(2),
      O => plusOp(2)
    );
\Q_INT4[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => start_stop_IBUF,
      I1 => \Q_INT3_reg__0\(1),
      I2 => \Q_INT3_reg__0\(3),
      I3 => \Q_INT3_reg__0\(0),
      I4 => \Q_INT3_reg__0\(2),
      O => Q_INT40
    );
\Q_INT4[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Q_INT4_reg__0\(1),
      I1 => \Q_INT4_reg__0\(0),
      I2 => \Q_INT4_reg__0\(2),
      I3 => \Q_INT4_reg__0\(3),
      O => plusOp(3)
    );
\Q_INT4_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT40,
      CLR => AR(0),
      D => \Q_INT4[0]_i_1_n_0\,
      Q => \Q_INT4_reg__0\(0)
    );
\Q_INT4_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT40,
      CLR => AR(0),
      D => plusOp(1),
      Q => \Q_INT4_reg__0\(1)
    );
\Q_INT4_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT40,
      CLR => AR(0),
      D => plusOp(2),
      Q => \Q_INT4_reg__0\(2)
    );
\Q_INT4_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q_INT40,
      CLR => AR(0),
      D => plusOp(3),
      Q => \Q_INT4_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Stopwatch is
  port (
    clk_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    start_stop : in STD_LOGIC;
    dp : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DISP0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Stopwatch : entity is true;
end Stopwatch;

architecture STRUCTURE of Stopwatch is
  signal AN_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DISP0_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal SR : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TEMP : STD_LOGIC;
  signal TEMP2 : STD_LOGIC;
  signal TEMP2_i_1_n_0 : STD_LOGIC;
  signal TEMP2_reg_n_0 : STD_LOGIC;
  signal TEMP_i_1_n_0 : STD_LOGIC;
  signal TEMP_reg_n_0 : STD_LOGIC;
  signal clk_in_IBUF : STD_LOGIC;
  signal clk_in_IBUF_BUFG : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter2[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter2[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[23]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[23]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[23]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter2_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \counter2_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \counter2_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter2_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[9]\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[23]_i_3_n_0\ : STD_LOGIC;
  signal \counter[23]_i_4_n_0\ : STD_LOGIC;
  signal \counter[23]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal reset_IBUF : STD_LOGIC;
  signal start_stop_IBUF : STD_LOGIC;
  signal \NLW_counter2_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter2_reg[23]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[23]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of TEMP2_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of TEMP_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter2[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair18";
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(0),
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(1),
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(2),
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(3),
      O => AN(3)
    );
COUNTER2BIT: entity work.muxdivider
     port map (
      AN_OBUF(3 downto 0) => AN_OBUF(3 downto 0),
      CLK => TEMP_reg_n_0,
      Q(1 downto 0) => SR(1 downto 0)
    );
COUNTER4BIT0: entity work.sixteen_bit_counter
     port map (
      AR(0) => reset_IBUF,
      CLK => TEMP2_reg_n_0,
      DISP0_OBUF(6 downto 0) => DISP0_OBUF(6 downto 0),
      Q(1 downto 0) => SR(1 downto 0),
      start_stop_IBUF => start_stop_IBUF
    );
\DISP0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(0),
      O => DISP0(0)
    );
\DISP0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(1),
      O => DISP0(1)
    );
\DISP0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(2),
      O => DISP0(2)
    );
\DISP0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(3),
      O => DISP0(3)
    );
\DISP0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(4),
      O => DISP0(4)
    );
\DISP0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(5),
      O => DISP0(5)
    );
\DISP0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DISP0_OBUF(6),
      O => DISP0(6)
    );
TEMP2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \counter2_reg_n_0_[0]\,
      I1 => \counter2[0]_i_2_n_0\,
      I2 => TEMP2_reg_n_0,
      O => TEMP2_i_1_n_0
    );
TEMP2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => TEMP2_i_1_n_0,
      Q => TEMP2_reg_n_0,
      R => '0'
    );
TEMP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter[0]_i_2_n_0\,
      I2 => TEMP_reg_n_0,
      O => TEMP_i_1_n_0
    );
TEMP_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => TEMP_i_1_n_0,
      Q => TEMP_reg_n_0,
      R => '0'
    );
clk_in_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_in_IBUF,
      O => clk_in_IBUF_BUFG
    );
clk_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_in,
      O => clk_in_IBUF
    );
\counter2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2[0]_i_2_n_0\,
      I1 => \counter2_reg_n_0_[0]\,
      O => counter2(0)
    );
\counter2[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter2[0]_i_3_n_0\,
      I1 => \counter2[0]_i_4_n_0\,
      I2 => \counter2[0]_i_5_n_0\,
      I3 => \counter2[0]_i_6_n_0\,
      I4 => \counter2[0]_i_7_n_0\,
      I5 => \counter2[0]_i_8_n_0\,
      O => \counter2[0]_i_2_n_0\
    );
\counter2[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \counter2_reg_n_0_[19]\,
      I1 => \counter2_reg_n_0_[18]\,
      I2 => \counter2_reg_n_0_[21]\,
      I3 => \counter2_reg_n_0_[20]\,
      O => \counter2[0]_i_3_n_0\
    );
\counter2[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \counter2_reg_n_0_[22]\,
      I1 => \counter2_reg_n_0_[23]\,
      I2 => \counter2_reg_n_0_[1]\,
      O => \counter2[0]_i_4_n_0\
    );
\counter2[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \counter2_reg_n_0_[11]\,
      I1 => \counter2_reg_n_0_[10]\,
      I2 => \counter2_reg_n_0_[13]\,
      I3 => \counter2_reg_n_0_[12]\,
      O => \counter2[0]_i_5_n_0\
    );
\counter2[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \counter2_reg_n_0_[14]\,
      I1 => \counter2_reg_n_0_[15]\,
      I2 => \counter2_reg_n_0_[17]\,
      I3 => \counter2_reg_n_0_[16]\,
      O => \counter2[0]_i_6_n_0\
    );
\counter2[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \counter2_reg_n_0_[6]\,
      I1 => \counter2_reg_n_0_[7]\,
      I2 => \counter2_reg_n_0_[9]\,
      I3 => \counter2_reg_n_0_[8]\,
      O => \counter2[0]_i_7_n_0\
    );
\counter2[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter2_reg_n_0_[3]\,
      I1 => \counter2_reg_n_0_[2]\,
      I2 => \counter2_reg_n_0_[5]\,
      I3 => \counter2_reg_n_0_[4]\,
      O => \counter2[0]_i_8_n_0\
    );
\counter2[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[12]\,
      O => \counter2[12]_i_2_n_0\
    );
\counter2[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[11]\,
      O => \counter2[12]_i_3_n_0\
    );
\counter2[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[10]\,
      O => \counter2[12]_i_4_n_0\
    );
\counter2[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[9]\,
      O => \counter2[12]_i_5_n_0\
    );
\counter2[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[16]\,
      O => \counter2[16]_i_2_n_0\
    );
\counter2[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[15]\,
      O => \counter2[16]_i_3_n_0\
    );
\counter2[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[14]\,
      O => \counter2[16]_i_4_n_0\
    );
\counter2[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[13]\,
      O => \counter2[16]_i_5_n_0\
    );
\counter2[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[20]\,
      O => \counter2[20]_i_2_n_0\
    );
\counter2[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[19]\,
      O => \counter2[20]_i_3_n_0\
    );
\counter2[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[18]\,
      O => \counter2[20]_i_4_n_0\
    );
\counter2[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[17]\,
      O => \counter2[20]_i_5_n_0\
    );
\counter2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter2_reg_n_0_[0]\,
      I1 => \counter2[0]_i_2_n_0\,
      O => TEMP2
    );
\counter2[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[23]\,
      O => \counter2[23]_i_3_n_0\
    );
\counter2[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[22]\,
      O => \counter2[23]_i_4_n_0\
    );
\counter2[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[21]\,
      O => \counter2[23]_i_5_n_0\
    );
\counter2[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[4]\,
      O => \counter2[4]_i_2_n_0\
    );
\counter2[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[3]\,
      O => \counter2[4]_i_3_n_0\
    );
\counter2[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[2]\,
      O => \counter2[4]_i_4_n_0\
    );
\counter2[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[1]\,
      O => \counter2[4]_i_5_n_0\
    );
\counter2[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[8]\,
      O => \counter2[8]_i_2_n_0\
    );
\counter2[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[7]\,
      O => \counter2[8]_i_3_n_0\
    );
\counter2[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[6]\,
      O => \counter2[8]_i_4_n_0\
    );
\counter2[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter2_reg_n_0_[5]\,
      O => \counter2[8]_i_5_n_0\
    );
\counter2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => counter2(0),
      Q => \counter2_reg_n_0_[0]\,
      R => '0'
    );
\counter2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[12]_i_1_n_6\,
      Q => \counter2_reg_n_0_[10]\,
      R => TEMP2
    );
\counter2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[12]_i_1_n_5\,
      Q => \counter2_reg_n_0_[11]\,
      R => TEMP2
    );
\counter2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[12]_i_1_n_4\,
      Q => \counter2_reg_n_0_[12]\,
      R => TEMP2
    );
\counter2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[8]_i_1_n_0\,
      CO(3) => \counter2_reg[12]_i_1_n_0\,
      CO(2) => \counter2_reg[12]_i_1_n_1\,
      CO(1) => \counter2_reg[12]_i_1_n_2\,
      CO(0) => \counter2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter2_reg[12]_i_1_n_4\,
      O(2) => \counter2_reg[12]_i_1_n_5\,
      O(1) => \counter2_reg[12]_i_1_n_6\,
      O(0) => \counter2_reg[12]_i_1_n_7\,
      S(3) => \counter2[12]_i_2_n_0\,
      S(2) => \counter2[12]_i_3_n_0\,
      S(1) => \counter2[12]_i_4_n_0\,
      S(0) => \counter2[12]_i_5_n_0\
    );
\counter2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[16]_i_1_n_7\,
      Q => \counter2_reg_n_0_[13]\,
      R => TEMP2
    );
\counter2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[16]_i_1_n_6\,
      Q => \counter2_reg_n_0_[14]\,
      R => TEMP2
    );
\counter2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[16]_i_1_n_5\,
      Q => \counter2_reg_n_0_[15]\,
      R => TEMP2
    );
\counter2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[16]_i_1_n_4\,
      Q => \counter2_reg_n_0_[16]\,
      R => TEMP2
    );
\counter2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[12]_i_1_n_0\,
      CO(3) => \counter2_reg[16]_i_1_n_0\,
      CO(2) => \counter2_reg[16]_i_1_n_1\,
      CO(1) => \counter2_reg[16]_i_1_n_2\,
      CO(0) => \counter2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter2_reg[16]_i_1_n_4\,
      O(2) => \counter2_reg[16]_i_1_n_5\,
      O(1) => \counter2_reg[16]_i_1_n_6\,
      O(0) => \counter2_reg[16]_i_1_n_7\,
      S(3) => \counter2[16]_i_2_n_0\,
      S(2) => \counter2[16]_i_3_n_0\,
      S(1) => \counter2[16]_i_4_n_0\,
      S(0) => \counter2[16]_i_5_n_0\
    );
\counter2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[20]_i_1_n_7\,
      Q => \counter2_reg_n_0_[17]\,
      R => TEMP2
    );
\counter2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[20]_i_1_n_6\,
      Q => \counter2_reg_n_0_[18]\,
      R => TEMP2
    );
\counter2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[20]_i_1_n_5\,
      Q => \counter2_reg_n_0_[19]\,
      R => TEMP2
    );
\counter2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[4]_i_1_n_7\,
      Q => \counter2_reg_n_0_[1]\,
      R => TEMP2
    );
\counter2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[20]_i_1_n_4\,
      Q => \counter2_reg_n_0_[20]\,
      R => TEMP2
    );
\counter2_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[16]_i_1_n_0\,
      CO(3) => \counter2_reg[20]_i_1_n_0\,
      CO(2) => \counter2_reg[20]_i_1_n_1\,
      CO(1) => \counter2_reg[20]_i_1_n_2\,
      CO(0) => \counter2_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter2_reg[20]_i_1_n_4\,
      O(2) => \counter2_reg[20]_i_1_n_5\,
      O(1) => \counter2_reg[20]_i_1_n_6\,
      O(0) => \counter2_reg[20]_i_1_n_7\,
      S(3) => \counter2[20]_i_2_n_0\,
      S(2) => \counter2[20]_i_3_n_0\,
      S(1) => \counter2[20]_i_4_n_0\,
      S(0) => \counter2[20]_i_5_n_0\
    );
\counter2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[23]_i_2_n_7\,
      Q => \counter2_reg_n_0_[21]\,
      R => TEMP2
    );
\counter2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[23]_i_2_n_6\,
      Q => \counter2_reg_n_0_[22]\,
      R => TEMP2
    );
\counter2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[23]_i_2_n_5\,
      Q => \counter2_reg_n_0_[23]\,
      R => TEMP2
    );
\counter2_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter2_reg[23]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter2_reg[23]_i_2_n_2\,
      CO(0) => \counter2_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter2_reg[23]_i_2_O_UNCONNECTED\(3),
      O(2) => \counter2_reg[23]_i_2_n_5\,
      O(1) => \counter2_reg[23]_i_2_n_6\,
      O(0) => \counter2_reg[23]_i_2_n_7\,
      S(3) => '0',
      S(2) => \counter2[23]_i_3_n_0\,
      S(1) => \counter2[23]_i_4_n_0\,
      S(0) => \counter2[23]_i_5_n_0\
    );
\counter2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[4]_i_1_n_6\,
      Q => \counter2_reg_n_0_[2]\,
      R => TEMP2
    );
\counter2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[4]_i_1_n_5\,
      Q => \counter2_reg_n_0_[3]\,
      R => TEMP2
    );
\counter2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[4]_i_1_n_4\,
      Q => \counter2_reg_n_0_[4]\,
      R => TEMP2
    );
\counter2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter2_reg[4]_i_1_n_0\,
      CO(2) => \counter2_reg[4]_i_1_n_1\,
      CO(1) => \counter2_reg[4]_i_1_n_2\,
      CO(0) => \counter2_reg[4]_i_1_n_3\,
      CYINIT => \counter2_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \counter2_reg[4]_i_1_n_4\,
      O(2) => \counter2_reg[4]_i_1_n_5\,
      O(1) => \counter2_reg[4]_i_1_n_6\,
      O(0) => \counter2_reg[4]_i_1_n_7\,
      S(3) => \counter2[4]_i_2_n_0\,
      S(2) => \counter2[4]_i_3_n_0\,
      S(1) => \counter2[4]_i_4_n_0\,
      S(0) => \counter2[4]_i_5_n_0\
    );
\counter2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[8]_i_1_n_7\,
      Q => \counter2_reg_n_0_[5]\,
      R => TEMP2
    );
\counter2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[8]_i_1_n_6\,
      Q => \counter2_reg_n_0_[6]\,
      R => TEMP2
    );
\counter2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[8]_i_1_n_5\,
      Q => \counter2_reg_n_0_[7]\,
      R => TEMP2
    );
\counter2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[8]_i_1_n_4\,
      Q => \counter2_reg_n_0_[8]\,
      R => TEMP2
    );
\counter2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[4]_i_1_n_0\,
      CO(3) => \counter2_reg[8]_i_1_n_0\,
      CO(2) => \counter2_reg[8]_i_1_n_1\,
      CO(1) => \counter2_reg[8]_i_1_n_2\,
      CO(0) => \counter2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter2_reg[8]_i_1_n_4\,
      O(2) => \counter2_reg[8]_i_1_n_5\,
      O(1) => \counter2_reg[8]_i_1_n_6\,
      O(0) => \counter2_reg[8]_i_1_n_7\,
      S(3) => \counter2[8]_i_2_n_0\,
      S(2) => \counter2[8]_i_3_n_0\,
      S(1) => \counter2[8]_i_4_n_0\,
      S(0) => \counter2[8]_i_5_n_0\
    );
\counter2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \counter2_reg[12]_i_1_n_7\,
      Q => \counter2_reg_n_0_[9]\,
      R => TEMP2
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter[0]_i_2_n_0\,
      I1 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[0]_i_3_n_0\,
      I1 => \counter[0]_i_4_n_0\,
      I2 => \counter[0]_i_5_n_0\,
      I3 => \counter[0]_i_6_n_0\,
      I4 => \counter[0]_i_7_n_0\,
      I5 => \counter[0]_i_8_n_0\,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      I1 => \counter_reg_n_0_[18]\,
      I2 => \counter_reg_n_0_[21]\,
      I3 => \counter_reg_n_0_[20]\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg_n_0_[23]\,
      I1 => \counter_reg_n_0_[22]\,
      I2 => \counter_reg_n_0_[1]\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      I1 => \counter_reg_n_0_[10]\,
      I2 => \counter_reg_n_0_[13]\,
      I3 => \counter_reg_n_0_[12]\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[14]\,
      I2 => \counter_reg_n_0_[17]\,
      I3 => \counter_reg_n_0_[16]\,
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \counter_reg_n_0_[9]\,
      O => \counter[0]_i_7_n_0\
    );
\counter[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[5]\,
      I3 => \counter_reg_n_0_[4]\,
      O => \counter[0]_i_8_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[14]\,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[17]\,
      O => \counter[20]_i_5_n_0\
    );
\counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter[0]_i_2_n_0\,
      O => TEMP
    );
\counter[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[23]\,
      O => \counter[23]_i_3_n_0\
    );
\counter[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[22]\,
      O => \counter[23]_i_4_n_0\
    );
\counter[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      O => \counter[23]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[8]\,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => counter(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(10),
      Q => \counter_reg_n_0_[10]\,
      R => TEMP
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(11),
      Q => \counter_reg_n_0_[11]\,
      R => TEMP
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(12),
      Q => \counter_reg_n_0_[12]\,
      R => TEMP
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(13),
      Q => \counter_reg_n_0_[13]\,
      R => TEMP
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(14),
      Q => \counter_reg_n_0_[14]\,
      R => TEMP
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(15),
      Q => \counter_reg_n_0_[15]\,
      R => TEMP
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(16),
      Q => \counter_reg_n_0_[16]\,
      R => TEMP
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(17),
      Q => \counter_reg_n_0_[17]\,
      R => TEMP
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(18),
      Q => \counter_reg_n_0_[18]\,
      R => TEMP
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(19),
      Q => \counter_reg_n_0_[19]\,
      R => TEMP
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(1),
      Q => \counter_reg_n_0_[1]\,
      R => TEMP
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(20),
      Q => \counter_reg_n_0_[20]\,
      R => TEMP
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(21),
      Q => \counter_reg_n_0_[21]\,
      R => TEMP
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(22),
      Q => \counter_reg_n_0_[22]\,
      R => TEMP
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(23),
      Q => \counter_reg_n_0_[23]\,
      R => TEMP
    );
\counter_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[23]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[23]_i_2_n_2\,
      CO(0) => \counter_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[23]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2) => \counter[23]_i_3_n_0\,
      S(1) => \counter[23]_i_4_n_0\,
      S(0) => \counter[23]_i_5_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(2),
      Q => \counter_reg_n_0_[2]\,
      R => TEMP
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(3),
      Q => \counter_reg_n_0_[3]\,
      R => TEMP
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(4),
      Q => \counter_reg_n_0_[4]\,
      R => TEMP
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(5),
      Q => \counter_reg_n_0_[5]\,
      R => TEMP
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(6),
      Q => \counter_reg_n_0_[6]\,
      R => TEMP
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(7),
      Q => \counter_reg_n_0_[7]\,
      R => TEMP
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(8),
      Q => \counter_reg_n_0_[8]\,
      R => TEMP
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => data0(9),
      Q => \counter_reg_n_0_[9]\,
      R => TEMP
    );
dp_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(1),
      O => dp
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
start_stop_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start_stop,
      O => start_stop_IBUF
    );
end STRUCTURE;
