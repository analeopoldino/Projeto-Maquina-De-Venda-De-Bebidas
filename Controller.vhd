-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: Controller.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Data: Novembro de 2025
-- Descricao: Implementacao da unidade de controle (FSM)
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controller is
    port(
        clk 			  : in std_logic;
        rst 			  : in std_logic;
		
        
        inserir_moeda 	  : in std_logic;
        selecionar_bebida : in std_logic;
        cancelar_operacao : in std_logic;
        confirmar_compra  : in std_logic;
        estoque_disponivel: in std_logic;

        lt, eq, gt        : in std_logic;
        resultado_zero    : in std_logic;
        
        liberar_bebida    : out std_logic;
        liberar_retorno   : out std_logic;
        
        valor_ld, valor_clr : out std_logic;
        total_ld, total_clr : out std_logic;
        retorno_ld, retorno_clr : out std_logic;
        sel_retorno : out std_logic
    );
end controller;

architecture rtl of controller is

    type Tipo_Estado is (
        Inicio, -- Estado inicial
        Espera, -- Esperando o usuario tomar uma decisao
        Seleciona, -- Escolha da bebida
        Moeda, -- Inserindo moeda
        Dispensa, -- Valor suficiente e usuario confirmou a compra
        Retorno -- 
    );
    
    -- Sinais para guardar o estado
    signal estado_atual, proximo_estado : Tipo_Estado;

begin
	-- Logica sequencial
    process(clk, rst)
    begin
        if rst = '1' then
            estado_atual <= Inicio;
        elsif rising_edge(clk) then
            estado_atual <= proximo_estado;
        end if;
    end process;
	
    -- Logica combinacional, para decidir qual devem ser as saidas 
    process(estado_atual, inserir_moeda, selecionar_bebida, cancelar_operacao,
            confirmar_compra, estoque_disponivel, lt, eq, gt, resultado_zero)
    begin
        liberar_bebida <= '0';
        liberar_retorno <= '0';

        valor_ld <= '0';
        valor_clr <= '0';
        total_ld <= '0';
        total_clr <= '0';
        retorno_ld <= '0';
        retorno_clr <= '0';

        sel_retorno <= '0';
		
        -- Logica da FSM
        case estado_atual is
			
            
            -- Estado inicial
            when Inicio =>
                valor_clr   <= '1';
                total_clr   <= '1';
                retorno_clr <= '1';
                proximo_estado <= Espera;
			
            -- Estado de espera, aguardando decisao do usuario
            when Espera =>
                if selecionar_bebida = '1' then
                    proximo_estado <= Seleciona;
                else
                    proximo_estado <= Espera;
                end if;
                
			-- Estado de selecionar bebida, aguardando insercao de moeda ou 				cancelamento
            when Seleciona =>
                if cancelar_operacao = '1' then
                    proximo_estado <= Inicio;
                elsif inserir_moeda = '1' and estoque_disponivel = '1' then
                    valor_ld <= '1';
                    proximo_estado <= Moeda;
                elsif inserir_moeda = '1' and estoque_disponivel = '0' then
                    proximo_estado <= Espera;
                else
                    proximo_estado <= Seleciona;
                end if;
			
            -- Estado de insercao de moedas, usuario pode cancelar, verifica se 			o total de moedas  e >= valor da bebida
            when Moeda =>
                if cancelar_operacao = '1' then
                    sel_retorno <= '1';
                    retorno_ld <= '1';
                    proximo_estado <= Retorno;

                elsif inserir_moeda = '1' then
                    total_ld <= '1';
                    proximo_estado <= Moeda;

                elsif confirmar_compra = '1' and (eq = '1' or gt = '1') then
                    proximo_estado <= Dispensa;

                else
                    proximo_estado <= Moeda;
                end if;
			
            -- 
            when Dispensa =>
                liberar_bebida <= '1';
                
                if gt = '1' then
                    sel_retorno <= '0';
                    retorno_ld <= '1';
                    proximo_estado <= Retorno;
                elsif eq = '1' then
                    proximo_estado <= Inicio;
                end if;

            when Retorno =>
                liberar_retorno <= '1';
                if resultado_zero = '1' then
                    proximo_estado <= Inicio;
                else
                    proximo_estado <= Retorno;
                end if;
        end case;
    end process;
end rtl;