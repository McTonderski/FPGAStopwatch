-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : maciejtonderski.mt@gmail.com
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\compile\muxdivider.vhd
-- Generated   : Sun Feb  7 22:13:17 2021
-- From        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\muxdivider.bde
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

entity muxdivider is
  port(
       clk : in STD_LOGIC;
       outside_counter : out STD_LOGIC_VECTOR(1 downto 0)
  );
end muxdivider;

architecture Behavioral of muxdivider is

---- Signal declarations used on the diagram ----

signal sig1 : STD_LOGIC;
signal sig2 : STD_LOGIC;
signal outside_couter_signal : STD_LOGIC_VECTOR(1 downto 0);

begin

---- Processes ----

process (clk)
                       begin
                         if clk'event and clk = '1' then
                            outside_couter_signal(0) <= sig1;
                            outside_couter_signal(1) <= sig2;
                         end if;
                       end process;
                      

----  Component instantiations  ----

sig1 <= not(outside_couter_signal(0));

sig2 <= outside_couter_signal(1) xor outside_couter_signal(0);


---- Terminal assignment ----

    -- Output\buffer terminals
	outside_counter <= outside_couter_signal;


end Behavioral;
