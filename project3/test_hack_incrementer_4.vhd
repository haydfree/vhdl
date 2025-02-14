library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_HACK_INCREMENTER_4 is
end entity;

architecture behavior of tb_HACK_INCREMENTER_4 is
    signal IN0  : std_logic_vector(3 downto 0) := (others => '0');
    signal OUT0 : std_logic_vector(3 downto 0);
begin
    uHACK_INCREMENTER_4: entity work.HACK_INCREMENTER_4 port map(IN0=>IN0, OUT0=>OUT0);

    process is
        variable expected_output : std_logic_vector(3 downto 0);
    begin
        for i in 0 to 15 loop
            IN0 <= std_logic_vector(to_unsigned(i, 4));
            wait for 20 ns; 
            expected_output := std_logic_vector(to_unsigned((i + 1) mod 16, 4));
            assert(OUT0=expected_output) report "Test failed for input " & integer'image(i) severity error;
        end loop;

        report "All tests passed successfully.";
        wait;
    end process;
end architecture;

