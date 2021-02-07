-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : maciejtonderski.mt@gmail.com
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\compile\seg_decoder.vhd
-- Generated   : Sun Feb  7 22:13:17 2021
-- From        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\seg_decoder.bde
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

entity seg_decoder is
  port(
       binary_num : in STD_LOGIC_VECTOR(3 downto 0);
       cathodes : out STD_LOGIC_VECTOR(6 downto 0)
  );
end seg_decoder;

architecture Behavioral of seg_decoder is

begin

---- Processes ----

process (binary_num)
                       begin
                         case binary_num is 
                           when "0000" => 
                              cathodes <= "0000001";
                           when "0001" => 
                              cathodes <= "1001111";
                           when "0010" => 
                              cathodes <= "0010010";
                           when "0011" => 
                              cathodes <= "0000110";
                           when "0100" => 
                              cathodes <= "1001100";
                           when "0101" => 
                              cathodes <= "0100100";
                           when "0110" => 
                              cathodes <= "1100000";
                           when "0111" => 
                              cathodes <= "0001111";
                           when "1000" => 
                              cathodes <= "0000000";
                           when "1001" => 
                              cathodes <= "0001100";
                           when others => 
                              cathodes <= "0111000";
                         end case;
                       end process;
                      

end Behavioral;
