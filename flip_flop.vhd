library IEEE;
use IEEE.std_logic_1164.all;

entity e_FlipFlop is
	port(
    	input: in std_logic;
        rst: in std_logic;
        clk: in std_logic;
        output: out std_logic;
    );
end entity;

architecture rlt of e_FlipFlop is
begin
    
    process(clk) is
    begin
    	if rising_edge(clk) then
        	if rst = '0' then
            	output <= '0';
            else
            	output <= input;
            end if;
        end if;
    end process;
end architecture;
	
