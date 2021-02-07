library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxdivider is
	Port (clk : in STD_LOGIC;
	outside_counter : out STD_LOGIC_VECTOR ( 1 downto 0));
end muxdivider;

architecture Behavioral of muxdivider is 
signal sig1, sig2 : STD_LOGIC;
signal outside_couter_signal : STD_LOGIC_VECTOR ( 1 downto 0);
begin 
	process(clk)
	
	begin 
		if clk'event and clk = '1' then		
			outside_couter_signal(0) <= sig1;
			outside_couter_signal(1) <= sig2;
		end if;
	end process;
	
		sig1 <= not outside_couter_signal(0);
		sig2 <= outside_couter_signal(1) xor outside_couter_signal(0);
		outside_counter <= outside_couter_signal;
	end Behavioral;