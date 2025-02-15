library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbHACK_FULL_ADDER_4 is
end entity;

architecture test of tbHACK_FULL_ADDER_4 is
    signal IN0, IN1, CIN, SUM: std_logic_vector(3 downto 0);
    signal COUT: std_logic;
begin
    uHACK_FULL_ADDER_4: entity work.HACK_FULL_ADDER_4 port map(IN0=>IN0, IN1=>IN1, CIN=>CIN, SUM=>SUM, COUT=>COUT);

    process is
        variable expected_output: std_logic_vector(3 downto 0) := (others => '0');
        variable expected_cout: std_logic;
    begin
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                IN0 <= std_logic_vector(to_unsigned(i, 4));
                IN1 <= std_logic_vector(to_unsigned(j, 4));
                wait for 20 ns;
                expected_output := std_logic_vector(to_unsigned((i+j) mod 16, 4));
                if (i+j) >= 16 then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;
                assert(SUM=expected_output) report "Test failed for input " & integer'image(i) & ", " & integer'image(j) severity error;
                assert(COUT=expected_cout) report "Test failed for input " & integer'image(i) & ", " & integer'image(j) severity error;
            end loop;
        end loop;
        report "All tests passed successfully.";
        wait;
    end process;
end architecture;
