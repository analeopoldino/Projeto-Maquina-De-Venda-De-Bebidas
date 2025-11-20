-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: testbench.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Data: Novembro de 2025
-- Descricao: Implementacao do testbench
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_maquina_de_venda_de_bebidas is
end entity;

architecture simulacao of tb_maquina_de_venda_de_bebidas is

    component maquina_de_venda_de_bebidas_top_level
        port (
            clk     : in std_logic;
            rst     : in std_logic;
            inserir_moeda      : in std_logic;
            selecionar_bebida  : in std_logic; 
            selecao_bebida     : in std_logic_vector(1 downto 0);
            cancelar_operacao  : in std_logic;
            confirmar_compra   : in std_logic;
            valor_moeda        : in unsigned(3 downto 0);
            estoque_disponivel : in std_logic;
            liberar_bebida     : out std_logic;
            liberar_retorno    : out std_logic
        );
    end component;

    -- Constante para o periodo de clock
    constant CLK_PERIOD : time := 10 ns;

    -- Constantes para mapear o valor das moedas (assumindo unidades: 1, 2, 4)
    constant M_25C : unsigned(3 downto 0) := to_unsigned(1, 4); 
    constant M_50C : unsigned(3 downto 0) := to_unsigned(2, 4); 
    constant M_1R  : unsigned(3 downto 0) := to_unsigned(4, 4);

    -- Constantes para mapeear o codigo das bebidas
    constant BEBIDA_A : std_logic_vector(1 downto 0) := "00";  -- preco = 6
    constant BEBIDA_B : std_logic_vector(1 downto 0) := "01";  -- preco = 8
    constant BEBIDA_C : std_logic_vector(1 downto 0) := "10";  -- preco = 10
    constant BEBIDA_D : std_logic_vector(1 downto 0) := "11";  -- preco = 12

    -- Sinais para conectar ao UUT
    signal s_clk     : std_logic := '0';
    signal s_rst     : std_logic := '0';
    signal s_inserir_moeda     : std_logic := '0';
    signal s_selecionar_bebida : std_logic := '0';
    signal s_selecao_bebida    : std_logic_vector(1 downto 0) := (others => '0');
    signal s_cancelar_operacao : std_logic := '0';
    signal s_confirmar_compra  : std_logic := '0';
    signal s_valor_moeda       : unsigned(3 downto 0) := (others => '0');
    signal s_estoque_disponivel: std_logic := '1';
    signal s_liberar_bebida    : std_logic;
    signal s_liberar_retorno   : std_logic;

    signal g_sim_stop_clock : boolean := false;

begin

    -- Instanciacao do UUT
    UUT : maquina_de_venda_de_bebidas_top_level
        port map(
            clk     => s_clk,
            rst     => s_rst,
            inserir_moeda     => s_inserir_moeda,
            selecionar_bebida => s_selecionar_bebida,
            selecao_bebida    => s_selecao_bebida,
            cancelar_operacao => s_cancelar_operacao,
            confirmar_compra  => s_confirmar_compra,
            valor_moeda       => s_valor_moeda,
            estoque_disponivel => s_estoque_disponivel,
            liberar_bebida    => s_liberar_bebida,
            liberar_retorno   => s_liberar_retorno
        );

    -- Processo do Clock
    clk_process: process
    begin
        while not g_sim_stop_clock loop
            s_clk <= '0';
            wait for CLK_PERIOD / 2;
            s_clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Processo de estimulos 
    stim_proc: process
    begin
        report "== INICIO DA SIMULACAO ==";

        -- Reset inicial
        s_rst <= '1';
        s_estoque_disponivel <= '1';
        wait for 3 * CLK_PERIOD;
        s_rst <= '0';
        wait for 2 * CLK_PERIOD;

        -- ================================================================
        report "== TESTE 1: Compra simples (Bebida A, preco=6), pagamento exato ==";
        -- ================================================================
        
        -- Seleciona bebida
        s_selecao_bebida <= BEBIDA_A;
        s_selecionar_bebida <= '1';
        wait for CLK_PERIOD;
        s_selecionar_bebida <= '0';
        wait for 2*CLK_PERIOD;

        -- Ativa modo de inserção
        s_inserir_moeda <= '1';

        -- Moeda 1 (25c)
        s_valor_moeda <= M_25C;
        wait for CLK_PERIOD;
     
        -- Moeda 2 (25c)
        s_valor_moeda <= M_1R;
        wait for CLK_PERIOD;

        -- Moeda 3 (1 real)
        s_valor_moeda <= M_25C;
        wait for CLK_PERIOD;
        s_valor_moeda <= (others => '0');

        -- Agora DESLIGA inserir_moeda
        s_inserir_moeda <= '0';

        -- Confirma compra
        s_confirmar_compra <= '1';
        wait for CLK_PERIOD;
        s_confirmar_compra <= '0';
        
        -- Espera a FSM liberar bebida e voltar ao inicio
        wait for 6 * CLK_PERIOD;

        -- ================================================================
        report "== TESTE 2: Compra com troco (Bebida B, preco=8), paga com 10 (2x1R + 1x50C) ==";
        -- ================================================================
     
     	-- bebida de 2 paga com 2.50   
        s_selecao_bebida <= BEBIDA_B;
        s_selecionar_bebida <= '1';
        wait for CLK_PERIOD;
        s_selecionar_bebida <= '0';
        wait for CLK_PERIOD;

        -- Inserir moedas
        s_valor_moeda <= M_1R;  -- Moeda 1
        s_inserir_moeda <= '1'; wait for CLK_PERIOD; s_inserir_moeda <= '0'; wait for CLK_PERIOD;
        s_valor_moeda <= M_1R;  -- Moeda 2
        s_inserir_moeda <= '1'; wait for CLK_PERIOD; s_inserir_moeda <= '0'; wait for CLK_PERIOD;
        s_valor_moeda <= M_50C; -- Moeda 3
        s_inserir_moeda <= '1'; wait for CLK_PERIOD; s_inserir_moeda <= '0'; wait for CLK_PERIOD;

        -- Confirma a compra
        s_confirmar_compra <= '1';
        wait for CLK_PERIOD;
        s_confirmar_compra <= '0';

        wait for 15 * CLK_PERIOD;

        -- ================================================================
        report "== TESTE 3: Compra cancelada (Bebida C) ==";
        -- ================================================================
        
        -- Teste da entrada cancela operacao
        s_selecao_bebida <= BEBIDA_C;
        s_selecionar_bebida <= '1';
        wait for CLK_PERIOD;
        s_selecionar_bebida <= '0';
        wait for CLK_PERIOD;

		s_inserir_moeda <= '1';

        -- Insere uma moeda de 0.50 (2)
        s_valor_moeda <= M_50C;
        wait for CLK_PERIOD;

        -- Cancela operacao
        s_cancelar_operacao <= '1';
        wait for CLK_PERIOD;
        s_cancelar_operacao <= '0';

        wait for 10 * CLK_PERIOD;

        -- Fim
        report "== FIM DA SIMULACAO ==";
        g_sim_stop_clock <= true;
        wait;
    end process;

end architecture;