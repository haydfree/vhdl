library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_NOR is
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        OUT0: out std_logic
    );
end entity;

architecture rtl of HACK_NOR is
    signal sig0: std_logic;
begin
    uHACK_OR: entity work.HACK_OR port map(IN0=>IN0, IN1=>IN1, OUT0=>sig0);
    uHACK_NOT: entity work.HACK_NOT port map(IN0=>sig0, OUT0=>OUT0);
end architecture;
