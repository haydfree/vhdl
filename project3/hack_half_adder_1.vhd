library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_HALF_ADDER_1 is
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        SUM: out std_logic;
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_HALF_ADDER_1 is
begin
    SUM <= IN0 xor IN1;
    COUT <= IN0 and IN1;
end architecture;
