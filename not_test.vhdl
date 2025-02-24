library ieee;
use ieee.std_logic_1164.all;
 
entity gateNotTB is
end gateNotTB;

architecture test of gateNotTB is 
	signal sigA: std_logic := '0';
    signal sigQ: std_logic;
    
begin
	uut: entity work.gateNot
    	port map(
        	a => sigA,
            q => sigQ
        );
    
    proc: process
    begin
    	sigA <= '0';
        wait for 10 ns;
    
    	sigA <= '1';
        wait for 10 ns;
        
        wait;
    end process proc;
end test;
