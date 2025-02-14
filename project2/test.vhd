library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is 

    signal a, q: std_logic_vector(15 downto 0) := (others => '0');

begin

    obj: entity work.inc_16
    port map(a=>a, q=>q);

    process is
    begin
        
        a(0) <= '0';
        wait for 20 ns;
        report "q: " & std_logic'image(q(0));
        
        wait;
    end process;

end architecture;
