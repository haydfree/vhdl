library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_INCREMENTER_1 is
    port(
        IN0: in std_logic;
        SUM: out std_logic;
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_INCREMENTER_1 is
begin
    uHACK_FULL_ADDER_1: entity work.HACK_FULL_ADDER_1 port map(IN0=>IN0, IN1=>'1', CIN=>'0', SUM=>SUM, COUT=>COUT);
end architecture;
