library IEEE;
use IEEE.std_logic_1164.all;

entity gateXorTB is
end gateXorTB;

architecture test of gateXorTB is
	signal sigA, sigB, sigQ: std_logic;
    
begin
	uut: entity work.gateXor
    port map(
    	a => sigA,
        b => sigB,
        q => sigQ
    );
    
    stimuli: process
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
    end process stimuli;
end test;
