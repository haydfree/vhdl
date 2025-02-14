library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_INCREMENTER_4 is
    port(
        IN0: in std_logic_vector(3 downto 0);
        OUT0: out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of HACK_INCREMENTER_4 is
    signal CARRY: std_logic_vector(4 downto 0);
begin
    CARRY(0) <= '1';
    gen: for i in 0 to 3 generate 
        uHACK_HALF_ADDER_1: entity work.HACK_HALF_ADDER_1 port map(IN0=>IN0(i), IN1=>CARRY(i), SUM=>OUT0(i), COUT=>CARRY(i+1));
    end generate;
end architecture;
