library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULBIT_MUX is

    port(
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        s: in std_logic_vector(15 downto 0);
        q: out std_logic_vector(15 downto 0)
    );

end entity;

architecture rlt of CHIP_MULBIT_MUX is

begin
    process(a,b,s) is
    begin
        q <= (a nand not s) nand (b nand s);
    end process;

end architecture; 
