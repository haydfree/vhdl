library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbHACK_FULL_ADDER_8 is
end entity;

architecture test of tbHACK_FULL_ADDER_8 is
    signal IN0, IN1, SUM: std_logic_vector(7 downto 0);
    signal CIN: std_logic := '0';
    signal COUT: std_logic;
begin
    uHACK_FULL_ADDER_8: entity work.HACK_FULL_ADDER_8 port map(IN0=>IN0, IN1=>IN1, CIN=>CIN, SUM=>SUM, COUT=>COUT);

    process is
        variable expected_output: std_logic_vector((IN0'left) downto (IN0'right)) := (others => '0');
        variable expected_cout: std_logic;
        variable expected_cin: integer;
    begin
        for i in (IN0'right) to (2**(IN0'left+1)-1) loop
            for j in (IN0'right) to (2**(IN0'left+1)-1) loop
                IN0 <= std_logic_vector(to_unsigned(i, (IN0'left+1)));
                IN1 <= std_logic_vector(to_unsigned(j, (IN0'left+1)));
                CIN <= not CIN;
                wait for 20 ns;
                if CIN = '0' then
                    expected_cin := 0;
                else
                    expected_cin := 1;
                end if;
                expected_output := std_logic_vector(to_unsigned((i+j+expected_cin) mod (2**(IN0'left+1)), (IN0'left+1)));
                if (i+j+expected_cin) >= (2**(IN0'left+1)) then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;
                assert((SUM=expected_output) and (COUT=expected_cout)) 
                    report "IN0:" & integer'image(to_integer(unsigned(IN0))) &
                    ", IN1:" & integer'image(to_integer(unsigned(IN1))) &
                    ", CIN:" & std_logic'image(CIN) &
                    ", SUM:" & integer'image(to_integer(unsigned(SUM))) &
                    ", COUT:" & std_logic'image(COUT) &
                    ", expected_output" & integer'image(to_integer(unsigned(expected_output))) &
                    ", expected_cout:" & std_logic'image(expected_cout) &
                    ", expected_cin:" & integer'image(expected_cin)
                    severity note;

            end loop;
        end loop;
        report "All tests passed successfully.";
        wait;
    end process;
end architecture;
