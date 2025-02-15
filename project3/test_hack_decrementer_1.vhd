library IEEE;
use IEEE.std_logic_1164.all;

entity tbHACK_DECREMENTER_1 is
end entity;

architecture test of tbHACK_DECREMENTER_1 is
    signal IN0, DIF, COUT: std_logic;
begin
    uHACK_DECREMENTER_1: entity work.HACK_DECREMENTER_1 port map(IN0=>IN0, DIF=>DIF, COUT=>COUT);

    process is
    begin
        IN0 <= '0';
        wait for 20 ns;
        assert(DIF='0') report "error" severity error;
        assert(COUT='1') report "error" severity error;

        IN0 <= '1';
        wait for 20 ns;
        assert(DIF='1') report "error" severity error;
        assert(COUT='0') report "error" severity error;

        report "All tests successfully passed.";
        wait;
    end process;

end architecture;
