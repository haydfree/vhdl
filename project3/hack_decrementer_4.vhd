library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_DECREMENTER_4 is
    port(
        IN0: in std_logic_vector(3 downto 0);
        OUT0: in std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of HACK_DECREMENTER_4 is
    signal tco: std_logic_vector(3 downto 0) := '0001';
begin
    uHACK_HALF_ADDER_1
end architecture;
