-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: register_n-bits.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do registrador
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity registrador is
  generic (N : integer := 8);
  port (
    clk  : in std_logic;
    rst  : in std_logic;
    ld   : in std_logic;
    clr  : in std_logic;
    d    : in unsigned(N-1 downto 0);
    q    : out unsigned(N-1 downto 0)
  );
end;

architecture rtl of registrador is
begin
  process(clk, rst)
  begin
    if rst = '1' or clr = '1' then
      q <= (others => '0');
    elsif rising_edge(clk) then
      if ld = '1' then
        q <= d;
      end if;
    end if;
  end process;
end;