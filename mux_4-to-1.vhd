-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: mux_4-to-1.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do multiplexador(MUX) de preco
-- =======================================================================

library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity mux_4to1 is
    port (
      sel_2bits : in  std_logic_vector(1 downto 0);
      a			: in  unsigned(3 downto 0);
      b    		: in  unsigned(3 downto 0);
      c    		: in  unsigned(3 downto 0);
      d    		: in  unsigned(3 downto 0);
      y      	: out unsigned(3 downto 0)
    );
end entity;

architecture behavioral of mux_4to1 is
begin
    process(sel_2bits, a, b, c, d)
    begin
        case sel_2bits is
            when "00" => y <= a;
            when "01" => y <= b;
            when "10" => y <= c;
            when "11" => y <= d;
            when others => y <= (others => '0');
        end case;
    end process;
end architecture;
