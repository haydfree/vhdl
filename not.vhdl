library IEEE;
use IEEE.std_logic_1164.all;

entity gateNot is
	port(
		a: in std_logic;
        q: out std_logic;
    );
end gateNot;

architecture gateNotArch of gateNot is
begin
	q <= not a;
end gateNotArch;
