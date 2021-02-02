-------------------------------------------------------------------------------
--
-- Title       : TutorVHDL
-- Design      : TutorVHDL
-- Author      : J.Kasperek & P.J.Rajda
-- Company     : AGH Kraków
--
-------------------------------------------------------------------------------
--
-- Description : 
-- Synchronous 3bits binary up counter with synchronous reset
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;


entity TutorVHDL is
	port(
		CLR : in STD_LOGIC;			-- clear signal 
		CLK : in STD_LOGIC;			-- clock 
		Q1 : out STD_LOGIC_VECTOR(3 downto 0);
		Q2 : out STD_LOGIC_VECTOR(3 downto 0);
		Q3 : out STD_LOGIC_VECTOR(3 downto 0);
		Q4 : out STD_LOGIC_VECTOR(3 downto 0)-- outputs
		);
end TutorVHDL;


architecture TutorVHDL of TutorVHDL is	 
begin
	process (CLK)
		-- internal variable Q_INT
		variable Q_INT1: STD_LOGIC_VECTOR(3 downto 0);	 
		variable Q_INT2: STD_LOGIC_VECTOR(3 downto 0);
		variable Q_INT3: STD_LOGIC_VECTOR(3 downto 0);	 
		variable Q_INT4: STD_LOGIC_VECTOR(3 downto 0);
	begin
		if CLK'event and CLK='1' then
			if CLR='1' then
				Q_INT1 := "0000";  
				Q_INT2 := "0000"; 
				Q_INT3 := "0000";
				Q_INT4 := "0000";
			else	
				Q_INT1 := Q_INT1+1;
			end if;	
			if Q_INT1 = "1010" then
				Q_INT1 := "0000"; 
				Q_INT2 := Q_INT2+1;	
			end if;	
			if Q_INT2 = "1010" then  
				Q_INT2 := "0000";    	
				Q_INT3 := Q_INT3+1;	 	
			end if; 				  
			if Q_INT3 = "1010" then  
				Q_INT3 := "0000";    
				Q_INT4 := Q_INT4+1;	 
			end if;                  
		end if;	                	
		Q1 <= Q_INT1; 
		Q2 <= Q_INT2;
		Q3 <= Q_INT3;
		Q4 <= Q_INT4;
	end process;
	
end TutorVHDL;
