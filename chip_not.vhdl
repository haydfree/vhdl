library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_NOT is

	port(
    	a: in std_logic;
        q: out std_logic;
    );

end entity;

architecture rlt of CHIP_NOT is

begin
	process(a) is
    begin
		q <= not a;
    end process;

end architecture;
