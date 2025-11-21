-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: adder_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao de um somador de 8 bits
-- =======================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity full_adder_8bits is  
   port ( 
     a : in  std_logic_vector(7 downto 0);
     b : in  std_logic_vector(7 downto 0);  
     s : out std_logic_vector(7 downto 0)
   );
end full_adder_8bits;
 
architecture structural of full_adder_8bits is  
   
   component full_adder_1bit is
      port ( 
    	FA 		: in  std_logic; 
        FB 		: in  std_logic; 
        FC 		: in  std_logic;
        FS 		: out std_logic; 
        FCA    	: out std_logic
    );
   end component;

   signal c_in : std_logic_vector(8 downto 0); -- Vai-um

begin  
   c_in(0) <= '0'; -- Carry In inicial = 0

   GEN_ADDER: for i in 0 to 7 generate
      U_Bit: full_adder_1bit 
      	port map (
        	FA  => a(i),
            FB  => b(i), 
            FC  => c_in(i),
            FS  => s(i), 
            FCA => c_in(i+1)
        );
   end generate;
end architecture;