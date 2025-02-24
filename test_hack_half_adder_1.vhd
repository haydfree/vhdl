library IEEE;
use IEEE.std_logic_1164.all;

entity tbHACK_HALF_ADDER_1 is
end entity;

architecture test of tbHACK_HALF_ADDER_1 is
    signal IN0, IN1, SUM, COUT: std_logic;
begin
    uHACK_HALF_ADDER_1: entity work.HACK_HALF_ADDER_1 port map(IN0=>IN0, IN1=>IN1, SUM=>SUM, COUT=>COUT);

    process is
    begin
        IN0 <= '0';
        IN1 <= '0';
        wait for 20 ns;
        assert(SUM='0') report "error" severity error;
        assert(COUT='0') report "error" severity error;

        IN0 <= '0';
        IN1 <= '1';
        wait for 20 ns;
        assert(SUM='1') report "error" severity error;
        assert(COUT='0') report "error" severity error;

        IN0 <= '1';
        IN1 <= '0';
        wait for 20 ns;
        assert(SUM='1') report "error" severity error;
        assert(COUT='0') report "error" severity error;

        IN0 <= '1';
        IN1 <= '1';
        wait for 20 ns;
        assert(SUM='0') report "error" severity error;
        assert(COUT='1') report "error" severity error;
    end process;
end architecture;
