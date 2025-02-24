library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_NAND is
    
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        OUT0: out std_logic
    );

end entity;

architecture rtl of HACK_NAND is

begin
    
    OUT0 <= IN0 nand IN1;

end architecture;
