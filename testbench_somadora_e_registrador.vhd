library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_somador_acumulador is
    -- Testbench não tem portas!
end entity;

architecture sim of tb_somador_acumulador is

    -- 1. SINAIS PARA LIGAR NO SEU CIRCUITO DE TESTE
    signal clk          : std_logic := '0';
    signal rst          : std_logic := '0';
    
    -- Entradas
    signal valor_entrada : unsigned(3 downto 0) := (others => '0'); -- Simula as chaves SW
    signal ld_total      : std_logic := '0'; -- Sinal que o Controller mandaria para somar
    signal clr_total     : std_logic := '0'; -- Sinal para zerar a conta

    -- Saída (Para ver o resultado)
    signal total_saida   : unsigned(7 downto 0);

    -- Sinais internos (imitando o Datapath)
    signal reg_moeda_q   : unsigned(7 downto 0);
    signal reg_total_q   : unsigned(7 downto 0);
    signal soma_fios     : std_logic_vector(7 downto 0);
    
    -- Definição do Clock (Tenta imitar a placa)
    constant CLK_PERIOD : time := 20 ns;

    -- COMPONENTE DO SOMADOR (O SEU NOVO COMPORTAMENTAL)
    component full_adder_8bits is  
       port ( a, b : in std_logic_vector(7 downto 0); s : out std_logic_vector(7 downto 0));
    end component;

begin

    -- =================================================================
    -- AQUI EU RECONSTRUÍ SÓ A PARTE DO DATAPATH QUE IMPORTA (ACUMULADOR)
    -- =================================================================
    
    -- 1. Registrador que segura a Moeda (Sempre carrega no seu Datapath original)
    process(clk, rst)
    begin
        if rst = '1' then
            reg_moeda_q <= (others => '0');
        elsif rising_edge(clk) then
            -- No seu código original, o load deste é fixo em '1'
            reg_moeda_q <= resize(valor_entrada, 8); 
        end if;
    end process;

    -- 2. A Somadora (Soma o Total Atual + Moeda Atual)
    U_Adder: full_adder_8bits 
        port map (
            a => std_logic_vector(reg_total_q), -- Valor acumulado
            b => std_logic_vector(reg_moeda_q), -- Valor da moeda nova
            s => soma_fios                      -- Resultado
        );

    -- 3. Registrador do Total (O Acumulador)
    process(clk, rst)
    begin
        if rst = '1' or clr_total = '1' then
            reg_total_q <= (others => '0');
        elsif rising_edge(clk) then
            if ld_total = '1' then  -- SÓ GRAVA SE O CONTROLADOR MANDAR
                reg_total_q <= unsigned(soma_fios);
            end if;
        end if;
    end process;

    -- Joga o valor para fora para a gente ver no Waveform
    total_saida <= reg_total_q;


    -- =================================================================
    -- GERADOR DE CLOCK
    -- =================================================================
    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    -- =================================================================
    -- O TESTE PROPRIAMENTE DITO (CASOS DE TESTE)
    -- =================================================================
    stim_proc: process
    begin
        -- 1. Reset Inicial
        rst <= '1';
        wait for 40 ns;
        rst <= '0';
        wait for 20 ns;

        -- CASO 1: Inserir Moeda de valor 5
        valor_entrada <= "0101"; -- 5 em binário
        wait for 20 ns; -- Espera o Registrador de Moeda pegar o valor
        
        -- Agora manda somar! (O Controller ativaria o total_ld)
        ld_total <= '1'; 
        wait for 20 ns; -- Espera um clock para gravar
        ld_total <= '0'; -- Desliga o load (senão soma de novo infinitamente)
        
        -- RESULTADO ESPERADO: Total = 5
        wait for 20 ns;


        -- CASO 2: Inserir Moeda de valor 2 (E zerar a entrada depois)
        valor_entrada <= "0010"; -- 2 em binário
        wait for 20 ns; 
        
        -- Manda somar
        ld_total <= '1';
        wait for 20 ns;
        ld_total <= '0';
        
        -- RESULTADO ESPERADO: 5 (antigo) + 2 (novo) = 7
        
        -- Teste da sua dúvida: "E se a entrada for zero depois?"
        valor_entrada <= "0000"; -- Tirei a moeda
        wait for 40 ns;
        -- O Total NÃO deve mudar, pois ld_total está em 0.
        -- O Total deve continuar em 7.


        -- CASO 3: Inserir Moeda de valor 10 (Somar grande)
        valor_entrada <= "1010"; -- 10
        wait for 20 ns;
        
        ld_total <= '1';
        wait for 20 ns;
        ld_total <= '0';
        -- RESULTADO ESPERADO: 7 + 10 = 17 ("00010001")


        -- CASO 4: Testar o CLEAR (Devolver troco/Resetar compra)
        clr_total <= '1';
        wait for 20 ns;
        clr_total <= '0';
        -- RESULTADO ESPERADO: Total = 0

        wait;
    end process;

end sim;