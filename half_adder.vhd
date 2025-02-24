library IEEE;
use IEEE.std_logic_1164.all;

entity HALF_ADDER is
    port(
        a: in std_logic;
        b: in std_logic;
        sum: out std_logic;
        car: out std_logic
    );
end entity;

architecture rtl of HALF_ADDER is 

begin
    sum <= a xor b;
    car <= a and b;

end architecture;
