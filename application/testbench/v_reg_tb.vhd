------------------------------------------------------------
-- Module: v_reg_tb
-- Description: Digit register module testbench
-- Authors: David Wolovelsky y Joaquin Gonzalez
-- ED1 - UNSAM
-- 2019
------------------------------------------------------------

library ieee;
use IEEE.std_logic_1164.all;

use work.matrix_type.all;

entity v_reg_tb is
end;

architecture v_reg_tb_a of v_reg_tb is
	
	signal clk_tb: std_logic := '0';
    signal rst_tb: std_logic := '1';
    signal ena_tb: std_logic := '0';

    signal D1_tb: std_logic_vector(3 downto 0);	
    signal D2_tb: std_logic_vector(3 downto 0);	
    signal D3_tb: std_logic_vector(3 downto 0);
    signal point_tb: std_logic_vector(3 downto 0);
    signal V_tb: std_logic_vector(3 downto 0);
    
    signal D_tb : matrix := ("0000", "0101", "0110", "1000", "1001");

begin
    clk_tb <= not clk_tb after 10 ns;
    rst_tb <= '0' after 50 ns;
    ena_tb <= '1' after 100 ns, '0' after 150 ns;
    D_tb <= ("1001", "0101", "0000", "0110", "1000") after 200 ns;

    block_instance: entity work.v_reg port map(
            clk => clk_tb,
            rst => rst_tb,
            ena => ena_tb,
            D1 => D1_tb,
            D2 => D2_tb,
            D3 => D3_tb,
            point => point_tb,
            V => V_tb,
            D_reg => D_tb
    );
end v_reg_tb_a ; -- v_reg_tb