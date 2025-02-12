library ieee;
use ieee.std_logic_1164.all;
 
entity orGateTB is
	-- no ports in testbench
end orGateTB;

architecture test of orGateTB is
    -- signal declarations for connecting to uut
    signal input1TB: std_logic := '0';
    signal input2TB: std_logic := '0';
    signal outputTB: std_logic;
    
begin
	-- instantiate the uut
	uut: entity work.orGate
    	port map (
        	input1 => input1TB,
            input2 => input2TB,
            output => outputTB
            );
            
	-- stimulus process to apply test vectors
    stimProc: process
    begin
    	-- test case 1: 0 or 0 = 0
        input1TB <= '0';
        input2TB <= '0';
        wait for 10 ns;
        
        -- test case 2: 0 or 1 = 1
        input1TB <= '0';
        input2TB <= '1';
        wait for 10 ns;
        
        -- test case 3: 1 or 0 = 1
        input1TB <= '1';
        input2TB <= '0';
        wait for 10 ns;
        
        -- test case 4: 1 or 1 = 1
        input1TB <= '1';
        input2TB <= '1';
        wait for 10 ns;
        
        -- end test simulation
        wait;
    end process stimProc;
end test;
