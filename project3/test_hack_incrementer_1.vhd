library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbHACK_INCREMENTER_1 is
end entity;

architecture test of tbHACK_INCREMENTER_1 is
    signal IN0: std_logic := '0';
    signal SUM, COUT: std_logic;
begin
    uHACK_INCREMENTER_1: entity work.HACK_INCREMENTER_1 port map(IN0=>IN0, SUM=>SUM, COUT=>COUT);

    process is
        variable expected_output, expected_cout: std_logic;
    begin
        IN0 <= '0';
        expected_output := '1'; 
        expected_cout := '0';
        wait for 20 ns;
        assert((SUM=expected_output) and (COUT=expected_cout)) 
            report "IN0:" & std_logic'image(IN0) &
            ", SUM:" & std_logic'image(SUM) &
            ", COUT:" & std_logic'image(COUT) &
            ", expected_output" & std_logic'image(expected_output) &
            ", expected_cout:" & std_logic'image(expected_cout)
            severity note;

        IN0 <= '1';
        expected_output := '0'; 
        expected_cout := '1';
        wait for 20 ns;
        assert((SUM=expected_output) and (COUT=expected_cout)) 
            report "IN0:" & std_logic'image(IN0) &
            ", SUM:" & std_logic'image(SUM) &
            ", COUT:" & std_logic'image(COUT) &
            ", expected_output" & std_logic'image(expected_output) &
            ", expected_cout:" & std_logic'image(expected_cout)
            severity note;

        report "All tests passed successfully.";
        wait;
    end process;
end architecture;
