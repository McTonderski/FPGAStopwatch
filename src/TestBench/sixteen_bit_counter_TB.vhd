library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity sixteen_bit_counter_tb is
end sixteen_bit_counter_tb;

architecture TB_ARCHITECTURE of sixteen_bit_counter_tb is
	-- Component declaration of the tested unit
	component sixteen_bit_counter
	port(
		CEn : in STD_LOGIC;
		RST : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q1	: out STD_LOGIC_VECTOR(3 downto 0);  
		Q2	: out STD_LOGIC_VECTOR(3 downto 0);
		Q3	: out STD_LOGIC_VECTOR(3 downto 0);
		Q4	: out STD_LOGIC_VECTOR(3 downto 0));
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CEn 	: STD_LOGIC;	 
	signal RST 	: STD_LOGIC;
	signal CLK 	: STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q1	: STD_LOGIC_VECTOR(3 downto 0);	
	signal Q2	: STD_LOGIC_VECTOR(3 downto 0);
	signal Q3	: STD_LOGIC_VECTOR(3 downto 0);
	signal Q4	: STD_LOGIC_VECTOR(3 downto 0);

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : sixteen_bit_counter
	port map ( 
			CEn => CEn,
			RST => RST,
			CLK => CLK,
			Q1 => Q1,
			Q2 => Q2,
			Q3 => Q3,
			Q4 => Q4
		);

	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	RST <= '0';
    wait for 100 ns; --0 fs
	RST <= '1';
    wait for 100 ns; --100 ns
	RST <= '0';
    wait for 10200 us; --200 ns
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	
CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 50 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 50 ns; --50 ns
	else
		wait;
	end if;
end process;




	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_sixteen_bit_counter of sixteen_bit_counter_tb is
	for TB_ARCHITECTURE
		for UUT : sixteen_bit_counter
			use entity work.sixteen_bit_counter(sixteen_bit_counter);
		end for;
	end for;
end TESTBENCH_FOR_sixteen_bit_counter;

