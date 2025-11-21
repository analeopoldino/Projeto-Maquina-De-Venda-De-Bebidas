-- ===========================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: testbench_subtractor.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do testbench do Subtrator
-- ===========================================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity tb_subtractor is
end entity;

architecture sim of tb_subtractor is
    component subtractor
        port (
            a, b   : in std_logic_vector(7 downto 0);
            result : out std_logic_vector(7 downto 0)
        );
    end component;

    signal s_a, s_b, s_res : std_logic_vector(7 downto 0);
begin
    DUT: subtractor port map (a => s_a, b => s_b, result => s_res);

    process
    begin
        report "=== TESTE SUBTRATOR INICIADO ===";
        
        -- Teste 1: 10 - 2 = 8 (Troco simples)
        s_a <= "00001010"; s_b <= "00000010";
        wait for 10 ns;
        assert (s_res = "00001000") report "Falha: 10-2" severity error;

        -- Teste 2: 2 - 1 = 1 (Decremento do retorno)
        s_a <= "00000010"; s_b <= "00000001";
        wait for 10 ns;
        assert (s_res = "00000001") report "Falha: 2-1" severity error;

        -- Teste 3: 1 - 1 = 0 (Fim do retorno)
        s_a <= "00000001"; s_b <= "00000001";
        wait for 10 ns;
        assert (s_res = "00000000") report "Falha: 1-1" severity error;

        report "=== TESTE SUBTRATOR CONCLUIDO ===";
        wait;
    end process;
end architecture;