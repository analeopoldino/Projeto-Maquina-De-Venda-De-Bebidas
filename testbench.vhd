-- ===========================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: testbench.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do testbench do top level
-- ===========================================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity tb_maquina_de_venda_de_bebidas is
end entity;

architecture tb of tb_maquina_de_venda_de_bebidas is

    component maquina_de_venda_de_bebidas_top_level
        port (
            clk     		   : in  std_logic;
            rst     	       : in  std_logic;
            inserir_moeda      : in  std_logic;
            selecionar_bebida  : in  std_logic;      
            selecao_bebida     : in  std_logic_vector(1 downto 0); 
            cancelar_operacao  : in  std_logic;
            confirmar_compra   : in  std_logic;
            valor_moeda        : in  unsigned(3 downto 0);
            estoque_disponivel : in  std_logic;
            liberar_bebida     : out std_logic;
            liberar_retorno    : out std_logic
        );
    end component;

    constant CLK_PERIOD : time := 10 ns;
    
    -- Constantes de valores das moedas
    constant M_25C : unsigned(3 downto 0) := to_unsigned(1, 4); 
    constant M_50C : unsigned(3 downto 0) := to_unsigned(2, 4); 
    constant M_1R  : unsigned(3 downto 0) := to_unsigned(4, 4);
    
    -- Constantes dos valores de selecao relacionados a cada bebida
    constant BEBIDA_A : std_logic_vector(1 downto 0) := "00";  
    constant BEBIDA_B : std_logic_vector(1 downto 0) := "01";  
    constant BEBIDA_C : std_logic_vector(1 downto 0) := "10";
    constant BEBIDA_D : std_logic_vector(1 downto 0) := "11";

    -- Sinais
    signal s_clk, s_rst : std_logic := '0';
    signal s_inserir_moeda, s_selecionar, s_cancelar, s_confirmar, s_estoque : std_logic := '0';
    signal s_selecao : std_logic_vector(1 downto 0) := (others => '0');
    signal s_valor : unsigned(3 downto 0) := (others => '0');
    signal s_libera_bebida, s_libera_retorno : std_logic;
    signal g_stop : boolean := false;

begin

    UUT : maquina_de_venda_de_bebidas_top_level
        port map(
          clk 					=> s_clk,
          rst 					=> s_rst,
          inserir_moeda 		=> s_inserir_moeda,
          selecionar_bebida 	=> s_selecionar,
          selecao_bebida 		=> s_selecao,
          cancelar_operacao 	=> s_cancelar,
          confirmar_compra 		=> s_confirmar,
          valor_moeda 			=> s_valor,
          estoque_disponivel 	=> s_estoque,
          liberar_bebida 		=> s_libera_bebida,
          liberar_retorno 		=> s_libera_retorno
        );

    clk_process : process begin
        while not g_stop loop
            s_clk <= '0'; wait for CLK_PERIOD/2;
            s_clk <= '1'; wait for CLK_PERIOD/2;
        end loop; wait;
    end process;

    stim_proc : process begin
    
        report "=== INICIO ===";
        s_rst 		<= '1'; 
        s_estoque 	<= '1';
        wait for 3*CLK_PERIOD; 
        
        s_rst <= '0'; 
        wait for 2*CLK_PERIOD;
		
        ---------------------------------------------------------------------------------------
        -- TESTE 1: Compra Exata (6)
        ---------------------------------------------------------------------------------------
        
        -- Seleciona a bebida
        s_selecao <= BEBIDA_A;
        
        -- Registra a bebida selecionada
        s_selecionar <= '1'; 
        wait for CLK_PERIOD;
        
        s_selecionar <= '0';
        wait for 2*CLK_PERIOD;

        -- Liga chave de insercao
        s_inserir_moeda <= '1'; 
        wait for 2*CLK_PERIOD;
        ------------------------
        -- Moeda 1 (1)
        ------------------------
        s_valor <= M_25C; 
        wait for 2*CLK_PERIOD;
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;
        
        ------------------------
        -- Moeda 2 (1)
        ------------------------
        s_valor <= M_25C; 
        wait for 2*CLK_PERIOD;
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;
        
        ------------------------
        -- Moeda 3 (4)
        ------------------------
        s_valor <= M_1R; 
        wait for 2*CLK_PERIOD; 
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;

        -- Desliga chave de inserção
        s_inserir_moeda <= '0';
        wait for CLK_PERIOD;

		------------------------
        -- Confirma
        ------------------------
        s_confirmar <= '1'; 
        wait for 2*CLK_PERIOD; 
        
        s_confirmar <= '0';

        wait for 10*CLK_PERIOD;


		---------------------------------------------------------------------------------------
        -- TESTE 2: Troco (8, pagou 10)
		---------------------------------------------------------------------------------------

        -- Seleciona bebida
        s_selecao <= BEBIDA_B;
        
        
        -- Registra a bebida selecionada
        s_selecionar <= '1'; 
        wait for CLK_PERIOD; 
        
        s_selecionar <= '0';
        wait for 2*CLK_PERIOD;

		-- Liga chave de insercao
        s_inserir_moeda <= '1';
        
        ------------------------
        -- Moeda 3 (4)
        ------------------------

        s_valor <= M_1R; 
        wait for 2*CLK_PERIOD;
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;

        ------------------------
        -- Moeda 3 (4)
        ------------------------
        s_valor <= M_1R; 
        wait for 2*CLK_PERIOD; 
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;
    
        ------------------------
        -- Moeda 2 (2)
        ------------------------
        s_valor <= M_50C; 
        wait for 2*CLK_PERIOD; 
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;
        
        -- Desliga chave de insercao
        s_inserir_moeda <= '0';

        ------------------------
        -- Confirma
        ------------------------
        s_confirmar <= '1'; 
        wait for 2*CLK_PERIOD; 
        
        s_confirmar <= '0';
        wait for 20*CLK_PERIOD;

		---------------------------------------------------------------------------------------
        -- TESTE 3: Cancelamento
        ---------------------------------------------------------------------------------------
        -- Selecioan bebida
        s_selecao <= BEBIDA_C;
        
        -- Registra bebida selecionada
        s_selecionar <= '1';
        wait for CLK_PERIOD; 
        
        s_selecionar <= '0';
        wait for 2*CLK_PERIOD;
        
        -- Liga chave de isercao
        s_inserir_moeda <= '1';
        
        ------------------------
        -- Moeda 2 (2)
        ------------------------
        s_valor <= M_50C; 
        wait for 2*CLK_PERIOD; 
        
        s_valor <= (others=>'0'); 
        wait for 2*CLK_PERIOD;
        
        ------------------------
        -- Cancela
        ------------------------
        s_cancelar <= '1';
        wait for 2*CLK_PERIOD; 
        
        s_cancelar <= '0';
        
        -- Desliga chave de insercao
        s_inserir_moeda <= '0';

        wait for 15*CLK_PERIOD;
        
        ---------------------------------------------------------------------------------------
        -- TESTE 4: Sem Estoque
        ---------------------------------------------------------------------------------------
        -- Selecioan bebida
        s_selecionar <= '1'; 
        wait for CLK_PERIOD; 
        
        s_selecionar <= '0';
        wait for 2*CLK_PERIOD;
        
        -- Estoque indisponivel
        s_estoque <= '0';
        wait for CLK_PERIOD;
        
        -- Liga chave de inserir
        s_inserir_moeda <= '1'; -- Tenta inserir
        wait for 4*CLK_PERIOD; -- Nada deve acontecer no reg_total
        
        s_inserir_moeda <= '0';

		---------------------------------------------------------------------------------------
        g_stop <= true;
        wait;
    end process;
end architecture;