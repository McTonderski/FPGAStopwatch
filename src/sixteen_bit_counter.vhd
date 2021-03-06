library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;


entity sixteen_bit_counter is
	port(
		CEn			: in STD_LOGIC;
		CLK 		: in STD_LOGIC;			-- zegar
		RST 		: in STD_LOGIC;			-- czystka 
		Q1 			: out STD_LOGIC_VECTOR(3 downto 0);
		Q2 			: out STD_LOGIC_VECTOR(3 downto 0);
		Q3 			: out STD_LOGIC_VECTOR(3 downto 0);
		Q4 			: out STD_LOGIC_VECTOR(3 downto 0)-- outputs
		);
end sixteen_bit_counter;
	

architecture Behavioral of sixteen_bit_counter is
signal Q_INT1: STD_LOGIC_VECTOR(3 downto 0):= "0000";	 
signal Q_INT2: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal Q_INT3: STD_LOGIC_VECTOR(3 downto 0):="0000";	 
signal Q_INT4: STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
	process (CEn, RST, CLK)
		-- internal variable Q_INT
		
	begin
		if (RST='1' and (CEn='0' or CEn = '1')) then
			Q_INT1 <= (others=> '0');  
			Q_INT2 <= (others=> '0'); 
			Q_INT3 <= (others=> '0');
			Q_INT4 <= (others=> '0');  
		elsif CEn='1' and rising_edge(CLK) then	
			Q_INT1 <= Q_INT1+1;
			if Q_INT1 = "1010" then
				Q_INT1 <= "0000"; 
				Q_INT2 <= Q_INT2+1;	
			end if;	
			if Q_INT2 = "1010" then  
				Q_INT2 <= "0000";    	
				Q_INT3 <= Q_INT3+1;	 	
			end if; 				  
			if Q_INT3 = "1010" then  
				Q_INT3 <= "0000";    
				Q_INT4 <= Q_INT4+1;	 
			end if;                  
		end if;	
	end process;                	
		Q1 <= Q_INT1; 
		Q2 <= Q_INT2;
		Q3 <= Q_INT3;
		Q4 <= Q_INT4; 
	
end Behavioral;
