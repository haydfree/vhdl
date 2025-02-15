library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity HACK_INCREMENTER_8 is
    port(
        IN0: in std_logic_vector(7 downto 0);
        SUM: out std_logic_vector(7 downto 0);
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_INCREMENTER_8 is
    signal sIN1: std_logic_vector(IN0'left downto IN0'right) := std_logic_vector(to_unsigned(1, IN0'left+1)); 
begin
    uHACK_FULL_ADDER_8: entity work.HACK_FULL_ADDER_8 port map(IN0=>IN0, IN1=>sIN1, CIN=>'0', SUM=>SUM, COUT=>COUT);
end architecture;
