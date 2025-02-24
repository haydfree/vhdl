library IEEE;
use IEEE.std_logic_1164.all;

entity tbHACK_NAND is
end entity;

architecture test of tbHACK_NAND is

    signal IN0: std_logic;
    signal IN1: std_logic;
    signal OUT0: std_logic;

begin
    
    uHACK_NAND: entity work.HACK_NAND port map(IN0=>IN0, IN1=>IN1, OUT0=>OUT0);

    process is
    begin
        IN0 <= '0';
        IN1 <= '0';
        wait for 20 ns;
        assert(OUT0='1') report "error" severity error;

        IN0 <= '0';
        IN1 <= '1';
        wait for 20 ns;
        assert(OUT0='1') report "error" severity error;

        IN0 <= '1';
        IN1 <= '0';
        wait for 20 ns;
        assert(OUT0='1') report "error" severity error;

        IN0 <= '1';
        IN1 <= '1';
        wait for 20 ns;
        assert(OUT0='0') report "error" severity error;
    end process;

end architecture;
