library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_DECREMENTER_1 is
    port(
        IN0: in std_logic;
        DIF, COUT: out std_logic
    );
end entity;

architecture rtl of HACK_DECREMENTER_1 is
begin
    uHACK_NOT: entity work.HACK_NOT port map(IN0=>IN0, OUT0=>COUT);
    DIF <= IN0;
end architecture;
