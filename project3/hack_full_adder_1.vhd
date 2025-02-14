library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_FULL_ADDER_1 is
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        CIN: in std_logic;
        SUM: out std_logic;
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_FULL_ADDER_1 is
    signal sum0, cout0, cout1: std_logic;
begin
    uHACK_HALF_ADDER_1_0: entity work.HACK_HALF_ADDER_1 port map(IN0=>IN0, IN1=>IN1, SUM=>sum0, COUT=>cout0);
    uHACK_HALF_ADDER_1_1: entity work.HACK_HALF_ADDER_1 port map(IN0=>CIN, IN1=>sum0, SUM=>SUM, COUT=>cout1);
    uHACK_OR: entity work.HACK_OR port map(IN0=>cout1, IN1=>cout0, OUT0=>COUT);
end architecture;
