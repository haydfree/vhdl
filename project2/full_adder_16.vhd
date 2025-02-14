library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_16 is
    port(
        a: in std_logic_vector(15 downto 0) := (others => '0');
        b: in std_logic_vector(15 downto 0) := (others => '0');
        c_in: in std_logic_vector(15 downto 0) := (others => '0');
        sum: out std_logic_vector(15 downto 0) := (others => '0');
        c_out: out std_logic_vector(15 downto 0) := (others => '0')
    );
end entity;

architecture rtl of full_adder_16 is

begin

    sum <= (a xor b) xor (c_in);
    c_out <= ((a xor b) and (c_in)) or (a and b); 

end architecture;
