-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : maciejtonderski.mt@gmail.com
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\compile\sixteen_bit_counter.vhd
-- Generated   : Sun Feb  7 22:13:17 2021
-- From        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\sixteen_bit_counter.bde
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
use ieee.STD_LOGIC_UNSIGNED.all;

entity sixteen_bit_counter is
  port(
       CEn : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RST : in STD_LOGIC;
       Q1 : out STD_LOGIC_VECTOR(3 downto 0);
       Q2 : out STD_LOGIC_VECTOR(3 downto 0);
       Q3 : out STD_LOGIC_VECTOR(3 downto 0);
       Q4 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end sixteen_bit_counter;

architecture Behavioral of sixteen_bit_counter is

---- Signal declarations used on the diagram ----

signal Q_INT1 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Q_INT2 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Q_INT3 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Q_INT4 : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin

---- Processes ----

process (CEn,RST,CLK)
                       begin
                         if (RST = '1' and (CEn = '0' or CEn = '1')) then
                            Q_INT1 <= (others => '0');
                            Q_INT2 <= (others => '0');
                            Q_INT3 <= (others => '0');
                            Q_INT4 <= (others => '0');
                         elsif CEn = '1' and rising_edge(CLK) then
                            Q_INT1 <= Q_INT1 + 1;
                            if Q_INT1 = "1010" then
                               Q_INT1 <= "0000";
                               Q_INT2 <= Q_INT2 + 1;
                            end if;
                            if Q_INT2 = "1010" then
                               Q_INT2 <= "0000";
                               Q_INT3 <= Q_INT3 + 1;
                            end if;
                            if Q_INT3 = "1010" then
                               Q_INT3 <= "0000";
                               Q_INT4 <= Q_INT4 + 1;
                            end if;
                         end if;
                       end process;
                      

---- Terminal assignment ----

    -- Output\buffer terminals
	Q1 <= Q_INT1;
	Q2 <= Q_INT2;
	Q3 <= Q_INT3;
	Q4 <= Q_INT4;


end Behavioral;
