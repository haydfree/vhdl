library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_DECREMENTER_4 is
    port(
        IN0: in std_logic_vector(3 downto 0);
        DIF: out std_logic_vector(3 downto 0);
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_DECREMENTER_4 is
    signal tcONE: std_logic_vector(IN0'left downto IN0'right) := (others => '1');
    signal garb: std_logic;
begin
    uHACK_FULL_ADDER_4: entity work.HACK_FULL_ADDER_4 port map(IN0=>IN0, IN1=>tcONE, CIN=>'0', SUM=>DIF, COUT=>garb);
    COUT <= '0';
end architecture;
