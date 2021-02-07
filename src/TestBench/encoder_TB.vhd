library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity seg_decoder_tb is
end seg_decoder_tb;

architecture TB_ARCHITECTURE of seg_decoder_tb is
	-- Component declaration of the tested unit
	component seg_decoder
	port(
		binary_num 		: in STD_LOGIC_VECTOR(3 downto 0);			 
		cathodes		: out STD_LOGIC_VECTOR (6 downto 0)); 	
	end component;									  
	signal 	binary_num 	: STD_LOGIC_VECTOR(3 downto 0);			 
	signal 	cathodes	: STD_LOGIC_VECTOR (6 downto 0);									

begin

	-- Unit Under Test port map
	UUT : seg_decoder
		port map (
			binary_num => binary_num,
			cathodes => cathodes 
		);

	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....

TEST: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	binary_num <= "0000";
    wait for 100 ns; --0 fs
	binary_num <= "0001";
    wait for 100 ns; --0 fs
	binary_num <= "0010";
    wait for 100 ns; --0 fs
	binary_num <= "0011";
    wait for 100 ns; --0 fs
	binary_num <= "0100";
    wait for 100 ns; --0 fs
	binary_num <= "0101";
    wait for 100 ns; --0 fs
	binary_num <= "0111";
    wait for 100 ns; --0 fs
	binary_num <= "1000";
    wait for 100 ns; --0 fs
	binary_num <= "1001";
    wait for 100 ns; --0 fs
	binary_num <= "1101";
    wait for 100 ns; --0 fs
	binary_num <= "0000";
    wait for 100 ns;
end process; -- end of stimulus process	  

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_seg_decoder of seg_decoder_tb is
	for TB_ARCHITECTURE
		for UUT : seg_decoder
			use entity work.seg_decoder(seg_decoder);
		end for;
	end for;
end TESTBENCH_FOR_seg_decoder;

