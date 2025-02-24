library IEEE;
use IEEE.std_logic_1164.all;

entity gateNand is
	port(
    	a: in std_logic;
        b: in std_logic;
        q: out std_logic;
    );
end gateNand;

architecture gateNandArch of gateNand is
begin
	q <= not (a and b);
end gateNandArch;
