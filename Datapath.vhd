-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: Datapath.vhd (CORRIGIDO)
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity datapath is
    port (
        clk     : in std_logic;
        rst     : in std_logic;

        -- Controle da FSM
        valor_ld     : in std_logic;
        valor_clr    : in std_logic;
        total_ld     : in std_logic;
        total_clr    : in std_logic;
        retorno_ld   : in std_logic;
        retorno_clr  : in std_logic;
        sel_retorno  : in std_logic;
      
        moeda_valida : out std_logic;

        -- Entrada do usuario
        selecao_bebida : in std_logic_vector(1 downto 0);
        valor_moeda    : in unsigned(3 downto 0);

        -- Comparador para FSM
        lt : out std_logic;
        eq : out std_logic;
        gt : out std_logic;

        -- Fim do retorno
        retorno_zero : out std_logic
    );
end entity;

architecture structural of datapath is

    -- Precos
    constant PRECO_A : unsigned(3 downto 0) := "0110"; -- 6
    constant PRECO_B : unsigned(3 downto 0) := "1000"; -- 8
    constant PRECO_C : unsigned(3 downto 0) := "1010"; -- 10
    constant PRECO_D : unsigned(3 downto 0) := "1100"; -- 12

    -- Sinais internos
    signal preco_sel        : unsigned(3 downto 0);
    signal preco_sel_ext    : unsigned(7 downto 0);
    signal reg_valor        : unsigned(7 downto 0);
    signal reg_total        : unsigned(7 downto 0);
    signal reg_retorno      : unsigned(7 downto 0);
    signal soma_total       : unsigned(7 downto 0);
    signal troco            : unsigned(7 downto 0);
    signal retorno_mux      : unsigned(7 downto 0);
    signal troco_slv        : std_logic_vector(7 downto 0);

    signal valor_estabilizado : unsigned(7 downto 0);

begin
    ----------------------------------------------------------------------
    -- MUX para selecao do preco
    ----------------------------------------------------------------------
    preco_mux: entity work.mux_4to1
        port map(
            selecionar_bebida => selecao_bebida,
            preco_bebida_A    => PRECO_A,
            preco_bebida_B    => PRECO_B,
            preco_bebida_C    => PRECO_C,
            preco_bebida_D    => PRECO_D,
            valor_bebida      => preco_sel
        );

    preco_sel_ext <= resize(preco_sel, 8);

    ----------------------------------------------------------------------
    -- REGISTRADOR DO PRECO DA BEBIDA
    ----------------------------------------------------------------------
    regPreco: entity work.registrador
        generic map(N => 8)
        port map(
            clk => clk,
            rst => rst,
            ld  => valor_ld,
            clr => valor_clr,
            d   => preco_sel_ext,
            q   => reg_valor
        );

  
    moeda_valida <= '1' when valor_moeda /= "0000" else '0';
    valor_estabilizado <= resize(valor_moeda, 8);

    ----------------------------------------------------------------------
    -- SOMADOR: total + moeda_inserida
    ----------------------------------------------------------------------
    soma_total <= reg_total + valor_estabilizado;

    ----------------------------------------------------------------------
    -- REGISTRADOR TOTAL (SOMA)
    ----------------------------------------------------------------------
    regTotal: entity work.registrador
        generic map(N => 8)
        port map(
            clk => clk,
            rst => rst,
            ld  => total_ld,
            clr => total_clr,
            d   => soma_total,
            q   => reg_total
        );

    ----------------------------------------------------------------------
    -- COMPARADOR entre total acumulado e valor da bebida
    ----------------------------------------------------------------------
    comparator_inst: entity work.comparator
        port map(
            a => reg_total(4 downto 0),
            b => reg_valor(4 downto 0),
            a_less_b     => lt,
            a_equal_b    => eq,
            a_greater_b  => gt
        );

    ----------------------------------------------------------------------
    -- SUBTRATOR PARA TROCO
    ----------------------------------------------------------------------
    sub_inst: entity work.subtractor
        port map(
            a      => std_logic_vector(reg_total),
            b      => std_logic_vector(reg_valor),
            result => troco_slv
        );

    troco <= unsigned(troco_slv);

    ----------------------------------------------------------------------
    -- MUX DE RETORNO
    ----------------------------------------------------------------------
    retorno_mux <= troco     when sel_retorno = '0' else
                   reg_total when sel_retorno = '1';

    ----------------------------------------------------------------------
    -- REGISTRADOR DE RETORNO
    ----------------------------------------------------------------------
    regRetorno: entity work.registrador
        generic map(N => 8)
        port map(
            clk => clk,
            rst => rst,
            ld  => retorno_ld,
            clr => retorno_clr,
            d   => retorno_mux,
            q   => reg_retorno
        );

    ----------------------------------------------------------------------
    -- SINAL DE FIM DE RETORNO
    ----------------------------------------------------------------------
    retorno_zero <= '1' when reg_retorno = 0 else '0';

end architecture;
