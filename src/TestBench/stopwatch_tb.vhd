library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity Stopwatch_tb is
end Stopwatch_tb;

architecture TB_ARCHITECTURE of Stopwatch_tb is
	-- Component declaration of the tested unit
	component Stopwatch
	Port ( 	start_stop 	: in STD_LOGIC;
 			reset 		: in STD_LOGIC;
 			clk_in 		: in STD_LOGIC;
	 		DISP0 		: out STD_LOGIC_VECTOR (6 downto 0);
 			AN 			: out STD_LOGIC_VECTOR (3 downto 0);
 			dp 			: out STD_LOGIC ); 	
	end component;									  		
	signal start_stop 	: STD_LOGIC;
 	signal reset 		: STD_LOGIC;
 	signal clk_in 		: STD_LOGIC;
	signal DISP0 		: STD_LOGIC_VECTOR (6 downto 0);
 	signal AN 			: STD_LOGIC_VECTOR (3 downto 0);
 	signal dp 			: STD_LOGIC;

begin

	-- Unit Under Test port map
	UUT : Stopwatch
		port map (
			start_stop => start_stop,
			reset => reset,
			clk_in => clk_in,
			DISP0 => DISP0,
			AN => AN,
			dp => dp
		);

	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....

TEST: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>
reset <= '1';
wait for 10 ns;
reset <= '0';
wait for 10 ns;
start_stop <= '1';
wait for 10010 ns;

end process;

CLOCK_CLK : process
begin
	CLK_in <= '1';
	wait for 2 ns;
	CLK_in <= '0';
	wait for 2 ns; 

end process; -- end of stimulus process	  

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_Stopwatch of Stopwatch_tb is
	for TB_ARCHITECTURE
		for UUT : Stopwatch
			use entity work.Stopwatch(Stopwatch);
		end for;
	end for;
end TESTBENCH_FOR_Stopwatch;

