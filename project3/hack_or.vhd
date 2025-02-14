library IEEE;
use IEEE.std_logic_1164.all;

-- a or b -> not (a nor b) -> not a nand not b

entity HACK_OR is
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        OUT0: out std_logic
    );
end entity;

architecture rtl of HACK_OR is
    signal sig0, sig1: std_logic;
begin
    uHACK_NOT_0: entity work.HACK_NOT port map(IN0=>IN0, OUT0=>sig0); 
    uHACK_NOT_1: entity work.HACK_NOT port map(IN0=>IN1, OUT0=>sig1); 
    uHACK_NAND: entity work.HACK_NAND port map(IN0=>sig0, IN1=>sig1, OUT0=>OUT0);
end architecture;
