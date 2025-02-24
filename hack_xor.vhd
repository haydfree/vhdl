library IEEE;
use IEEE.std_logic_1164.all;

-- a xor b -> a and not b OR not a and b -> a=/=b

entity HACK_XOR is
    port(
        IN0: in std_logic;
        IN1: in std_logic;
        OUT0: out std_logic
    );
end entity;

architecture rtl of HACK_XOR is
    signal sig_not0, sig_not1, sig_and0, sig_and1: std_logic;
begin
    uHACK_NOT0: entity work.HACK_NOT port map(IN0=>IN0, OUT0=>sig_not0);
    uHACK_NOT1: entity work.HACK_NOT port map(IN0=>IN1, OUT0=>sig_not1);
    uHACK_AND0: entity work.HACK_AND port map(IN0=>IN0, IN1=>sig_not1, OUT0=>sig_and0);
    uHACK_AND1: entity work.HACK_AND port map(IN0=>IN1, IN1=>sig_not0, OUT0=>sig_and1);
    uHACK_OR: entity work.HACK_OR port map(IN0=>sig_and0, IN1=>sig_and1, OUT0=>OUT0);
end architecture;
