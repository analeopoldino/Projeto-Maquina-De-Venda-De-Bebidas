-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: subtractor_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao de um subtrator(Subtractor) estrutural de 8 bits
-- =======================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity subtractor_8bits is
  port (
    A      : in std_logic_vector(7 downto 0);
    B      : in std_logic_vector(7 downto 0);
    result : out std_logic_vector(7 downto 0)
  );
end subtractor_8bits;

architecture structural of subtractor_8bits is 
   
   component full_adder_1bit is
      port ( 
    	FA 		: in  std_logic; 
        FB 		: in  std_logic; 
        FC 		: in  std_logic;
        FS 		: out std_logic; 
        FCA    	: out std_logic
    );
   end component;

   signal C     : std_logic_vector(8 downto 0);
   signal b_not : std_logic_vector(7 downto 0);

begin
   c(0) <= '1'; -- Carry In = 1 (Complemento de 2)

   GEN_SUBTRACTOR: for i in 0 to 7 generate
      b_not(i) <= not b(i); -- Inverte B
      U_Bit: full_adder_1bit 
      	port map (
        	FA  => a(i),
            FB  => b_not(i),
            FC  => c(i),
            FS  => result(i),
            FCA => c(i+1)
        );
   end generate;
   
end architecture;