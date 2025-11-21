-- ================================================================================
-- Projeto RTL: Maquina de venda de bebidas
-- Arquivo: .vhd
-- Autores: Ana Luiza Goncalves Leopoldino Marques e Caue Rodrigues Campos
-- Turma: Laboratorio de Sistemas Digitais - ELT029
-- Professor: Marconi de Oliveira Junior
-- Descricao: Componetes para a criacao do somador compelto(Full Adder) de 8 bits
-- ================================================================================

library ieee;
use 	ieee.std_logic_1164.all;

--------------------------------------------------------------------------
-- Half Adder
--------------------------------------------------------------------------
entity half_adder is
    port (
    	A 	: in  std_logic;
        B 	: in  std_logic;
        S 	: out std_logic; 
        C 	: out std_logic
    );
end half_adder;

architecture dataflow of half_adder is
begin
    S <= A XOR B;
    C <= A AND B;
end dataflow;

--------------------------------------------------------------------------
-- Porta OR (Para detecção de zero e carry)
--------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
     port (
     	X : in std_logic; 
     	Y : in std_logic;
        Z    : out STD_LOGIC);
end or_gate;

architecture dataflow of or_gate is
begin
    Z <= X OR Y;
end dataflow;

--------------------------------------------------------------------------
-- Full adder de 1 bit 
--------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_1bit is
    port ( 
    	FA 		: in  std_logic; 
        FB 		: in  std_logic; 
        FC 		: in  std_logic;
        FS 		: out std_logic; 
        FCA    	: out std_logic
    );
end full_adder_1bit;

architecture structural of full_adder_1bit is
    component half_adder is
        port (
        	A 	: in  std_logic;
            B 	: in  std_logic; 
            S 	: out std_logic;
            C 	: out std_logic
        );
    end component;

    component or_gate is
        port ( 
        	X	: in  std_logic;
            Y 	: in  std_logic; 
            Z 	: out std_logic
        );
    end component;

    signal S0, S1, S2 : STD_LOGIC;

begin
    FA_1: half_adder 	 PORT MAP(A => FA, B => FB, S => S0, C => S1);
    FA_2: half_adder 	 PORT MAP(A => S0, B => FC, S => FS, C => S2);
    FA_3: or_gate		 PORT MAP(X => S2, Y => S1, Z => FCA);
end structural;