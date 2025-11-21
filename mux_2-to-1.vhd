-- =======================================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: mux_2-to-1.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do multiplexador(MUX) que seleciona entre troco ou devolucao no estado Retorno
-- =======================================================================================================

library ieee;
use 	ieee.std_logic_1164.all;

entity mux_2to1_8bits is
    port (
      sel : in  std_logic;
      a   : in  std_logic_vector(7 downto 0); -- Selecionado se sel=0
      b   : in  std_logic_vector(7 downto 0); -- Selecionado se sel=1
      y   : out std_logic_vector(7 downto 0)
    );
end entity;

architecture dataflow of mux_2to1_8bits is
begin
    y <= a when sel = '0' 
    	   else b;
end architecture;