library ieee;
use ieee.std_logic_1164.all;
 
entity gateAndTB is
end gateAndTB;

architecture test of gateAndTB is
	signal sigA: std_logic := '0';
    signal sigB: std_logic := '0';
    signal sigQ: std_logic;
    
begin
	uut: entity work.gateAnd
      port map(
          a => sigA,
          b => sigB,
          q => sigQ
      );
    
    proc: process
    begin
    	sigA <= '0';
        sigB <= '0';
        wait for 10 ns;
        
        sigA <= '0';
        sigB <= '1';
        wait for 10 ns;
        
        sigA <= '1';
        sigB <= '0';
        wait for 10 ns;
        
        sigA <= '1';
        sigB <= '1';
        wait for 10 ns;
        
        wait;
    end process proc;
end test;
    
