library IEEE;
use IEEE.std_logic_1164.all;

entity inc_16 is
    port(
        a: in std_logic_vector(15 downto 0) := (others => '0');
        q: out std_logic_vector(15 downto 0) := (others => '0')
    );

end entity;

architecture rtl of inc_16 is 
    
    signal one: std_logic_vector(15 downto 0) := (others => '1');

begin
    q <= (a xor one);

end architecture;
