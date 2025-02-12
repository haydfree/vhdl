library IEEE;
use IEEE.std_logic_1164.all;

entity gateAnd is
	port(
    	a: in std_logic;
        b: in std_logic;
        q: out std_logic;
    );
end gateAnd;

architecture gateAndArch of gateAnd is
begin
	q <= a and b;
end gateAndArch;
