library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
    port(
        a: in std_logic;
        b: in std_logic;
        c_in: in std_logic;
        sum: out std_logic;
        c_out: out std_logic
    );
end entity;

architecture rtl of full_adder is

begin

    sum <= (a xor b) xor (c_in);
    c_out <= ((a xor b) and (c_in)) or (a and b); 

end architecture;
