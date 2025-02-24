library IEEE;
use IEEE.std_logic_1164.all;

entity alu is

    port(
        x,y,c_in: in std_logic_vector(15 downto 0) := (others => '0');

        zx,zy,nx,ny,f,no: in std_logic;

        q, c_out: out std_logic_vector(15 downto 0);
        zr,ng: out std_logic
    );

end entity;

architecture rlt of alu is

    signal x_processed, y_processed, 
    out_and, out_logic, out_arith, out_f, out_no,
    not_x_processed, not_y_processed,
    zxvec, zyvec, nxvec, nyvec, fvec, novec, 
    not_out_f: std_logic_vector(15 downto 0);

begin
    zxvec <= (others => zx);
    zyvec <= (others => zy);
    nxvec <= (others => nx);
    nyvec <= (others => ny);
    fvec <= (others => f);
    novec <= (others => no);

    mux16zx: entity work.chip_mulbit_mux port map(a=>x, b=>(others => '0'), s=>zxvec, q=>x_processed);
    not_x_processed <= not x_processed;
    mux16nx: entity work.chip_mulbit_mux port map(a=>x_processed, b=>not_x_processed, s=>nxvec, q=>x_processed);

    mux16zy: entity work.chip_mulbit_mux port map(a=>y, b=>(others => '0'), s=>zyvec, q=>y_processed);
    not_y_processed <= not y_processed;
    mux16ny: entity work.chip_mulbit_mux port map(a=>y_processed, b=>not_y_processed, s=>nyvec, q=>y_processed);

    fa:      entity work.full_adder_16   port map(a=>x_processed, b=>y_processed, c_in=>c_in, sum=>out_arith, c_out=>c_out);
    andxy:   entity work.chip_mulbit_and port map(a=>x_processed, b=>y_processed, q=>out_and);
    mux16f:  entity work.chip_mulbit_mux port map(a=>out_arith, b=>out_and, s=>fvec, q=>out_f);
    not_out_f <= not out_f;
    mux16no: entity work.chip_mulbit_mux port map(a=>out_f, b=>not_out_f, s=>novec, q=>out_no);

    q <= out_no;

end architecture;
