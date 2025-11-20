-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: comparator_8-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do comparador
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparator is
  port (
    a, b         : in  unsigned(4 downto 0);
    a_less_b     : out std_logic;
    a_equal_b    : out std_logic;
    a_greater_b  : out std_logic
  );
end entity;

architecture rtl of comparator is
begin
    a_less_b    <= '1' when a < b else '0';
    a_equal_b   <= '1' when a = b else '0';
    a_greater_b <= '1' when a > b else '0';
end architecture;