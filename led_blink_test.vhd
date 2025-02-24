library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is
	signal CLK: std_logic := '0';
    signal LED: std_logic := '0';
begin
	
    i_led_blink: entity work.LED_Blink
    port map(
    	CLK => CLK,
        LED => LED
    );
    
    process is
    begin
    	
        for i in 0 to 50 loop
        	CLK <= not CLK;
        	wait for 20 ns;
        end loop;
    wait;
        
    end process;
    
end architecture;
