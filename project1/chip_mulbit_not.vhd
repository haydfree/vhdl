library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULBIT_NOT is

    port(
    	  a: in std_logic_vector(15 downto 0);
        q: out std_logic_vector(15 downto 0);
    );

end entity;

architecture rlt of CHIP_MULBIT_NOT is

begin
    process(a) is
    begin
        q <= (a nand a);
    end process;

end architecture; 
