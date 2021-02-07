-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : maciejtonderski.mt@gmail.com
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\compile\four2one_mux.vhd
-- Generated   : Sun Feb  7 22:13:16 2021
-- From        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\four2one_mux.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library ieee;
use ieee.std_logic_1164.all;

entity four2one_mux is
  port(
       sr : in STD_LOGIC_VECTOR(1 downto 0);
       x0 : in STD_LOGIC_VECTOR(6 downto 0);
       x1 : in STD_LOGIC_VECTOR(6 downto 0);
       x2 : in STD_LOGIC_VECTOR(6 downto 0);
       x3 : in STD_LOGIC_VECTOR(6 downto 0);
       f : out STD_LOGIC_VECTOR(6 downto 0)
  );
end four2one_mux;

architecture Behavioral of four2one_mux is

begin

---- User Signal Assignments ----
f <= x3 when (sr = "11") else x2 when (sr = "10") else x1 when (sr = "01") else x0 when (sr = "00") else "0000000";

end Behavioral;
