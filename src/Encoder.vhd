library IEEE;                    
use IEEE.STD_LOGIC_1164.all;     
use IEEE.STD_LOGIC_unsigned.all; 
                                 
entity seg_decoder is
	Port( 	binary_num : in STD_LOGIC_VECTOR (3 downto 0);
	cathodes: out STD_LOGIC_VECTOR (6 downto 0));
end seg_decoder;

architecture Behavioral of seg_decoder is 

begin
	process(binary_num)
	begin
		case binary_num is

			when "0000"=> cathodes <= "0000001";
			when "0001"=> cathodes <= "1001111";
			when "0010"=> cathodes <= "0010010";
			when "0011"=> cathodes <= "0000110";
			when "0100"=> cathodes <= "1001100";
			when "0101"=> cathodes <= "0100100";
			when "0110"=> cathodes <= "1100000";
			when "0111"=> cathodes <= "0001111";
			when "1000"=> cathodes <= "0000000";			 
			when "1001"=> cathodes <= "0001100";
			when others=> cathodes <= "0111000";	 

		END CASE;
	END PROCESS;

end Behavioral;

	
	