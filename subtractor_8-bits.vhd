-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: subtractor_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do subtrator
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity subtractor is
  port (
        a      : in std_logic_vector(7 downto 0);
        b      : in std_logic_vector(7 downto 0);
        result : out std_logic_vector(7 downto 0)
       );
end subtractor;

architecture rtl of subtractor is 
begin
    result <= std_logic_vector(unsigned(a) - unsigned(b));
end rtl;