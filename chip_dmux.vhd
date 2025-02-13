library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_DMUX is

    port(
    	a: in std_logic;
        s: in std_logic;
        q1: out std_logic;
        q2: out std_logic;
    );

end entity;

architecture rlt of CHIP_DMUX is

begin
    process(a,s) is
    begin
        q1 <= a and not s;
        q2 <= a and s;
    end process;

end architecture;
