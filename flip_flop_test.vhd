library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is

	constant ClockFrequency: integer := 100e6;
	constant ClockPeriod: time := 1000 ms / ClockFrequency;

	signal input: std_logic := '0';
    signal rst: std_logic := '0';
    signal clk: std_logic := '0';
    signal output: std_logic;

begin
	clk <= not clk after ClockPeriod / 2;
    
	i_FlipFlop: entity work.e_FlipFlop
    port map(
    	input => input,
        rst => rst,
        clk => clk,
        output => output
    );
    
    
    process is
    begin
    	for i in 1 to 10 loop
        	input <= '1';
            rst <= '0';
        	wait for 20 ns;
        end loop;
    end process;
end architecture;
