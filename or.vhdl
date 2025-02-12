library IEEE;
use IEEE.std_logic_1164.all;

-- define structure of entity
entity orGate is 
    -- declare inputs and outputs for entity
    port (
    	input1: in std_logic;
        input2: in std_logic;
        output: out std_logic
    );
end orGate;

-- define behavior of entity
architecture orGateA of orGate is
begin
    output <= input1 or input2;
end orGateA;
