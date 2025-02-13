library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULBIT_MUX is

    port(
    	a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        s: in std_logic;
        q: out std_logic_vector(15 downto 0);
    );

end entity;

architecture rlt of CHIP_MULBIT_MUX is

begin
    process(a,b,s) is
    begin
        q <= (a nand (s nand s)) nand (b nand s);
    end process;

end architecture;

library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_MULWAY_MULBIT_MUX is

    port(
        a: in std_logic_vector(15 downto 0) := (others => '0');
        b: in std_logic_vector(15 downto 0) := (others => '0');
        c: in std_logic_vector(15 downto 0) := (others => '0');
        d: in std_logic_vector(15 downto 0) := (others => '0');
        s: in std_logic_vector(1 downto 0);
        q: out std_logic_vector(15 downto 0) := (others => '0');
    );

end entity;

architecture rlt of CHIP_MULWAY_MULBIT_MUX is
	
    signal ab, cd: std_logic_vector(15 downto 0);

begin
    
    mux1: entity work.CHIP_MULBIT_MUX port map(a=>a, b=>b, s=>s(0), q=>ab);
    mux2: entity work.CHIP_MULBIT_MUX port map(a=>c, b=>d, s=>s(0), q=>cd);
    mux3: entity work.CHIP_MULBIT_MUX port map(a=>ab, b=>cd, s=>s(1), q=>q);

end architecture; 

library IEEE;
use IEEE.std_logic_1164.all;

entity CHIP_16WAY_MULBIT_MUX is

    port(
        a: in std_logic_vector(15 downto 0) := (others => '0');
        b: in std_logic_vector(15 downto 0) := (others => '0');
        c: in std_logic_vector(15 downto 0) := (others => '0');
        d: in std_logic_vector(15 downto 0) := (others => '0');
        e: in std_logic_vector(15 downto 0) := (others => '0');
        f: in std_logic_vector(15 downto 0) := (others => '0');
        g: in std_logic_vector(15 downto 0) := (others => '0');
        h: in std_logic_vector(15 downto 0) := (others => '0');
        s: in std_logic_vector(2 downto 0);
        q: out std_logic_vector(15 downto 0) := (others => '0');
    );

end entity;

architecture rlt of CHIP_16WAY_MULBIT_MUX is
	
    signal ab, cd, ef, gh, abcd, efgh: std_logic_vector(15 downto 0);

begin
    
    mux1: entity work.CHIP_MULBIT_MUX port map(a=>a, b=>b, s=>s(0), q=>ab);
    mux2: entity work.CHIP_MULBIT_MUX port map(a=>c, b=>d, s=>s(0), q=>cd);
    mux3: entity work.CHIP_MULBIT_MUX port map(a=>e, b=>f, s=>s(0), q=>ef);
    mux4: entity work.CHIP_MULBIT_MUX port map(a=>g, b=>h, s=>s(0), q=>gh);
    
    mux5: entity work.CHIP_MULBIT_MUX port map(a=>ab, b=>cd, s=>s(1), q=>abcd);
    mux6: entity work.CHIP_MULBIT_MUX port map(a=>ef, b=>gh, s=>s(1), q=>efgh);
    
    mux7: entity work.CHIP_MULBIT_MUX port map(a=>abcd, b=>efgh, s=>s(2), q=>q);
    

end architecture; 
