library IEEE;
use IEEE.std_logic_1164.all;

entity tbHACK_NOT is
end entity;

architecture test of tbHACK_NOT is

    signal IN0: std_logic;
    signal OUT0: std_logic;

begin
    
    uHACK_NOT: entity work.HACK_NOT port map(IN0=>IN0, OUT0=>OUT0);

    process is
    begin
        IN0 <= '0';
        wait for 20 ns;
        assert(OUT0 = '1') report "error" severity error;

        IN0 <= '1';
        wait for 20 ns;
        assert(OUT0 = '0') report "error" severity error;
    end process;

end architecture;
