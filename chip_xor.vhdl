library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_XOR is

	port(
    	a: in std_logic;
        b: in std_logic;
        q: out std_logic;
    );

end entity;

architecture rlt of CHIP_XOR is

begin
	process(a,b) is
    begin
		q <= a xor b;
    end process;

end architecture;
