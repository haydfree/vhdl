library IEEE;
use IEEE.std_logic_1164.all;

entity gateXor is
	port(
    	a, b: in std_logic;
        q: out std_logic;
    );
end gateXor;

architecture rtl of gateXor is
begin
	q <= a xor b;
end rtl;
