library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULBIT_OR is

    port(
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        q: out std_logic_vector(15 downto 0);
    );

end entity;

architecture rlt of CHIP_MULBIT_OR is

begin
    process(a,b) is
    begin
        q <= (not a) nand (not b);
    end process;

end architecture; 
