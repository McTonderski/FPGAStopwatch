-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : maciejtonderski.mt@gmail.com
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\compile\Stopwatch.vhd
-- Generated   : Sun Feb  7 22:13:19 2021
-- From        : c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\Stopwatch.bde
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

entity Stopwatch is
  port(
       clk_in : in STD_LOGIC;
       reset : in STD_LOGIC;
       start_stop : in STD_LOGIC;
       dp : out STD_LOGIC;
       AN : out STD_LOGIC_VECTOR(3 downto 0);
       DISP0 : out STD_LOGIC_VECTOR(6 downto 0)
  );
end Stopwatch;

architecture Behavioral of Stopwatch is

---- Component declarations -----

component four2one_mux
  port (
       sr : in STD_LOGIC_VECTOR(1 downto 0);
       x0 : in STD_LOGIC_VECTOR(6 downto 0);
       x1 : in STD_LOGIC_VECTOR(6 downto 0);
       x2 : in STD_LOGIC_VECTOR(6 downto 0);
       x3 : in STD_LOGIC_VECTOR(6 downto 0);
       f : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component muxdivider
  port (
       clk : in STD_LOGIC;
       outside_counter : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;
component seg_decoder
  port (
       binary_num : in STD_LOGIC_VECTOR(3 downto 0);
       cathodes : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component sixteen_bit_counter
  port (
       CEn : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RST : in STD_LOGIC;
       Q1 : out STD_LOGIC_VECTOR(3 downto 0);
       Q2 : out STD_LOGIC_VECTOR(3 downto 0);
       Q3 : out STD_LOGIC_VECTOR(3 downto 0);
       Q4 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal counter : INTEGER range 0 TO 11000000 := 0;
signal counter2 : INTEGER range 0 TO 11000000 := 0;
signal TEMP : STD_LOGIC;
signal TEMP2 : STD_LOGIC;
signal bin0 : STD_LOGIC_VECTOR(3 downto 0);
signal bin1 : STD_LOGIC_VECTOR(3 downto 0);
signal bin2 : STD_LOGIC_VECTOR(3 downto 0);
signal bin3 : STD_LOGIC_VECTOR(3 downto 0);
signal SR : STD_LOGIC_VECTOR(1 downto 0);
signal s_0 : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
signal s_1 : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
signal s_2 : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
signal s_3 : STD_LOGIC_VECTOR(6 downto 0) := "0000000";

begin

---- Processes ----

COMB : process (SR)
                       begin
                         case SR is 
                           when "00" => 
                              AN <= "1110";
                              dp <= '1';
                           when "01" => 
                              AN <= "1101";
                              dp <= '0';
                           when "10" => 
                              AN <= "1011";
                              dp <= '1';
                           when "11" => 
                              AN <= "0111";
                              dp <= '1';
                           when others => 
                              AN <= "1111";
                         end case;
                       end process;
                      

frequency_divider : process (clk_in)
                       begin
                         if rising_edge(clk_in) then
                            if (counter = 200000) then
                               temp <= not (temp);
                               counter <= 0;
                            else 
                               counter <= counter + 1;
                            end if;
                         end if;
                       end process;
                      

frequency_divider2 : process (clk_in)
                       begin
                         if rising_edge(clk_in) then
                            if (counter2 = 5000000) then
                               temp2 <= not (temp2);
                               counter2 <= 0;
                            else 
                               counter2 <= counter2 + 1;
                            end if;
                         end if;
                       end process;
                      

----  Component instantiations  ----

COUNTER2BIT : muxdivider
  port map(
       clk => TEMP,
       outside_counter => SR
  );

COUNTER4BIT0 : sixteen_bit_counter
  port map(
       CEn => start_stop,
       CLK => TEMP2,
       Q1 => bin0,
       Q2 => bin1,
       Q3 => bin2,
       Q4 => bin3,
       RST => reset
  );

decode0 : seg_decoder
  port map(
       binary_num => bin0,
       cathodes => s_0
  );

decode1 : seg_decoder
  port map(
       binary_num => bin1,
       cathodes => s_1
  );

decode2 : seg_decoder
  port map(
       binary_num => bin2,
       cathodes => s_2
  );

decode3 : seg_decoder
  port map(
       binary_num => bin3,
       cathodes => s_3
  );

mux : four2one_mux
  port map(
       f => DISP0,
       sr => SR,
       x0 => s_0,
       x1 => s_1,
       x2 => s_2,
       x3 => s_3
  );


end Behavioral;
