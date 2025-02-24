library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_XOR is

    port(
    	a: in std_logic;
        b: in std_logic;
        q: out std_logic;
    );

end entity;

-- Nand gate:
-- | a | b | q |
-- -------------
-- | 0 | 0 | 1 |
-- | 0 | 1 | 1 |
-- | 1 | 0 | 1 |
-- | 1 | 1 | 0 |

-- Xor gate:
-- | a | b | q |
-- -------------
-- | 0 | 0 | 0 |
-- | 0 | 1 | 1 |
-- | 1 | 0 | 1 |
-- | 1 | 1 | 0 |

architecture rlt of CHIP_XOR is

begin
    process(a,b) is
    begin
        q <= (a nand (a nand b)) nand (b nand (a nand b));
    end process;

end architecture;
