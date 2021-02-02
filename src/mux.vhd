library IEEE;
use IEEE.STD_LOGIC_1164.ALL;	   

entity four2one_mux is
 	Port ( 	x0,x1,x2,x3 : in STD_LOGIC_VECTOR (6 downto 0);
			sr : in STD_LOGIC_VECTOR (1 downto 0);
 			f : out STD_LOGIC_vector(6 downto 0));
	end four2one_mux;

	
architecture Behavioral of four2one_mux is
begin
f<= x3 when (sr="11") else
 	x2 when (sr="10") else
 	x1 when (sr="01") else
 	x0 when (sr="00") else
 	"0000000";
end Behavioral;