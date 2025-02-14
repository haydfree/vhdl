library IEEE;
use IEEE.std_logic_1164.all;

entity HALF_ADDER is
    port(
        a: in std_logic;
        b: in std_logic;
        q: out std_logic
    );
end entity;

architecture rtl of HALF_ADDER is 

begin
    q <= a and b;

end architecture;
