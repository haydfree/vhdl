library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MUX is

    port(
    	  a: in std_logic;
        b: in std_logic;
        s: in std_logic;
        q: out std_logic;
    );

end entity;

architecture rlt of CHIP_MUX is

begin
    process(a,b,s) is
    begin
        q <= (a nand (s nand s)) nand (b nand s);
    end process;

end architecture;
