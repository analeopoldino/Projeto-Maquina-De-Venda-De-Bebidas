-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: adder_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Data: Novembro de 2025
-- Descricao: Implementacao do somador de 4 bits 
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder is  
   port ( 
     a : in  std_logic_vector(3 downto 0);
     b : in  std_logic_vector(3 downto 0);  
     s : out std_logic_vector(3 downto 0)
   ); 
end full_adder;
 
architecture rtl of full_adder is  
begin  
   -- Converte para unsigned, soma e converte de volta para std_logic_vector.
   -- Se ocorrer overflow, os bits superiores sao descartados (mantido tamanho 4).
   s <= std_logic_vector(unsigned(a) + unsigned(b));
end rtl;