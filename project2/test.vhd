library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is 

    signal a, b, sum, c_in, c_out: std_logic;

begin

    obj: entity work.full_adder
    port map(a=>a, b=>b, sum=>sum, c_in=>c_in, c_out=>c_out);

    process is
    begin
        
        a <= '1';
        b <= '1';
        c_in <= '1';
        wait for 20 ns;
        report "sum: " & std_logic'image(sum) & ", cin: " & std_logic'image(c_in) & ", cout: " & std_logic'image(c_out);
        
        wait;
    end process;

end architecture;
