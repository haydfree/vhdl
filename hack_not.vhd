library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_NOT is
    
    port(
        IN0: in std_logic;
        OUT0: out std_logic
    );

end entity;

architecture rtl of HACK_NOT is

begin

    uHACK_NAND: entity work.HACK_NAND port map(IN0=>IN0, IN1=>IN0, OUT0=>OUT0);
    
end architecture;
