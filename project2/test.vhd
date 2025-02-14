library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is 

    signal a, b, sum, c_in, c_out: std_logic_vector(15 downto 0) := (others => '0');

begin

    obj: entity work.full_adder_16
    port map(a=>a, b=>b, sum=>sum, c_in=>c_in, c_out=>c_out);

    process is
    begin
        
        a(0) <= '1';
        b(0) <= '1';
        c_in(0) <= '1';
        wait for 20 ns;
        report "sum: " & std_logic'image(sum(1)) & ", cin: " & std_logic'image(c_in(1)) & ", cout: " & std_logic'image(c_out(1));
        
        wait;
    end process;

end architecture;
