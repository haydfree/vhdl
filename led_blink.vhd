library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity LED_Blink is
	port(
    	CLK: in std_logic;
        LED: out std_logic;
    );
end entity;

architecture rlt of LED_Blink is

	signal counter: integer := 0;
  signal flag: std_logic := '0';

begin

	process(CLK) is
    begin
    	if rising_edge(CLK) then
        	if counter = 10 then
            	flag <= not flag;
                counter <= 0;
            else
            	counter <= counter + 1;
            end if;
        end if;
    end process;
    
    LED <= flag;
            	
end architecture;
