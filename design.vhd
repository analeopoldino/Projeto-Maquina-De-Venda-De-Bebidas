-- ===========================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: design.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do top level que realiza a conexao entre o Datapath e o Controller
-- ===========================================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity maquina_de_venda_de_bebidas_top_level is
    port (
        clk                : in std_logic;
        rst                : in std_logic;

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
end entity;

architecture structural of maquina_de_venda_de_bebidas_top_level is

    ----------------------------------------------------------------------------
    -- Sinais internos
    ----------------------------------------------------------------------------
    signal s_lt, s_eq, s_gt         : std_logic;
    signal s_retorno_zero           : std_logic;
    signal s_moeda_valida           : std_logic;

    signal s_valor_ld, s_valor_clr  : std_logic;
    signal s_total_ld, s_total_clr  : std_logic;
    signal s_retorno_ld, s_retorno_clr : std_logic;
    signal s_sel_retorno, s_retorno_dec : std_logic;

    ----------------------------------------------------------------------------
    -- Componentes
    ----------------------------------------------------------------------------
    component controller
        port(
            clk, rst                : in std_logic;

            inserir_moeda          : in std_logic;
            selecionar_bebida      : in std_logic;
            cancelar_operacao      : in std_logic;
            confirmar_compra       : in std_logic;
            estoque_disponivel     : in std_logic;

            lt, eq, gt             : in std_logic;
            resultado_zero         : in std_logic;
            moeda_valida           : in std_logic;

            liberar_bebida         : out std_logic;
            liberar_retorno        : out std_logic;

            valor_ld, valor_clr    : out std_logic;
            total_ld, total_clr    : out std_logic;
            retorno_ld, retorno_clr: out std_logic;

            sel_retorno            : out std_logic;
            retorno_dec            : out std_logic
        );
    end component;

    component datapath
        port (
            clk, rst               : in std_logic;

            valor_ld, valor_clr    : in std_logic;
            total_ld, total_clr    : in std_logic;
            retorno_ld, retorno_clr: in std_logic;
            sel_retorno            : in std_logic;
            retorno_dec            : in std_logic;

            selecao_bebida         : in std_logic_vector(1 downto 0);
            valor_moeda            : in unsigned(3 downto 0);

            moeda_valida           : out std_logic;
            lt, eq, gt             : out std_logic;
            retorno_zero           : out std_logic
        );
    end component;

begin

    ----------------------------------------------------------------------------
    -- Instancia do Controller
    ----------------------------------------------------------------------------
    U_Controller : controller
        port map (
            clk                => clk,
            rst                => rst,

            inserir_moeda      => inserir_moeda,
            selecionar_bebida  => selecionar_bebida,
            cancelar_operacao  => cancelar_operacao,
            confirmar_compra   => confirmar_compra,
            estoque_disponivel => estoque_disponivel,

            lt                 => s_lt,
            eq                 => s_eq,
            gt                 => s_gt,
            resultado_zero     => s_retorno_zero,
            moeda_valida       => s_moeda_valida,

            liberar_bebida     => liberar_bebida,
            liberar_retorno    => liberar_retorno,

            valor_ld           => s_valor_ld,
            valor_clr          => s_valor_clr,
            total_ld           => s_total_ld,
            total_clr          => s_total_clr,

            retorno_ld         => s_retorno_ld,
            retorno_clr        => s_retorno_clr,
            sel_retorno        => s_sel_retorno,
            retorno_dec        => s_retorno_dec
        );

    ----------------------------------------------------------------------------
    -- Instancia do Datapath
    ----------------------------------------------------------------------------
    U_Datapath : datapath
        port map (
            clk                => clk,
            rst                => rst,

            valor_ld           => s_valor_ld,
            valor_clr          => s_valor_clr,
            total_ld           => s_total_ld,
            total_clr          => s_total_clr,

            retorno_ld         => s_retorno_ld,
            retorno_clr        => s_retorno_clr,
            sel_retorno        => s_sel_retorno,
            retorno_dec        => s_retorno_dec,

            selecao_bebida     => selecao_bebida,
            valor_moeda        => valor_moeda,

            moeda_valida       => s_moeda_valida,
            lt                 => s_lt,
            eq                 => s_eq,
            gt                 => s_gt,
            retorno_zero       => s_retorno_zero
        );

end architecture;
