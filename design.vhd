-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: Datapath.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Data: Novembro de 2025
-- Descricao: Implementacao do Datapath
-- =======================================================================


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity maquina_de_venda_de_bebidas_top_level is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
		
        -- Entradas para a controladora
        inserir_moeda      : in std_logic;
        selecionar_bebida  : in std_logic;     
        cancelar_operacao  : in std_logic;
        confirmar_compra   : in std_logic;
        estoque_disponivel : in std_logic;
        
        -- Entrada para o datapath
        selecao_bebida     : in std_logic_vector(1 downto 0); 
		valor_moeda        : in unsigned(3 downto 0);
        
        -- Saídas
        liberar_bebida     : out std_logic;
        liberar_retorno    : out std_logic
    );
end entity;

architecture structural of maquina_de_venda_de_bebidas_top_level is
    -- Sinais Datapath para Controller
    signal s_lt           : std_logic; -- Total < Preco
    signal s_eq           : std_logic; -- Total = Preco
    signal s_gt	 		  : std_logic; -- Total > Preco
    signal s_retorno_zero : std_logic; -- 
    
    -- Sinais Controller para Datapath
    signal s_valor_ld, s_valor_clr : std_logic; 
    signal s_total_ld, s_total_clr : std_logic;
    signal s_retorno_ld, s_retorno_clr : std_logic;
    signal s_sel_retorno : std_logic;
   

begin
    U_controller : entity work.controller
        port map (
            clk => clk,
            rst => rst,
            inserir_moeda      => inserir_moeda,
            selecionar_bebida  => selecionar_bebida,
            cancelar_operacao  => cancelar_operacao,
            confirmar_compra   => confirmar_compra,
            estoque_disponivel => estoque_disponivel,
            lt => s_lt,
            eq => s_eq,
            gt => s_gt,
            
            resultado_zero => s_retorno_zero, 
            
            liberar_bebida     => liberar_bebida,
            liberar_retorno    => liberar_retorno,
            valor_ld    => s_valor_ld,
            valor_clr   => s_valor_clr,
            total_ld    => s_total_ld,
            total_clr   => s_total_clr,
            retorno_ld  => s_retorno_ld,
            retorno_clr => s_retorno_clr,
            sel_retorno => s_sel_retorno
        );

    U_datapath : entity work.datapath
        port map(
            clk => clk,
            rst => rst,
            
            -- Sinais do Controlador
            valor_ld    => s_valor_ld,
            valor_clr   => s_valor_clr,
            total_ld    => s_total_ld,
            total_clr   => s_total_clr,
            retorno_ld  => s_retorno_ld,
            retorno_clr => s_retorno_clr,
            sel_retorno => s_sel_retorno,
            
            -- Entradas externas
            selecao_bebida => selecao_bebida,
            valor_moeda    => valor_moeda,
            
            -- Saídas para o Controlador
            lt => s_lt,
            eq => s_eq,
            gt => s_gt,
            retorno_zero => s_retorno_zero 
        );
end architecture;