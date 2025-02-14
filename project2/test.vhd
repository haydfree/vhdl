library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is 

    signal a: std_logic;
    signal b: std_logic;
    signal q: std_logic;

begin

    obj: entity work.half_adder
    port map(a=>a, b=>b, q=>q);

    process is
    begin
        a <= '0';
        b <= '1';
        wait for 20 ns;
        report "q: " & std_logic'image(q);
    end process;

end architecture;
