library IEEE;
use IEEE.std_logic_1164.all;

entity HACK_FULL_ADDER_4 is
    port(
        IN0, IN1: in std_logic_vector(3 downto 0);
        CIN: in std_logic := '0';
        SUM: out std_logic_vector(3 downto 0);
        COUT: out std_logic
    );
end entity;

architecture rtl of HACK_FULL_ADDER_4 is
    signal CARRY: std_logic_vector(2 downto 0);
begin
    CARRY(CARRY'right) <= CIN;
    gen: for i in 0 to 1 generate
        constant hi: integer := (((IN0'left+1)/2)*i)+(((IN0'left+1)/2)-1);
        constant lo: integer := ((IN0'left+1)/2)*i;
    begin
        uHACK_FULL_ADDER_2: entity work.HACK_FULL_ADDER_2 port map(IN0=>IN0(hi downto lo),
                                                                   IN1=>IN1(hi downto lo), 
                                                                   CIN=>CARRY(i), 
                                                                   SUM=>SUM(hi downto lo), 
                                                                   COUT=>CARRY(i+1));
    end generate;
    COUT <= CARRY(CARRY'left);
end architecture;
