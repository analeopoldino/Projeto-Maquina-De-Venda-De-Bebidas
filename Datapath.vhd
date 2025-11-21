-- ====================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: Datapath.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementação do Datapath integrando os componentes funcionais do sistema
-- ====================================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity datapath is
    port (
        clk, rst : in std_logic;

        -- Controle
        valor_ld, valor_clr     : in std_logic;
        total_ld, total_clr     : in std_logic;
        retorno_ld, retorno_clr : in std_logic;
        sel_retorno, retorno_dec: in std_logic;

        -- Dados
        selecao_bebida : in std_logic_vector(1 downto 0);
        valor_moeda    : in unsigned(3 downto 0);

        -- Saidas
        moeda_valida   : out std_logic;
        lt, eq, gt     : out std_logic;
        retorno_zero   : out std_logic
    );
end entity datapath;

architecture structural of datapath is

    ---------------------------------------------------------------------
    -- Declaracao dos componentes usados no Datapath
    ---------------------------------------------------------------------
    component registrador is
    	generic (N : integer); 
        port (
            clk, rst, ld, clr : in  std_logic;
            d                 : in  unsigned(N-1 downto 0);
            q                 : out unsigned(N-1 downto 0)
        );
    end component;

    component mux_4to1 is
        port (
            sel_2bits : in  std_logic_vector(1 downto 0);
            a, b, c, d: in  unsigned(3 downto 0);
            y         : out unsigned(3 downto 0)
        );
    end component;

    component mux_2to1_8bits is
        port (
            sel       : in std_logic;
            a, b      : in std_logic_vector(7 downto 0);
            y         : out std_logic_vector(7 downto 0)
        );
    end component;

    component full_adder_8bits is
        port (
            a, b : in std_logic_vector(7 downto 0);
            s    : out std_logic_vector(7 downto 0)
        );
    end component;

    component subtractor_8bits is
        port (
            a, b   : in std_logic_vector(7 downto 0);
            result : out std_logic_vector(7 downto 0)
        );
    end component;

    component comparator_8bits is
        port (
            a, b              : in unsigned(4 downto 0);
            a_less_b          : out std_logic;
            a_equal_b         : out std_logic;
            a_greater_b       : out std_logic
        );
    end component;

    component or_gate is
        port (
            X, Y : in std_logic;
            Z    : out std_logic
        );
    end component;

    ---------------------------------------------------------------------
    -- Sinais internos
    ---------------------------------------------------------------------

    -- Precos fixos (4 bits)
    constant PRECO_A : unsigned(3 downto 0) := "0110";  -- 6
    constant PRECO_B : unsigned(3 downto 0) := "1000";  -- 8
    constant PRECO_C : unsigned(3 downto 0) := "1010";  -- 10
    constant PRECO_D : unsigned(3 downto 0) := "1100";  -- 12

    -- Preco selecionado
    signal preco_sel     : unsigned(3 downto 0);
    signal preco_sel_ext : unsigned(7 downto 0);

    -- Registradores
    signal reg_valor, reg_total, reg_retorno : unsigned(7 downto 0);
    signal reg_moeda_q                       : unsigned(7 downto 0);

    -- Extensoes de bits
    signal valor_moeda_ext : unsigned(7 downto 0);

    -- Operacoes internas
    signal soma_res_slv, troco_slv, dec_res_slv : std_logic_vector(7 downto 0);
    signal mux_ret_out, mux_dec_out, mux_next_out : std_logic_vector(7 downto 0);

    -- Controle de retorno
    signal or1, or2, moeda_valida_int, retorno_wen : std_logic;

begin

    ---------------------------------------------------------------------
    -- Selecao do preço da bebida (MUX + registrador)
    ---------------------------------------------------------------------
    U_MuxPreco: mux_4to1
        port map (
            sel_2bits => selecao_bebida,
            a => PRECO_A,
            b => PRECO_B,
            c => PRECO_C,
            d => PRECO_D,
            y => preco_sel
        );

    preco_sel_ext <= resize(preco_sel, 8);

    U_RegPreco: registrador
        generic map (8)
        port map (
            clk => clk, rst => rst,
            ld => valor_ld, clr => valor_clr,
            d => preco_sel_ext,
            q => reg_valor
        );

    ---------------------------------------------------------------------
    -- Validacao da moeda: OR dos bits do registrador de moeda
    ---------------------------------------------------------------------
    valor_moeda_ext <= resize(valor_moeda, 8);

    U_RegMoedaInput: registrador
        generic map (8)
        port map (
            clk => clk, rst => rst,
            ld => '1', clr => '0',
            d => valor_moeda_ext,
            q => reg_moeda_q
        );

    U_OR1: or_gate port map (reg_moeda_q(0), reg_moeda_q(1), or1);
    U_OR2: or_gate port map (reg_moeda_q(2), reg_moeda_q(3), or2);
    U_OR3: or_gate port map (or1, or2, moeda_valida_int);

    moeda_valida <= moeda_valida_int;

    ---------------------------------------------------------------------
    -- Somador: reg_total + moeda
    ---------------------------------------------------------------------
    U_Adder: full_adder_8bits
        port map (
            a => std_logic_vector(reg_total),
            b => std_logic_vector(reg_moeda_q),
            s => soma_res_slv
        );

    U_RegTotal: registrador
        generic map (8)
        port map (
            clk => clk, rst => rst,
            ld => total_ld, clr => total_clr,
            d => unsigned(soma_res_slv),
            q => reg_total
        );

    ---------------------------------------------------------------------
    -- Comparador e calculo de troco
    ---------------------------------------------------------------------
    U_Comp: comparator_8bits
        port map (
            a => reg_total(4 downto 0),
            b => reg_valor(4 downto 0),
            a_less_b    => lt,
            a_equal_b   => eq,
            a_greater_b => gt
        );

    U_SubTroco: subtractor_8bits
        port map (
            a => std_logic_vector(reg_total),
            b => std_logic_vector(reg_valor),
            result => troco_slv
        );

    ---------------------------------------------------------------------
    -- Logica de retorno de troco
    ---------------------------------------------------------------------

    -- Selecao entre total ou troco
    U_MuxRetSrc: mux_2to1_8bits
        port map (
            sel => sel_retorno,
            a   => troco_slv,
            b   => std_logic_vector(reg_total),
            y   => mux_ret_out
        );

    -- Decremento de 1
    U_SubDec: subtractor_8bits
        port map (
            a => std_logic_vector(reg_retorno),
            b => "00000001",
            result => dec_res_slv
        );

    -- Seleciona manter ou decrementar
    U_MuxDec: mux_2to1_8bits
        port map (
            sel => retorno_dec,
            a   => std_logic_vector(reg_retorno),
            b   => dec_res_slv,
            y   => mux_dec_out
        );

    -- Seleciona entre carregar valor inicial ou continuar decrementando
    U_MuxLd: mux_2to1_8bits
        port map (
            sel => retorno_ld,
            a   => mux_dec_out,
            b   => mux_ret_out,
            y   => mux_next_out
        );

    -- Habilitacao do registrador de retorno
    U_OR_WEN: or_gate
        port map (retorno_ld, retorno_dec, retorno_wen);

    -- Registrador do troco
    U_RegRet: registrador
        generic map (8)
        port map (
            clk => clk, rst => rst,
            ld => retorno_wen, clr => retorno_clr,
            d  => unsigned(mux_next_out),
            q  => reg_retorno
        );

    -- Sinal: verifica se o troco zerou
    retorno_zero <= '1' when reg_retorno = 0 else '0';

end architecture structural;
