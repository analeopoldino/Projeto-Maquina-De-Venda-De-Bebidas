-- =======================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: mux_4-to-1.vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Implementacao do multiplexador de preco
-- =======================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_4to1 is
    port (
        selecionar_bebida : in  std_logic_vector(1 downto 0);
        preco_bebida_A    : in  unsigned(3 downto 0);
        preco_bebida_B    : in  unsigned(3 downto 0);
        preco_bebida_C    : in  unsigned(3 downto 0);
        preco_bebida_D    : in  unsigned(3 downto 0);
        valor_bebida      : out unsigned(3 downto 0)
    );
end entity;

architecture behavioral of mux_4to1 is
begin
    process(selecionar_bebida, preco_bebida_A, preco_bebida_B, preco_bebida_C, preco_bebida_D)
    begin
        case selecionar_bebida is
            when "00" => valor_bebida <= preco_bebida_A;
            when "01" => valor_bebida <= preco_bebida_B;
            when "10" => valor_bebida <= preco_bebida_C;
            when "11" => valor_bebida <= preco_bebida_D;
            when others => valor_bebida <= (others => '0');
        end case;
    end process;
end architecture;