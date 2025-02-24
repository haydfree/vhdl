library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbHACK_INCREMENTER_2 is
end entity;

architecture test of tbHACK_INCREMENTER_2 is
    signal IN0, SUM: std_logic_vector(1 downto 0);
    signal COUT: std_logic;
begin
    uHACK_INCREMENTER_2: entity work.HACK_INCREMENTER_2 port map(IN0=>IN0, SUM=>SUM, COUT=>COUT);

    process is
        variable expected_output: std_logic_vector(1 downto 0) := (others => '0');
        variable expected_cout: std_logic;
    begin
        for i in (IN0'right) to (2**(IN0'left+1)-1) loop
            IN0 <= std_logic_vector(to_unsigned(i, (IN0'left+1)));
            wait for 20 ns;
            expected_output := std_logic_vector(to_unsigned((i+1) mod (2**(IN0'left+1)), (IN0'left+1)));
            if (i+1) >= (2**(IN0'left+1)) then
                expected_cout := '1';
            else
                expected_cout := '0';
            end if;
            assert((SUM=expected_output) and (COUT=expected_cout)) 
                report "IN0:" & integer'image(to_integer(unsigned(IN0))) &
                ", SUM:" & integer'image(to_integer(unsigned(SUM))) &
                ", COUT:" & std_logic'image(COUT) &
                ", expected_output:" & integer'image(to_integer(unsigned(expected_output))) &
                ", expected_cout:" & std_logic'image(expected_cout)
                severity note;
        end loop;
        report "All tests passed successfully.";
        wait;
    end process;
end architecture;
