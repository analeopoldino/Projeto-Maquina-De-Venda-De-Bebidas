-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: comparator_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao de um comparador(Comparator) estrutural
-- =======================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

--------------------------------------------------------------------------
-- Comparador de 1 Bit
--------------------------------------------------------------------------
entity comparator_1bit is
    port ( 
      a	  	  	: in  std_logic;
      b	  	  	: in  std_logic;
      gt_in	  	: in  std_logic;
      eq_in	  	: in  std_logic;
      lt_in	  	: in  std_logic;
      gt_out    : out std_logic;
      eq_out    : out std_logic;
      lt_out    : out std_logic
    );
end comparator_1bit;

architecture dataflow of comparator_1bit is
begin
    -- Lógica baseada em portas
    eq_out <= eq_in AND (a XNOR b);
    gt_out <= gt_in OR (eq_in AND a AND NOT b);
    lt_out <= lt_in OR (eq_in AND NOT a AND b);
end dataflow;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------
-- Comparador Principal (5 Bits Estrutural)
--------------------------------------------------------------------------
entity comparator_8bits is
  port (
    a			 : in  unsigned(4 downto 0);
    b            : in  unsigned(4 downto 0); 
    a_less_b     : out std_logic;
    a_equal_b    : out std_logic;
    a_greater_b  : out std_logic
  );
end entity;

architecture structural of comparator_8bits is
    
    component comparator_1bit is
        port ( 
          a	  	  	: in  std_logic;
          b	  	  	: in  std_logic;
          gt_in	  	: in  std_logic;
          eq_in	  	: in  std_logic;
          lt_in	  	: in  std_logic;
          gt_out    : out std_logic;
          eq_out    : out std_logic;
          lt_out    : out std_logic
    );
    end component;

    -- Fios de conexão entre os estágios (6 estágios: 0 a 5)
    signal gt_w, eq_w, lt_w : std_logic_vector(5 downto 0);

begin
    -- Valores iniciais para o bit mais significativo (MSB)
    -- Assumimos igualdade no início
    gt_w(5) <= '0';
    eq_w(5) <= '1';
    lt_w(5) <= '0';

    -- Gera a cadeia de comparadores (Do bit 4 até o 0)
    GEN_COMPARATOR: for i in 4 downto 0 generate
        U_Bit: comparator_1bit 
        	port map (
            	a 	   => a(i), 
                b 	   => b(i),
                -- Vem do bit superior
            	gt_in  => gt_w(i+1), 
                eq_in  => eq_w(i+1), 
                lt_in  => lt_w(i+1),
                 -- Vai para o próximo
            	gt_out => gt_w(i), 
                eq_out => eq_w(i),
                lt_out => lt_w(i)  
        );
    end generate;

    -- O resultado final sai do bit 0 (LSB)
    a_greater_b <= gt_w(0);
    a_equal_b   <= eq_w(0);
    a_less_b    <= lt_w(0);

end architecture;