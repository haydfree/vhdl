library IEEE;
use IEEE.std_logic_1164.all;

entity tbHACK_SR_LATCH_1 is
end entity;

architecture test of tbHACK_SR_LATCH_1 is
    signal SET, RES, OUT0, OUT1: std_logic;
begin
    uHACK_SR_LATCH_1: entity work.HACK_SR_LATCH_1 port map(SET=>SET, RES=>RES, OUT0=>OUT0, OUT1=>OUT1);

    process is
    begin
        SET <= '0';
        RES <= '0';
        wait for 20 ns;
        assert((OUT0='0') and (OUT1='1'))
        report "SET:" & std_logic'image(SET) & 
        "RES:" & std_logic'image(RES) & 
        "OUT0:" & std_logic'image(OUT0) & 
        "OUT1:" & std_logic'image(OUT1)
        severity error;

        SET <= '0';
        RES <= '1';
        wait for 20 ns;
        assert((OUT0='0') and (OUT1='1'))
        report "SET:" & std_logic'image(SET) & 
        "RES:" & std_logic'image(RES) & 
        "OUT0:" & std_logic'image(OUT0) & 
        "OUT1:" & std_logic'image(OUT1)
        severity error;

        SET <= '1';
        RES <= '0';
        wait for 20 ns;
        assert((OUT0='1') and (OUT1='0'))
        report "SET:" & std_logic'image(SET) & 
        "RES:" & std_logic'image(RES) & 
        "OUT0:" & std_logic'image(OUT0) & 
        "OUT1:" & std_logic'image(OUT1)
        severity error;

        report "All tests successfully passed.";
        wait;
    end process;

end architecture;
