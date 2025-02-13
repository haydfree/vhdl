library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULWAY_OR is

    port(
        a: in std_logic_vector(7 downto 0) := (others => '0');
        q: out std_logic;
    );

end entity;

architecture rlt of CHIP_MULWAY_OR is

	signal sig01: std_logic := '0';
    signal sig12: std_logic := '0';
    signal sig23: std_logic := '0';
    signal sig34: std_logic := '0';
    signal sig45: std_logic := '0';
    signal sig56: std_logic := '0';
    signal sig67: std_logic := '0';
    signal sig78: std_logic := '0';

begin
    process(a) is
    begin
        sig01 <= a(0) or a(1);
        sig12 <= sig01 or a(2);
        sig23 <= sig12 or a(3);
        sig34 <= sig23 or a(4);
        sig45 <= sig34 or a(5);
        sig56 <= sig45 or a(6);
        sig67 <= sig56 or a(7);
        q <= sig67;
    end process;

end architecture; 
