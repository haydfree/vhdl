library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HACK_SR_LATCH_1 is
    port(
        SET: in  STD_LOGIC;
        RES: in  STD_LOGIC;
        OUT0: out STD_LOGIC;
        OUT1: out STD_LOGIC);
end entity;

architecture rtl of HACK_SR_LATCH_1 is
    signal s0: STD_LOGIC := '0';
    signal s1: STD_LOGIC := '1';
begin
    uHACK_NOR_1: entity work.HACK_NOR port map(IN0=>SET, IN1=>s1, OUT0=>s0);
    uHACK_NOR_2: entity work.HACK_NOR port map(IN0=>RES, IN1=>s0, OUT0=>s1);
    OUT0 <= s0;
    OUT1 <= s1;
end architecture;
