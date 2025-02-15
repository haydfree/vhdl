library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_FULL_ADDER_2 is
    port(
        IN0, IN1: in std_logic_vector(1 downto 0);
        CIN: in std_logic := '0';
        SUM: out std_logic_vector(1 downto 0);
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_FULL_ADDER_2 is
    signal CARRY: std_logic_vector((IN0'left+1) downto (IN0'right));
begin
    CARRY(IN0'right) <= CIN;
    gen: for i in (IN0'right) to (IN0'left) generate
        uHACK_FULL_ADDER_1: entity work.HACK_FULL_ADDER_1 port map(IN0=>IN0(i), IN1=>IN1(i), CIN=>CARRY(i), SUM=>SUM(i), COUT=>CARRY(i+1));
    end generate;
    COUT <= CARRY(IN0'left+1);
end architecture;
