library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture test of tb is 

    signal a, b, sum, car: std_logic;

begin

    obj: entity work.half_adder
    port map(a=>a, b=>b, sum=>sum, car=>car);

    process is
    begin
        a <= '0';
        b <= '0';
        wait for 20 ns;
        assert(sum='0') report "0/0 sum" severity error;
        assert(car='0') report "0/0 car" severity error;


        a <= '0';
        b <= '1';
        wait for 20 ns;
        assert(sum='1') report "0/1 sum" severity error;
        assert(car='0') report "0/1 car" severity error;

        a <= '1';
        b <= '0';
        wait for 20 ns;
        assert(sum='1') report "1/0 sum" severity error;
        assert(car='0') report "1/0 car" severity error;

        a <= '1';
        b <= '1';
        wait for 20 ns;
        assert(sum='0') report "1/1 sum" severity error;
        assert(car='1') report "1/1 car" severity error;
    end process;

end architecture;
