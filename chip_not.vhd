library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_NOT is

    port(
    	a: in std_logic;
        q: out std_logic;
    );

end entity;

-- Nand gate:
-- | a | b | q |
-- -------------
-- | 0 | 0 | 1 | <-- a nand a = not a
-- | 0 | 1 | 1 |
-- | 1 | 0 | 1 |
-- | 1 | 1 | 0 | <-- a nand a = not a

architecture rlt of CHIP_NOT is

begin
    process(a) is
    begin
        q <= a nand a;
    end process;

end architecture;
