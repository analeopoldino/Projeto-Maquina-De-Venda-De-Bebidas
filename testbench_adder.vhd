-- ===========================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: testbench_adder.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do testbench do Somador
-- ===========================================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity tb_adder is
end entity;

architecture sim of tb_adder is
    component full_adder
        port (
            a, b : in std_logic_vector(7 downto 0);
            s    : out std_logic_vector(7 downto 0)
        );
    end component;

    signal s_a, s_b, s_s : std_logic_vector(7 downto 0);
begin
    DUT: full_adder port map (a => s_a, b => s_b, s => s_s);

    process
    begin
        report "=== TESTE SOMADOR INICIADO ===";
        
        -- Teste 1: 1 + 1 = 2
        s_a <= "00000001"; s_b <= "00000001";
        wait for 10 ns;
        assert (s_s = "00000010") report "Falha: 1+1" severity error;

        -- Teste 2: 2 + 4 = 6 (O caso da sua máquina)
        s_a <= "00000010"; s_b <= "00000100";
        wait for 10 ns;
        assert (s_s = "00000110") report "Falha: 2+4" severity error;

        -- Teste 3: Carry Ripple (Estouro em cascata)
        -- 255 + 1 = 0 (em 8 bits)
        s_a <= "11111111"; s_b <= "00000001";
        wait for 10 ns;
        assert (s_s = "00000000") report "Falha: 255+1 (Carry)" severity error;

        -- Teste 4: Soma complexa (15 + 15 = 30)
        s_a <= "00001111"; s_b <= "00001111";
        wait for 10 ns;
        -- 30 em binario = 00011110
        assert (s_s = "00011110") report "Falha: 15+15" severity error;

        report "=== TESTE SOMADOR CONCLUIDO ===";
        wait;
    end process;
end architecture;