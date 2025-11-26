-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: Controller.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao da logica da maquina de estados (FSM)
-- =======================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity controller is
    port(
        clk                : in std_logic;
        rst                : in std_logic;

        -- Entradas de controle
        inserir_moeda      : in std_logic;
        selecionar_bebida  : in std_logic;
        cancelar_operacao  : in std_logic;
        confirmar_compra   : in std_logic;
        estoque_disponivel : in std_logic;

        -- Sinais do datapath
        lt, eq, gt         : in std_logic;
        resultado_zero     : in std_logic;
        moeda_valida       : in std_logic;

        -- Saídas de controle (para o datapath)
        liberar_bebida     : out std_logic;
        liberar_retorno    : out std_logic;

        valor_ld, valor_clr     : out std_logic;
        total_ld, total_clr     : out std_logic;
        retorno_ld, retorno_clr : out std_logic;

        sel_retorno : out std_logic;
        retorno_dec : out std_logic
    );
end controller;

architecture rtl of controller is

    ---------------------------------------------------------------------
    -- Declaracao dos estados
    ---------------------------------------------------------------------
    type Tipo_Estado is (
        Inicio,
        Espera,
        Seleciona,
        Moeda,
        Dispensa,
        Retorno
    );

    signal estado_atual, proximo_estado : Tipo_Estado;

    -- Deteccao de borda da moeda
    signal moeda_valida_ant : std_logic;
    signal moeda_edge       : std_logic;

begin

    ---------------------------------------------------------------------
    -- Registrador de estado (Processo síncrono)
    ---------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            estado_atual      <= Inicio;
            moeda_valida_ant  <= '0';

        elsif rising_edge(clk) then
            estado_atual      <= proximo_estado;
            moeda_valida_ant  <= moeda_valida;
        end if;
    end process;

    ---------------------------------------------------------------------
    -- Detecção de borda de subida da moeda válida
    ---------------------------------------------------------------------
    moeda_edge <= '1' when (moeda_valida = '1' and moeda_valida_ant = '0') else '0';

    ---------------------------------------------------------------------
    -- FSM (Processo combinacional)
    ---------------------------------------------------------------------
    process(
        estado_atual,
        inserir_moeda, selecionar_bebida, cancelar_operacao,
        confirmar_compra, estoque_disponivel,
        lt, eq, gt, resultado_zero, moeda_edge
    )
    begin

        -- =======================
        -- Valores default
        -- =======================
        liberar_bebida   <= '0';
        liberar_retorno  <= '0';

        valor_ld         <= '0';
        valor_clr        <= '0';
        total_ld         <= '0';
        total_clr        <= '0';

        retorno_ld       <= '0';
        retorno_clr      <= '0';
        retorno_dec      <= '0';

        sel_retorno      <= '0';

        proximo_estado   <= estado_atual;

        -- =======================
        -- Máquina de estados
        -- =======================
        case estado_atual is

            ------------------------------------------------------------------
            -- Estado de inicializacao
            ------------------------------------------------------------------
            when Inicio =>
                valor_clr   <= '1';
                total_clr   <= '1';
                retorno_clr <= '1';
                proximo_estado <= Espera;

            ------------------------------------------------------------------
            -- Aguarda selecao de bebida
            ------------------------------------------------------------------
            when Espera =>
                if selecionar_bebida = '1' then
                    proximo_estado <= Seleciona;
                end if;

            ------------------------------------------------------------------
            -- Selecao da bebida
            ------------------------------------------------------------------
            when Seleciona =>
                if cancelar_operacao = '1' then
                    proximo_estado <= Inicio;

                elsif inserir_moeda = '1' and estoque_disponivel = '1' then
                    valor_ld <= '1';
                    proximo_estado <= Moeda;

                elsif inserir_moeda = '1' and estoque_disponivel = '0' then
                    proximo_estado <= Espera;
                end if;

            ------------------------------------------------------------------
            -- Recebendo moedas
            ------------------------------------------------------------------
            when Moeda =>
                if cancelar_operacao = '1' then
                    sel_retorno <= '1';
                    retorno_ld  <= '1';
                    proximo_estado <= Retorno;

                elsif moeda_edge = '1' and inserir_moeda = '1' then
                    total_ld <= '1';
                    proximo_estado <= Moeda;

                elsif confirmar_compra = '1' and (eq = '1' or gt = '1') then
                    proximo_estado <= Dispensa;
                end if;

            ------------------------------------------------------------------
            -- Dispensa da bebida
            ------------------------------------------------------------------
            when Dispensa =>
                if confirmar_compra = '1' then
                    liberar_bebida <= '0';
                    proximo_estado  <= Dispensa;

                else
                    liberar_bebida <= '1';

                    if gt = '1' then
                        sel_retorno <= '0';
                        retorno_ld  <= '1';
                        proximo_estado <= Retorno;

                    else
                        proximo_estado <= Inicio;
                    end if;
                end if;

            ------------------------------------------------------------------
            -- Devolvendo troco
            ------------------------------------------------------------------
            when Retorno =>
                if cancelar_operacao = '1' then
                    liberar_retorno <= '0';

                else
                    liberar_retorno <= '1';

                    if resultado_zero = '0' then
                        retorno_dec <= '1';
                    else
                        proximo_estado <= Inicio;
                    end if;
                end if;
        end case;
    end process;
end rtl;