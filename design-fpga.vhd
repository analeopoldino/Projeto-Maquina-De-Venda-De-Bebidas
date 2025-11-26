-- ===========================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: design.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do top level que realiza a conexao com a placa fpga
-- ============================================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE10_TOP_LEVEL is
    port (
        -- Clock (50 MHz)
        CLOCK_50 : in std_logic;

        -- Botões (KEY 3..0) - 0 = Pressionado, 1 = Solto
        KEY      : in std_logic_vector(3 downto 0);

        -- Chaves (SW 9..0) - 0 = Baixo, 1 = Alto
        SW       : in std_logic_vector(9 downto 0);

        -- LEDs (LEDR 9..0) - 1 = Aceso
        LEDR     : out std_logic_vector(9 downto 0)
    );
end entity;

architecture structural of DE10_TOP_LEVEL is

    -- Componente do Top Level que conecta o Controller com o Datapath
    component maquina_de_venda_de_bebidas_top_level
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
    end component;
	 
	 -- Componete do Divisor de clock
    component DivisorClock
        port(
            CLOCK_50MHz : in std_logic;
            reset       : in std_logic;
            CLOCK_1Hz   : out std_logic
        );
    end component;

    -- Sinais para inverter os botões (Active Low para Active High)
    signal rst_inv, btn_acao, canc_inv : std_logic;
	 signal fio_clock_1hz 					: std_logic;

begin
	 rst_inv  <= SW(9); -- Reset
	 
    -- Inversao dos botoes para que apertar signifique 1
    btn_acao  <= not KEY(0); -- Selecionar ou Confirmar
    canc_inv  <= not KEY(1); -- Cancelar

	 -- =========================================================
    -- Instanciando o Divisor de clock
    -- =========================================================
    U_Divisor : DivisorClock
        port map (
            CLOCK_50MHz => CLOCK_50,   	-- Entra o clock rápido da placa
            reset       => rst_inv,    	-- Usa o botão de reset (KEY0)
            CLOCK_1Hz   => fio_clock_1hz 	-- Sai o clock lento para o fio interno
        );
		  
    -- =========================================================
    -- Instanciando o Top Level
    -- =========================================================
    U_Maquina : maquina_de_venda_de_bebidas_top_level
        port map (
				clk => fio_clock_1hz,
            rst => rst_inv,

            -- Chaves (Switches)
            inserir_moeda      => SW(0),           			-- SW0 liga o modo inserção
            estoque_disponivel => SW(1),							-- SW1 define estoque
            selecao_bebida     => SW(3 downto 2),  			-- SW3 e SW2 escolhem a bebida
            valor_moeda        => unsigned(SW(7 downto 4)), -- SW7 a SW4 definem o valor

            -- Botões (Keys)
            selecionar_bebida  => btn_acao,
            confirmar_compra   => btn_acao,
            cancelar_operacao  => canc_inv,

            -- Saídas (LEDs)
            liberar_bebida     => LEDR(0),
            liberar_retorno    => LEDR(1)
        );

    -- Apaga os LEDs que sobraram
    LEDR(9 downto 2) <= (others => '0');

end architecture;