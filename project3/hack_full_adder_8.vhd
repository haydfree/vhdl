library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_FULL_ADDER_8 is
    port(
        IN0, IN1, CIN: in std_logic_vector(7 downto 0);
        SUM: out std_logic_vector(7 downto 0);
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_FULL_ADDER_8 is
    signal CARRY: std_logic_vector(8 downto 0);
begin
    CARRY(0) <= '0';
    gen: for i in 0 to 7 generate
        uHACK_FULL_ADDER_1: entity work.HACK_FULL_ADDER_1 port map(IN0=>IN0(i), IN1=>IN1(i), CIN=>CARRY(i), SUM=>SUM(i), COUT=>CARRY(i+1));
    end generate;
    COUT <= CARRY(CARRY'left);
end architecture;
