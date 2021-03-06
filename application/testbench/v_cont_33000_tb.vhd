------------------------------------------------------------
-- Module: v_cont_33000_tb
-- Description: 33000 binary counter testbench
-- Authors: David Wolovelsky y Joaquin Gonzalez
-- ED1 - UNSAM
-- 2019
------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;       

entity v_cont_33000_tb is
end;

architecture v_cont_33000_tb_arq of v_cont_33000_tb is
    -- Entradas (se inicializan)
    signal clk_tb : std_logic := '0';
	signal rst_tb : std_logic := '1';
    signal ena_tb : std_logic := '1';
    -- Salidas
    signal Q_tb : std_logic_vector(15 downto 0);
    signal Q_ENA_tb : std_logic;
    signal Q_RST_tb : std_logic;
	
begin 
 	clk_tb <= not clk_tb after 10 ns;
	ena_tb <= '1' after 100 ns;
	rst_tb <= '0' after 100 ns;

    block_instance : entity work.v_cont_33000 port map (
            clk => clk_tb,
            rst => rst_tb,
            ena => ena_tb,
            Q_ENA => Q_ENA_tb,
            Q_RST => Q_RST_tb,
            Q => Q_tb
        );
end;