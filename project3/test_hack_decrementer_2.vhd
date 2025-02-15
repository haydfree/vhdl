library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbHACK_DECREMENTER_2 is
end entity;

architecture test of tbHACK_DECREMENTER_2 is
    signal IN0, DIF: std_logic_vector(1 downto 0);
    signal COUT: std_logic;
begin
    uHACK_DECREMENTER_2: entity work.HACK_DECREMENTER_2 port map(IN0=>IN0, DIF=>DIF, COUT=>COUT);

    process is
        variable expected_output: std_logic_vector(1 downto 0) := (others => '0');
    begin
        for i in (IN0'right) to (2**(IN0'left+1)-1) loop
            IN0 <= std_logic_vector(to_unsigned(i, (IN0'left+1)));
            wait for 20 ns;
            expected_output := std_logic_vector(to_unsigned((i-1) mod (2**(IN0'left+1)), (IN0'left+1)));
            assert((DIF=expected_output)) 
                report "IN0:" & integer'image(to_integer(unsigned(IN0))) &
                ", DIF:" & integer'image(to_integer(unsigned(DIF))) &
                ", expected_output:" & integer'image(to_integer(unsigned(expected_output)))
                severity note;
        end loop;
        report "All tests passed successfully.";
        wait;
    end process;
end architecture;
