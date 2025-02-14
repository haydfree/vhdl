library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb is
end entity;

architecture test of tb is 

    signal x, y, c_in, q, c_out: std_logic_vector(15 downto 0) := (others => '0');
    signal zx,zy,nx,ny,f,no,zr,ng: std_logic;

begin

    alu_ins: entity work.alu
    port map(
        x=>x, y=>y, c_in=>c_in,
        zx=>zx, zy=>zy, nx=>nx, ny=>ny, f=>f, no=>no,
        q=>q, c_out=>c_out, zr=>zr, ng=>ng);

    process is
    begin
        
        zx <= '0'; 
        nx <= '0'; 
        zy <= '0'; 
        ny <= '0'; 
        f <= '0'; 
        no <= '0'; 

        wait for 20 ns;

        report integer'image(to_integer(unsigned(q))); 
        wait;
    end process;

end architecture;
