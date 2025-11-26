-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "11/26/2025 01:25:07"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_TOP_LEVEL IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END DE10_TOP_LEVEL;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE10_TOP_LEVEL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_Divisor|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \U_Divisor|Add0~0_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~12_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~1\ : std_logic;
SIGNAL \U_Divisor|Add0~2_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~3\ : std_logic;
SIGNAL \U_Divisor|Add0~4_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~5\ : std_logic;
SIGNAL \U_Divisor|Add0~6_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~7\ : std_logic;
SIGNAL \U_Divisor|Add0~8_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~9\ : std_logic;
SIGNAL \U_Divisor|Add0~10_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~11\ : std_logic;
SIGNAL \U_Divisor|Add0~12_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~11_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~13\ : std_logic;
SIGNAL \U_Divisor|Add0~14_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~15\ : std_logic;
SIGNAL \U_Divisor|Add0~16_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~5_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~6_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~17\ : std_logic;
SIGNAL \U_Divisor|Add0~18_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~19\ : std_logic;
SIGNAL \U_Divisor|Add0~20_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~21\ : std_logic;
SIGNAL \U_Divisor|Add0~22_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~10_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~23\ : std_logic;
SIGNAL \U_Divisor|Add0~24_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~9_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~25\ : std_logic;
SIGNAL \U_Divisor|Add0~26_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~8_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~27\ : std_logic;
SIGNAL \U_Divisor|Add0~28_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~7_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~29\ : std_logic;
SIGNAL \U_Divisor|Add0~30_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~31\ : std_logic;
SIGNAL \U_Divisor|Add0~32_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~6_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~2_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~33\ : std_logic;
SIGNAL \U_Divisor|Add0~34_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~35\ : std_logic;
SIGNAL \U_Divisor|Add0~36_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~5_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~37\ : std_logic;
SIGNAL \U_Divisor|Add0~38_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~4_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~39\ : std_logic;
SIGNAL \U_Divisor|Add0~40_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~3_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~41\ : std_logic;
SIGNAL \U_Divisor|Add0~42_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~2_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~43\ : std_logic;
SIGNAL \U_Divisor|Add0~44_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~1_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~45\ : std_logic;
SIGNAL \U_Divisor|Add0~46_combout\ : std_logic;
SIGNAL \U_Divisor|Add0~47\ : std_logic;
SIGNAL \U_Divisor|Add0~48_combout\ : std_logic;
SIGNAL \U_Divisor|cnt~0_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~0_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~1_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~3_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~4_combout\ : std_logic;
SIGNAL \U_Divisor|Equal0~7_combout\ : std_logic;
SIGNAL \U_Divisor|clk~0_combout\ : std_logic;
SIGNAL \U_Divisor|clk~feeder_combout\ : std_logic;
SIGNAL \U_Divisor|clk~q\ : std_logic;
SIGNAL \U_Divisor|clk~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector4~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegMoedaInput|q[2]~feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegMoedaInput|q[0]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegMoedaInput|q[3]~feeder_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_OR3|Z~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|moeda_valida_ant~feeder_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|moeda_valida_ant~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Controller|total_ld~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector1~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_MuxPreco|Mux0~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|process_0~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|total_ld~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|total_ld~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[0]~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_2|S~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_2|S~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:3:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_MuxPreco|Mux1~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[4]~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegPreco|q[1]~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector5~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector5~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector6~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[1]~20_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[0]~18_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[0]~19_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[1]~6_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[2]~22_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[2]~5_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[3]~17_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[3]~4_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|Equal0~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[4]~24_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[4]~3_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[5]~5_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[5]~23_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[5]~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[6]~6_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[6]~21_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[6]~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|Equal0~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S~combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[7]~3_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q[7]~4_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[7]~13_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[7]~14_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q[7]~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|Equal0~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector5~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Retorno~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector0~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector0~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Inicio~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector1~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Espera~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector2~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector2~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Seleciona~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector3~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|process_1~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|process_1~1_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector3~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector3~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Moeda~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector4~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|Selector4~2_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|estado_atual.Dispensa~q\ : std_logic;
SIGNAL \U_Maquina|U_Controller|liberar_bebida~0_combout\ : std_logic;
SIGNAL \U_Maquina|U_Controller|liberar_retorno~0_combout\ : std_logic;
SIGNAL \U_Divisor|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U_Maquina|U_Datapath|U_RegMoedaInput|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Maquina|U_Datapath|U_RegRet|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Maquina|U_Datapath|U_RegPreco|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U_Divisor|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_Divisor|clk~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\ <= NOT \U_Maquina|U_Datapath|U_RegTotal|process_0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_Maquina|U_Controller|liberar_bebida~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_Maquina|U_Controller|liberar_retorno~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X57_Y50_N8
\U_Divisor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~0_combout\ = \U_Divisor|cnt\(0) $ (VCC)
-- \U_Divisor|Add0~1\ = CARRY(\U_Divisor|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(0),
	datad => VCC,
	combout => \U_Divisor|Add0~0_combout\,
	cout => \U_Divisor|Add0~1\);

-- Location: LCCOMB_X56_Y49_N16
\U_Divisor|cnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~12_combout\ = (\U_Divisor|Add0~0_combout\ & !\U_Divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|Add0~0_combout\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|cnt~12_combout\);

-- Location: FF_X57_Y50_N31
\U_Divisor|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_Divisor|cnt~12_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(0));

-- Location: LCCOMB_X57_Y50_N10
\U_Divisor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~2_combout\ = (\U_Divisor|cnt\(1) & (!\U_Divisor|Add0~1\)) # (!\U_Divisor|cnt\(1) & ((\U_Divisor|Add0~1\) # (GND)))
-- \U_Divisor|Add0~3\ = CARRY((!\U_Divisor|Add0~1\) # (!\U_Divisor|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(1),
	datad => VCC,
	cin => \U_Divisor|Add0~1\,
	combout => \U_Divisor|Add0~2_combout\,
	cout => \U_Divisor|Add0~3\);

-- Location: FF_X57_Y50_N11
\U_Divisor|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(1));

-- Location: LCCOMB_X57_Y50_N12
\U_Divisor|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~4_combout\ = (\U_Divisor|cnt\(2) & (\U_Divisor|Add0~3\ $ (GND))) # (!\U_Divisor|cnt\(2) & (!\U_Divisor|Add0~3\ & VCC))
-- \U_Divisor|Add0~5\ = CARRY((\U_Divisor|cnt\(2) & !\U_Divisor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(2),
	datad => VCC,
	cin => \U_Divisor|Add0~3\,
	combout => \U_Divisor|Add0~4_combout\,
	cout => \U_Divisor|Add0~5\);

-- Location: FF_X57_Y50_N13
\U_Divisor|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~4_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(2));

-- Location: LCCOMB_X57_Y50_N14
\U_Divisor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~6_combout\ = (\U_Divisor|cnt\(3) & (!\U_Divisor|Add0~5\)) # (!\U_Divisor|cnt\(3) & ((\U_Divisor|Add0~5\) # (GND)))
-- \U_Divisor|Add0~7\ = CARRY((!\U_Divisor|Add0~5\) # (!\U_Divisor|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(3),
	datad => VCC,
	cin => \U_Divisor|Add0~5\,
	combout => \U_Divisor|Add0~6_combout\,
	cout => \U_Divisor|Add0~7\);

-- Location: FF_X57_Y50_N15
\U_Divisor|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~6_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(3));

-- Location: LCCOMB_X57_Y50_N16
\U_Divisor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~8_combout\ = (\U_Divisor|cnt\(4) & (\U_Divisor|Add0~7\ $ (GND))) # (!\U_Divisor|cnt\(4) & (!\U_Divisor|Add0~7\ & VCC))
-- \U_Divisor|Add0~9\ = CARRY((\U_Divisor|cnt\(4) & !\U_Divisor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(4),
	datad => VCC,
	cin => \U_Divisor|Add0~7\,
	combout => \U_Divisor|Add0~8_combout\,
	cout => \U_Divisor|Add0~9\);

-- Location: FF_X57_Y50_N17
\U_Divisor|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~8_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(4));

-- Location: LCCOMB_X57_Y50_N18
\U_Divisor|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~10_combout\ = (\U_Divisor|cnt\(5) & (!\U_Divisor|Add0~9\)) # (!\U_Divisor|cnt\(5) & ((\U_Divisor|Add0~9\) # (GND)))
-- \U_Divisor|Add0~11\ = CARRY((!\U_Divisor|Add0~9\) # (!\U_Divisor|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(5),
	datad => VCC,
	cin => \U_Divisor|Add0~9\,
	combout => \U_Divisor|Add0~10_combout\,
	cout => \U_Divisor|Add0~11\);

-- Location: FF_X57_Y50_N19
\U_Divisor|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~10_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(5));

-- Location: LCCOMB_X57_Y50_N20
\U_Divisor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~12_combout\ = (\U_Divisor|cnt\(6) & (\U_Divisor|Add0~11\ $ (GND))) # (!\U_Divisor|cnt\(6) & (!\U_Divisor|Add0~11\ & VCC))
-- \U_Divisor|Add0~13\ = CARRY((\U_Divisor|cnt\(6) & !\U_Divisor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(6),
	datad => VCC,
	cin => \U_Divisor|Add0~11\,
	combout => \U_Divisor|Add0~12_combout\,
	cout => \U_Divisor|Add0~13\);

-- Location: LCCOMB_X57_Y50_N2
\U_Divisor|cnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~11_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~12_combout\,
	combout => \U_Divisor|cnt~11_combout\);

-- Location: FF_X57_Y50_N3
\U_Divisor|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~11_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(6));

-- Location: LCCOMB_X57_Y50_N22
\U_Divisor|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~14_combout\ = (\U_Divisor|cnt\(7) & (!\U_Divisor|Add0~13\)) # (!\U_Divisor|cnt\(7) & ((\U_Divisor|Add0~13\) # (GND)))
-- \U_Divisor|Add0~15\ = CARRY((!\U_Divisor|Add0~13\) # (!\U_Divisor|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(7),
	datad => VCC,
	cin => \U_Divisor|Add0~13\,
	combout => \U_Divisor|Add0~14_combout\,
	cout => \U_Divisor|Add0~15\);

-- Location: FF_X57_Y50_N23
\U_Divisor|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~14_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(7));

-- Location: LCCOMB_X57_Y50_N24
\U_Divisor|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~16_combout\ = (\U_Divisor|cnt\(8) & (\U_Divisor|Add0~15\ $ (GND))) # (!\U_Divisor|cnt\(8) & (!\U_Divisor|Add0~15\ & VCC))
-- \U_Divisor|Add0~17\ = CARRY((\U_Divisor|cnt\(8) & !\U_Divisor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(8),
	datad => VCC,
	cin => \U_Divisor|Add0~15\,
	combout => \U_Divisor|Add0~16_combout\,
	cout => \U_Divisor|Add0~17\);

-- Location: FF_X57_Y50_N25
\U_Divisor|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~16_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(8));

-- Location: LCCOMB_X57_Y50_N4
\U_Divisor|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~5_combout\ = (\U_Divisor|cnt\(6) & (!\U_Divisor|cnt\(5) & (!\U_Divisor|cnt\(7) & !\U_Divisor|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(6),
	datab => \U_Divisor|cnt\(5),
	datac => \U_Divisor|cnt\(7),
	datad => \U_Divisor|cnt\(8),
	combout => \U_Divisor|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y50_N6
\U_Divisor|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~6_combout\ = (!\U_Divisor|cnt\(1) & (!\U_Divisor|cnt\(4) & (!\U_Divisor|cnt\(3) & !\U_Divisor|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(1),
	datab => \U_Divisor|cnt\(4),
	datac => \U_Divisor|cnt\(3),
	datad => \U_Divisor|cnt\(2),
	combout => \U_Divisor|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y50_N26
\U_Divisor|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~18_combout\ = (\U_Divisor|cnt\(9) & (!\U_Divisor|Add0~17\)) # (!\U_Divisor|cnt\(9) & ((\U_Divisor|Add0~17\) # (GND)))
-- \U_Divisor|Add0~19\ = CARRY((!\U_Divisor|Add0~17\) # (!\U_Divisor|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(9),
	datad => VCC,
	cin => \U_Divisor|Add0~17\,
	combout => \U_Divisor|Add0~18_combout\,
	cout => \U_Divisor|Add0~19\);

-- Location: FF_X57_Y50_N27
\U_Divisor|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~18_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(9));

-- Location: LCCOMB_X57_Y50_N28
\U_Divisor|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~20_combout\ = (\U_Divisor|cnt\(10) & (\U_Divisor|Add0~19\ $ (GND))) # (!\U_Divisor|cnt\(10) & (!\U_Divisor|Add0~19\ & VCC))
-- \U_Divisor|Add0~21\ = CARRY((\U_Divisor|cnt\(10) & !\U_Divisor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(10),
	datad => VCC,
	cin => \U_Divisor|Add0~19\,
	combout => \U_Divisor|Add0~20_combout\,
	cout => \U_Divisor|Add0~21\);

-- Location: FF_X57_Y50_N29
\U_Divisor|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~20_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(10));

-- Location: LCCOMB_X57_Y50_N30
\U_Divisor|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~22_combout\ = (\U_Divisor|cnt\(11) & (!\U_Divisor|Add0~21\)) # (!\U_Divisor|cnt\(11) & ((\U_Divisor|Add0~21\) # (GND)))
-- \U_Divisor|Add0~23\ = CARRY((!\U_Divisor|Add0~21\) # (!\U_Divisor|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(11),
	datad => VCC,
	cin => \U_Divisor|Add0~21\,
	combout => \U_Divisor|Add0~22_combout\,
	cout => \U_Divisor|Add0~23\);

-- Location: LCCOMB_X57_Y50_N0
\U_Divisor|cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~10_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~22_combout\,
	combout => \U_Divisor|cnt~10_combout\);

-- Location: FF_X57_Y50_N1
\U_Divisor|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~10_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(11));

-- Location: LCCOMB_X57_Y49_N0
\U_Divisor|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~24_combout\ = (\U_Divisor|cnt\(12) & (\U_Divisor|Add0~23\ $ (GND))) # (!\U_Divisor|cnt\(12) & (!\U_Divisor|Add0~23\ & VCC))
-- \U_Divisor|Add0~25\ = CARRY((\U_Divisor|cnt\(12) & !\U_Divisor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(12),
	datad => VCC,
	cin => \U_Divisor|Add0~23\,
	combout => \U_Divisor|Add0~24_combout\,
	cout => \U_Divisor|Add0~25\);

-- Location: LCCOMB_X56_Y49_N2
\U_Divisor|cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~9_combout\ = (\U_Divisor|Add0~24_combout\ & !\U_Divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Add0~24_combout\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|cnt~9_combout\);

-- Location: FF_X56_Y49_N3
\U_Divisor|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~9_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(12));

-- Location: LCCOMB_X57_Y49_N2
\U_Divisor|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~26_combout\ = (\U_Divisor|cnt\(13) & (!\U_Divisor|Add0~25\)) # (!\U_Divisor|cnt\(13) & ((\U_Divisor|Add0~25\) # (GND)))
-- \U_Divisor|Add0~27\ = CARRY((!\U_Divisor|Add0~25\) # (!\U_Divisor|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(13),
	datad => VCC,
	cin => \U_Divisor|Add0~25\,
	combout => \U_Divisor|Add0~26_combout\,
	cout => \U_Divisor|Add0~27\);

-- Location: LCCOMB_X57_Y49_N30
\U_Divisor|cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~8_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~26_combout\,
	combout => \U_Divisor|cnt~8_combout\);

-- Location: FF_X57_Y49_N31
\U_Divisor|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~8_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(13));

-- Location: LCCOMB_X57_Y49_N4
\U_Divisor|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~28_combout\ = (\U_Divisor|cnt\(14) & (\U_Divisor|Add0~27\ $ (GND))) # (!\U_Divisor|cnt\(14) & (!\U_Divisor|Add0~27\ & VCC))
-- \U_Divisor|Add0~29\ = CARRY((\U_Divisor|cnt\(14) & !\U_Divisor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(14),
	datad => VCC,
	cin => \U_Divisor|Add0~27\,
	combout => \U_Divisor|Add0~28_combout\,
	cout => \U_Divisor|Add0~29\);

-- Location: LCCOMB_X56_Y49_N26
\U_Divisor|cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~7_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~28_combout\,
	combout => \U_Divisor|cnt~7_combout\);

-- Location: FF_X56_Y49_N27
\U_Divisor|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~7_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(14));

-- Location: LCCOMB_X57_Y49_N6
\U_Divisor|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~30_combout\ = (\U_Divisor|cnt\(15) & (!\U_Divisor|Add0~29\)) # (!\U_Divisor|cnt\(15) & ((\U_Divisor|Add0~29\) # (GND)))
-- \U_Divisor|Add0~31\ = CARRY((!\U_Divisor|Add0~29\) # (!\U_Divisor|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(15),
	datad => VCC,
	cin => \U_Divisor|Add0~29\,
	combout => \U_Divisor|Add0~30_combout\,
	cout => \U_Divisor|Add0~31\);

-- Location: FF_X57_Y49_N7
\U_Divisor|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~30_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(15));

-- Location: LCCOMB_X57_Y49_N8
\U_Divisor|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~32_combout\ = (\U_Divisor|cnt\(16) & (\U_Divisor|Add0~31\ $ (GND))) # (!\U_Divisor|cnt\(16) & (!\U_Divisor|Add0~31\ & VCC))
-- \U_Divisor|Add0~33\ = CARRY((\U_Divisor|cnt\(16) & !\U_Divisor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(16),
	datad => VCC,
	cin => \U_Divisor|Add0~31\,
	combout => \U_Divisor|Add0~32_combout\,
	cout => \U_Divisor|Add0~33\);

-- Location: LCCOMB_X57_Y49_N28
\U_Divisor|cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~6_combout\ = (\U_Divisor|Add0~32_combout\ & !\U_Divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Add0~32_combout\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|cnt~6_combout\);

-- Location: FF_X57_Y49_N29
\U_Divisor|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~6_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(16));

-- Location: LCCOMB_X56_Y49_N22
\U_Divisor|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~2_combout\ = (\U_Divisor|cnt\(14) & (\U_Divisor|cnt\(16) & (\U_Divisor|cnt\(13) & !\U_Divisor|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(14),
	datab => \U_Divisor|cnt\(16),
	datac => \U_Divisor|cnt\(13),
	datad => \U_Divisor|cnt\(15),
	combout => \U_Divisor|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y49_N10
\U_Divisor|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~34_combout\ = (\U_Divisor|cnt\(17) & (!\U_Divisor|Add0~33\)) # (!\U_Divisor|cnt\(17) & ((\U_Divisor|Add0~33\) # (GND)))
-- \U_Divisor|Add0~35\ = CARRY((!\U_Divisor|Add0~33\) # (!\U_Divisor|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(17),
	datad => VCC,
	cin => \U_Divisor|Add0~33\,
	combout => \U_Divisor|Add0~34_combout\,
	cout => \U_Divisor|Add0~35\);

-- Location: FF_X57_Y49_N11
\U_Divisor|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~34_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(17));

-- Location: LCCOMB_X57_Y49_N12
\U_Divisor|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~36_combout\ = (\U_Divisor|cnt\(18) & (\U_Divisor|Add0~35\ $ (GND))) # (!\U_Divisor|cnt\(18) & (!\U_Divisor|Add0~35\ & VCC))
-- \U_Divisor|Add0~37\ = CARRY((\U_Divisor|cnt\(18) & !\U_Divisor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(18),
	datad => VCC,
	cin => \U_Divisor|Add0~35\,
	combout => \U_Divisor|Add0~36_combout\,
	cout => \U_Divisor|Add0~37\);

-- Location: LCCOMB_X57_Y49_N26
\U_Divisor|cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~5_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~36_combout\,
	combout => \U_Divisor|cnt~5_combout\);

-- Location: FF_X57_Y49_N27
\U_Divisor|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~5_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(18));

-- Location: LCCOMB_X57_Y49_N14
\U_Divisor|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~38_combout\ = (\U_Divisor|cnt\(19) & (!\U_Divisor|Add0~37\)) # (!\U_Divisor|cnt\(19) & ((\U_Divisor|Add0~37\) # (GND)))
-- \U_Divisor|Add0~39\ = CARRY((!\U_Divisor|Add0~37\) # (!\U_Divisor|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(19),
	datad => VCC,
	cin => \U_Divisor|Add0~37\,
	combout => \U_Divisor|Add0~38_combout\,
	cout => \U_Divisor|Add0~39\);

-- Location: LCCOMB_X56_Y49_N14
\U_Divisor|cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~4_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~38_combout\,
	combout => \U_Divisor|cnt~4_combout\);

-- Location: FF_X56_Y49_N15
\U_Divisor|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~4_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(19));

-- Location: LCCOMB_X57_Y49_N16
\U_Divisor|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~40_combout\ = (\U_Divisor|cnt\(20) & (\U_Divisor|Add0~39\ $ (GND))) # (!\U_Divisor|cnt\(20) & (!\U_Divisor|Add0~39\ & VCC))
-- \U_Divisor|Add0~41\ = CARRY((\U_Divisor|cnt\(20) & !\U_Divisor|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(20),
	datad => VCC,
	cin => \U_Divisor|Add0~39\,
	combout => \U_Divisor|Add0~40_combout\,
	cout => \U_Divisor|Add0~41\);

-- Location: LCCOMB_X56_Y49_N24
\U_Divisor|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~3_combout\ = (\U_Divisor|Add0~40_combout\ & !\U_Divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Add0~40_combout\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|cnt~3_combout\);

-- Location: FF_X56_Y49_N25
\U_Divisor|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~3_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(20));

-- Location: LCCOMB_X57_Y49_N18
\U_Divisor|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~42_combout\ = (\U_Divisor|cnt\(21) & (!\U_Divisor|Add0~41\)) # (!\U_Divisor|cnt\(21) & ((\U_Divisor|Add0~41\) # (GND)))
-- \U_Divisor|Add0~43\ = CARRY((!\U_Divisor|Add0~41\) # (!\U_Divisor|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|cnt\(21),
	datad => VCC,
	cin => \U_Divisor|Add0~41\,
	combout => \U_Divisor|Add0~42_combout\,
	cout => \U_Divisor|Add0~43\);

-- Location: LCCOMB_X56_Y49_N18
\U_Divisor|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~2_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~42_combout\,
	combout => \U_Divisor|cnt~2_combout\);

-- Location: FF_X56_Y49_N19
\U_Divisor|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(21));

-- Location: LCCOMB_X57_Y49_N20
\U_Divisor|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~44_combout\ = (\U_Divisor|cnt\(22) & (\U_Divisor|Add0~43\ $ (GND))) # (!\U_Divisor|cnt\(22) & (!\U_Divisor|Add0~43\ & VCC))
-- \U_Divisor|Add0~45\ = CARRY((\U_Divisor|cnt\(22) & !\U_Divisor|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(22),
	datad => VCC,
	cin => \U_Divisor|Add0~43\,
	combout => \U_Divisor|Add0~44_combout\,
	cout => \U_Divisor|Add0~45\);

-- Location: LCCOMB_X56_Y49_N8
\U_Divisor|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~1_combout\ = (\U_Divisor|Add0~44_combout\ & !\U_Divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Add0~44_combout\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|cnt~1_combout\);

-- Location: FF_X56_Y49_N9
\U_Divisor|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~1_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(22));

-- Location: LCCOMB_X57_Y49_N22
\U_Divisor|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~46_combout\ = (\U_Divisor|cnt\(23) & (!\U_Divisor|Add0~45\)) # (!\U_Divisor|cnt\(23) & ((\U_Divisor|Add0~45\) # (GND)))
-- \U_Divisor|Add0~47\ = CARRY((!\U_Divisor|Add0~45\) # (!\U_Divisor|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(23),
	datad => VCC,
	cin => \U_Divisor|Add0~45\,
	combout => \U_Divisor|Add0~46_combout\,
	cout => \U_Divisor|Add0~47\);

-- Location: FF_X57_Y49_N23
\U_Divisor|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|Add0~46_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(23));

-- Location: LCCOMB_X57_Y49_N24
\U_Divisor|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Add0~48_combout\ = \U_Divisor|Add0~47\ $ (!\U_Divisor|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_Divisor|cnt\(24),
	cin => \U_Divisor|Add0~47\,
	combout => \U_Divisor|Add0~48_combout\);

-- Location: LCCOMB_X56_Y49_N6
\U_Divisor|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|cnt~0_combout\ = (!\U_Divisor|Equal0~7_combout\ & \U_Divisor|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Divisor|Equal0~7_combout\,
	datad => \U_Divisor|Add0~48_combout\,
	combout => \U_Divisor|cnt~0_combout\);

-- Location: FF_X56_Y49_N7
\U_Divisor|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|cnt~0_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|cnt\(24));

-- Location: LCCOMB_X56_Y49_N4
\U_Divisor|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~0_combout\ = (\U_Divisor|cnt\(24) & (\U_Divisor|cnt\(21) & (\U_Divisor|cnt\(22) & !\U_Divisor|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(24),
	datab => \U_Divisor|cnt\(21),
	datac => \U_Divisor|cnt\(22),
	datad => \U_Divisor|cnt\(23),
	combout => \U_Divisor|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y49_N30
\U_Divisor|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~1_combout\ = (\U_Divisor|cnt\(20) & (\U_Divisor|cnt\(19) & (!\U_Divisor|cnt\(17) & \U_Divisor|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(20),
	datab => \U_Divisor|cnt\(19),
	datac => \U_Divisor|cnt\(17),
	datad => \U_Divisor|cnt\(18),
	combout => \U_Divisor|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y49_N28
\U_Divisor|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~3_combout\ = (!\U_Divisor|cnt\(10) & (\U_Divisor|cnt\(12) & (\U_Divisor|cnt\(11) & !\U_Divisor|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(10),
	datab => \U_Divisor|cnt\(12),
	datac => \U_Divisor|cnt\(11),
	datad => \U_Divisor|cnt\(9),
	combout => \U_Divisor|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y49_N12
\U_Divisor|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~4_combout\ = (\U_Divisor|Equal0~2_combout\ & (\U_Divisor|Equal0~0_combout\ & (\U_Divisor|Equal0~1_combout\ & \U_Divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|Equal0~2_combout\,
	datab => \U_Divisor|Equal0~0_combout\,
	datac => \U_Divisor|Equal0~1_combout\,
	datad => \U_Divisor|Equal0~3_combout\,
	combout => \U_Divisor|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y49_N20
\U_Divisor|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|Equal0~7_combout\ = (!\U_Divisor|cnt\(0) & (\U_Divisor|Equal0~5_combout\ & (\U_Divisor|Equal0~6_combout\ & \U_Divisor|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|cnt\(0),
	datab => \U_Divisor|Equal0~5_combout\,
	datac => \U_Divisor|Equal0~6_combout\,
	datad => \U_Divisor|Equal0~4_combout\,
	combout => \U_Divisor|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y49_N10
\U_Divisor|clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|clk~0_combout\ = \U_Divisor|clk~q\ $ (((!\SW[9]~input_o\ & \U_Divisor|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Divisor|clk~q\,
	datac => \SW[9]~input_o\,
	datad => \U_Divisor|Equal0~7_combout\,
	combout => \U_Divisor|clk~0_combout\);

-- Location: LCCOMB_X56_Y49_N0
\U_Divisor|clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Divisor|clk~feeder_combout\ = \U_Divisor|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Divisor|clk~0_combout\,
	combout => \U_Divisor|clk~feeder_combout\);

-- Location: FF_X56_Y49_N1
\U_Divisor|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Divisor|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Divisor|clk~q\);

-- Location: CLKCTRL_G14
\U_Divisor|clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_Divisor|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_Divisor|clk~clkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X51_Y50_N22
\U_Maquina|U_Controller|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector4~1_combout\ = (\U_Maquina|U_Controller|estado_atual.Dispensa~q\ & (\KEY[0]~input_o\)) # (!\U_Maquina|U_Controller|estado_atual.Dispensa~q\ & ((!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datad => \KEY[1]~input_o\,
	combout => \U_Maquina|U_Controller|Selector4~1_combout\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X50_Y51_N12
\U_Maquina|U_Datapath|U_RegMoedaInput|q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegMoedaInput|q[2]~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \U_Maquina|U_Datapath|U_RegMoedaInput|q[2]~feeder_combout\);

-- Location: FF_X50_Y51_N13
\U_Maquina|U_Datapath|U_RegMoedaInput|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegMoedaInput|q[2]~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(2));

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X50_Y51_N28
\U_Maquina|U_Datapath|U_RegMoedaInput|q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegMoedaInput|q[0]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \U_Maquina|U_Datapath|U_RegMoedaInput|q[0]~feeder_combout\);

-- Location: FF_X50_Y51_N29
\U_Maquina|U_Datapath|U_RegMoedaInput|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegMoedaInput|q[0]~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(0));

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X50_Y51_N30
\U_Maquina|U_Datapath|U_RegMoedaInput|q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegMoedaInput|q[3]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \U_Maquina|U_Datapath|U_RegMoedaInput|q[3]~feeder_combout\);

-- Location: FF_X50_Y51_N31
\U_Maquina|U_Datapath|U_RegMoedaInput|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegMoedaInput|q[3]~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(3));

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X50_Y51_N7
\U_Maquina|U_Datapath|U_RegMoedaInput|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(1));

-- Location: LCCOMB_X50_Y51_N18
\U_Maquina|U_Datapath|U_OR3|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_OR3|Z~0_combout\ = (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(2)) # ((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(0)) # ((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(3)) # (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(2),
	datab => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(0),
	datac => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(3),
	datad => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(1),
	combout => \U_Maquina|U_Datapath|U_OR3|Z~0_combout\);

-- Location: LCCOMB_X50_Y51_N20
\U_Maquina|U_Controller|moeda_valida_ant~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|moeda_valida_ant~feeder_combout\ = \U_Maquina|U_Datapath|U_OR3|Z~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_Maquina|U_Datapath|U_OR3|Z~0_combout\,
	combout => \U_Maquina|U_Controller|moeda_valida_ant~feeder_combout\);

-- Location: FF_X50_Y51_N21
\U_Maquina|U_Controller|moeda_valida_ant\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|moeda_valida_ant~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|moeda_valida_ant~q\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X50_Y51_N14
\U_Maquina|U_Controller|total_ld~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|total_ld~0_combout\ = (!\U_Maquina|U_Controller|moeda_valida_ant~q\ & (\SW[0]~input_o\ & \U_Maquina|U_Datapath|U_OR3|Z~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Controller|moeda_valida_ant~q\,
	datac => \SW[0]~input_o\,
	datad => \U_Maquina|U_Datapath|U_OR3|Z~0_combout\,
	combout => \U_Maquina|U_Controller|total_ld~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X51_Y51_N12
\U_Maquina|U_Controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector1~0_combout\ = (!\SW[1]~input_o\ & (\U_Maquina|U_Controller|estado_atual.Seleciona~q\ & (\KEY[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \U_Maquina|U_Controller|estado_atual.Seleciona~q\,
	datac => \KEY[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \U_Maquina|U_Controller|Selector1~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X50_Y50_N30
\U_Maquina|U_Datapath|U_MuxPreco|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_MuxPreco|Mux0~0_combout\ = (\SW[2]~input_o\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U_Maquina|U_Datapath|U_MuxPreco|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y51_N30
\U_Maquina|U_Datapath|U_RegTotal|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|process_0~0_combout\ = (\SW[9]~input_o\) # (!\U_Maquina|U_Controller|estado_atual.Inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \U_Maquina|U_Controller|estado_atual.Inicio~q\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|process_0~0_combout\);

-- Location: FF_X50_Y50_N31
\U_Maquina|U_Datapath|U_RegPreco|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_MuxPreco|Mux0~0_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	ena => \U_Maquina|U_Controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegPreco|q\(3));

-- Location: LCCOMB_X50_Y51_N22
\U_Maquina|U_Controller|total_ld~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|total_ld~1_combout\ = (\SW[0]~input_o\ & !\U_Maquina|U_Controller|moeda_valida_ant~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \U_Maquina|U_Controller|moeda_valida_ant~q\,
	combout => \U_Maquina|U_Controller|total_ld~1_combout\);

-- Location: LCCOMB_X50_Y51_N8
\U_Maquina|U_Controller|total_ld~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|total_ld~2_combout\ = (\KEY[1]~input_o\ & (\U_Maquina|U_Datapath|U_OR3|Z~0_combout\ & (\U_Maquina|U_Controller|total_ld~1_combout\ & \U_Maquina|U_Controller|estado_atual.Moeda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U_Maquina|U_Datapath|U_OR3|Z~0_combout\,
	datac => \U_Maquina|U_Controller|total_ld~1_combout\,
	datad => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	combout => \U_Maquina|U_Controller|total_ld~2_combout\);

-- Location: LCCOMB_X51_Y50_N30
\U_Maquina|U_Datapath|U_RegTotal|q[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[0]~2_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(0) $ (((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(0) & \U_Maquina|U_Controller|total_ld~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(0),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	datad => \U_Maquina|U_Controller|total_ld~2_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[0]~2_combout\);

-- Location: FF_X51_Y50_N31
\U_Maquina|U_Datapath|U_RegTotal|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegTotal|q[0]~2_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(0));

-- Location: LCCOMB_X50_Y51_N6
\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_2|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_2|S~0_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(1) $ (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(1) $ (((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(0) & \U_Maquina|U_Datapath|U_RegTotal|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(0),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	datac => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	combout => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_2|S~0_combout\);

-- Location: FF_X51_Y51_N9
\U_Maquina|U_Datapath|U_RegTotal|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	asdata => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_2|S~0_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \U_Maquina|U_Controller|total_ld~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(1));

-- Location: LCCOMB_X50_Y51_N0
\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\ = (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(1) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(1)) # ((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(0) & \U_Maquina|U_Datapath|U_RegTotal|q\(0))))) # 
-- (!\U_Maquina|U_Datapath|U_RegMoedaInput|q\(1) & (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(0) & (\U_Maquina|U_Datapath|U_RegTotal|q\(1) & \U_Maquina|U_Datapath|U_RegTotal|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(1),
	datab => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(0),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	combout => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\);

-- Location: LCCOMB_X50_Y50_N26
\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_2|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_2|S~0_combout\ = \U_Maquina|U_Datapath|U_RegMoedaInput|q\(2) $ (\U_Maquina|U_Datapath|U_RegTotal|q\(2) $ (\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(2),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datad => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\,
	combout => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_2|S~0_combout\);

-- Location: FF_X50_Y50_N27
\U_Maquina|U_Datapath|U_RegTotal|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_2|S~0_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	ena => \U_Maquina|U_Controller|total_ld~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(2));

-- Location: LCCOMB_X50_Y51_N10
\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\ = (\U_Maquina|U_Datapath|U_RegMoedaInput|q\(2) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(2)) # (\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\))) # 
-- (!\U_Maquina|U_Datapath|U_RegMoedaInput|q\(2) & (\U_Maquina|U_Datapath|U_RegTotal|q\(2) & \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(2),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datad => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:1:U_Bit|FA_3|Z~0_combout\,
	combout => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:3:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:3:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegMoedaInput|q\(3) $ (\U_Maquina|U_Datapath|U_RegTotal|q\(3) $ (\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(3),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	datad => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\,
	combout => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:3:U_Bit|FA_2|S~combout\);

-- Location: FF_X50_Y50_N1
\U_Maquina|U_Datapath|U_RegTotal|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:3:U_Bit|FA_2|S~combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	ena => \U_Maquina|U_Controller|total_ld~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(3));

-- Location: LCCOMB_X50_Y50_N24
\U_Maquina|U_Datapath|U_MuxPreco|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_MuxPreco|Mux1~0_combout\ = \SW[2]~input_o\ $ (!\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U_Maquina|U_Datapath|U_MuxPreco|Mux1~0_combout\);

-- Location: FF_X50_Y50_N25
\U_Maquina|U_Datapath|U_RegPreco|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_MuxPreco|Mux1~0_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	ena => \U_Maquina|U_Controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegPreco|q\(2));

-- Location: LCCOMB_X50_Y50_N16
\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1_combout\ = (\U_Maquina|U_Datapath|U_RegPreco|q\(3) & (\U_Maquina|U_Datapath|U_RegTotal|q\(3) & (\U_Maquina|U_Datapath|U_RegTotal|q\(2) & !\U_Maquina|U_Datapath|U_RegPreco|q\(2)))) # 
-- (!\U_Maquina|U_Datapath|U_RegPreco|q\(3) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(3)) # ((\U_Maquina|U_Datapath|U_RegTotal|q\(2) & !\U_Maquina|U_Datapath|U_RegPreco|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegPreco|q\(3),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datad => \U_Maquina|U_Datapath|U_RegPreco|q\(2),
	combout => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1_combout\);

-- Location: LCCOMB_X50_Y51_N24
\U_Maquina|U_Datapath|U_RegTotal|q[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\ = (\U_Maquina|U_Controller|total_ld~2_combout\ & ((\U_Maquina|U_Datapath|U_RegMoedaInput|q\(3) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(3)) # 
-- (\U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\))) # (!\U_Maquina|U_Datapath|U_RegMoedaInput|q\(3) & (\U_Maquina|U_Datapath|U_RegTotal|q\(3) & \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegMoedaInput|q\(3),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	datac => \U_Maquina|U_Controller|total_ld~2_combout\,
	datad => \U_Maquina|U_Datapath|U_Adder|GEN_ADDER:2:U_Bit|FA_3|Z~0_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\);

-- Location: LCCOMB_X50_Y51_N4
\U_Maquina|U_Datapath|U_RegTotal|q[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[4]~1_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(4) $ (\U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[4]~1_combout\);

-- Location: FF_X50_Y51_N5
\U_Maquina|U_Datapath|U_RegTotal|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegTotal|q[4]~1_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(4));

-- Location: LCCOMB_X50_Y50_N6
\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\ = (\U_Maquina|U_Datapath|U_RegTotal|q\(2) & (\U_Maquina|U_Datapath|U_RegPreco|q\(2) & (\U_Maquina|U_Datapath|U_RegPreco|q\(3) $ (!\U_Maquina|U_Datapath|U_RegTotal|q\(3))))) # 
-- (!\U_Maquina|U_Datapath|U_RegTotal|q\(2) & (!\U_Maquina|U_Datapath|U_RegPreco|q\(2) & (\U_Maquina|U_Datapath|U_RegPreco|q\(3) $ (!\U_Maquina|U_Datapath|U_RegTotal|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datab => \U_Maquina|U_Datapath|U_RegPreco|q\(2),
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(3),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	combout => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\U_Maquina|U_Datapath|U_RegPreco|q[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegPreco|q[1]~1_combout\ = !\SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	combout => \U_Maquina|U_Datapath|U_RegPreco|q[1]~1_combout\);

-- Location: FF_X51_Y50_N1
\U_Maquina|U_Datapath|U_RegPreco|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	asdata => \U_Maquina|U_Datapath|U_RegPreco|q[1]~1_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \U_Maquina|U_Controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegPreco|q\(1));

-- Location: LCCOMB_X51_Y50_N16
\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2_combout\ = (\U_Maquina|U_Datapath|U_RegPreco|q\(1) & (\U_Maquina|U_Datapath|U_RegTotal|q\(0) & \U_Maquina|U_Datapath|U_RegTotal|q\(1))) # (!\U_Maquina|U_Datapath|U_RegPreco|q\(1) & 
-- ((\U_Maquina|U_Datapath|U_RegTotal|q\(0)) # (\U_Maquina|U_Datapath|U_RegTotal|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Datapath|U_RegPreco|q\(1),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	combout => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2_combout\);

-- Location: LCCOMB_X51_Y50_N18
\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\ = (\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1_combout\) # ((\U_Maquina|U_Datapath|U_RegTotal|q\(4)) # 
-- ((\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\ & \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~1_combout\,
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datac => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\,
	datad => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~2_combout\,
	combout => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\);

-- Location: LCCOMB_X51_Y50_N24
\U_Maquina|U_Controller|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector5~0_combout\ = (!\KEY[1]~input_o\ & (!\U_Maquina|U_Controller|estado_atual.Dispensa~q\ & ((\U_Maquina|U_Controller|estado_atual.Moeda~q\) # (\U_Maquina|U_Controller|estado_atual.Retorno~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datab => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datad => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	combout => \U_Maquina|U_Controller|Selector5~0_combout\);

-- Location: LCCOMB_X51_Y50_N26
\U_Maquina|U_Controller|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector5~1_combout\ = (\U_Maquina|U_Controller|Selector5~0_combout\) # ((\KEY[0]~input_o\ & (\U_Maquina|U_Controller|estado_atual.Dispensa~q\ & \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector5~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datad => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\,
	combout => \U_Maquina|U_Controller|Selector5~1_combout\);

-- Location: LCCOMB_X51_Y50_N12
\U_Maquina|U_Controller|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector6~0_combout\ = (!\KEY[1]~input_o\ & \U_Maquina|U_Controller|estado_atual.Moeda~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	combout => \U_Maquina|U_Controller|Selector6~0_combout\);

-- Location: LCCOMB_X51_Y50_N14
\U_Maquina|U_Datapath|U_RegRet|q[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ = (!\U_Maquina|U_Controller|Selector6~0_combout\ & (((!\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\) # (!\U_Maquina|U_Controller|estado_atual.Dispensa~q\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector6~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datad => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\);

-- Location: LCCOMB_X51_Y50_N0
\U_Maquina|U_Datapath|U_RegRet|q[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[1]~20_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(1) $ (((\U_Maquina|U_Datapath|U_RegPreco|q\(1) & ((\KEY[1]~input_o\) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datab => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	combout => \U_Maquina|U_Datapath|U_RegRet|q[1]~20_combout\);

-- Location: LCCOMB_X51_Y51_N18
\U_Maquina|U_Datapath|U_RegRet|q[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[0]~18_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q\(0) & (((!\U_Maquina|U_Controller|estado_atual.Retorno~q\)) # (!\KEY[1]~input_o\))) # (!\U_Maquina|U_Datapath|U_RegRet|q\(0) & (\KEY[1]~input_o\ & 
-- (\U_Maquina|U_Controller|estado_atual.Retorno~q\ & \U_Maquina|U_Datapath|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(0),
	datab => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	datad => \U_Maquina|U_Datapath|Equal0~2_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[0]~18_combout\);

-- Location: LCCOMB_X51_Y51_N14
\U_Maquina|U_Datapath|U_RegRet|q[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[0]~19_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & ((\U_Maquina|U_Datapath|U_RegRet|q[0]~18_combout\))) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (\U_Maquina|U_Datapath|U_RegTotal|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	datad => \U_Maquina|U_Datapath|U_RegRet|q[0]~18_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[0]~19_combout\);

-- Location: FF_X51_Y51_N15
\U_Maquina|U_Datapath|U_RegRet|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[0]~19_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(0));

-- Location: LCCOMB_X54_Y50_N18
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(1) $ (\U_Maquina|U_Datapath|U_RegRet|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegRet|q\(0),
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X52_Y50_N6
\U_Maquina|U_Datapath|U_RegRet|q[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[1]~6_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & ((!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S~combout\))) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- (\U_Maquina|U_Datapath|U_RegRet|q[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~20_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:1:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[1]~6_combout\);

-- Location: LCCOMB_X52_Y50_N30
\U_Maquina|U_Datapath|U_RegRet|q[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (((!\KEY[1]~input_o\) # (!\U_Maquina|U_Datapath|Equal0~2_combout\)) # (!\U_Maquina|U_Controller|estado_atual.Retorno~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	datab => \U_Maquina|U_Datapath|Equal0~2_combout\,
	datac => \KEY[1]~input_o\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\);

-- Location: FF_X52_Y50_N7
\U_Maquina|U_Datapath|U_RegRet|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[1]~6_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(1),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(1));

-- Location: LCCOMB_X52_Y50_N24
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(2) $ (((\U_Maquina|U_Datapath|U_RegRet|q\(1)) # (\U_Maquina|U_Datapath|U_RegRet|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(1),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(2),
	datad => \U_Maquina|U_Datapath|U_RegRet|q\(0),
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X50_Y50_N14
\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegPreco|q\(2) $ (\U_Maquina|U_Datapath|U_RegTotal|q\(2) $ (((\U_Maquina|U_Datapath|U_RegTotal|q\(1)) # (!\U_Maquina|U_Datapath|U_RegPreco|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegPreco|q\(2),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	combout => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X50_Y50_N12
\U_Maquina|U_Datapath|U_RegRet|q[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[2]~22_combout\ = (\KEY[1]~input_o\ & (((!\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\)))) # (!\KEY[1]~input_o\ & ((\U_Maquina|U_Controller|estado_atual.Moeda~q\ & 
-- (\U_Maquina|U_Datapath|U_RegTotal|q\(2))) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\ & ((!\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	datac => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[2]~22_combout\);

-- Location: LCCOMB_X52_Y50_N28
\U_Maquina|U_Datapath|U_RegRet|q[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[2]~5_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:2:U_Bit|FA_2|S~combout\,
	datab => \U_Maquina|U_Datapath|U_RegRet|q[2]~22_combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[2]~5_combout\);

-- Location: FF_X52_Y50_N29
\U_Maquina|U_Datapath|U_RegRet|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[2]~5_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(2),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(2));

-- Location: LCCOMB_X54_Y50_N20
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(3) $ (((\U_Maquina|U_Datapath|U_RegRet|q\(0)) # ((\U_Maquina|U_Datapath|U_RegRet|q\(2)) # (\U_Maquina|U_Datapath|U_RegRet|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(0),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(2),
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegRet|q\(3),
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X51_Y51_N10
\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\ = (\U_Maquina|U_Datapath|U_RegPreco|q\(2) & (\U_Maquina|U_Datapath|U_RegTotal|q\(2) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(1)) # (!\U_Maquina|U_Datapath|U_RegPreco|q\(1))))) # 
-- (!\U_Maquina|U_Datapath|U_RegPreco|q\(2) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(1)) # ((\U_Maquina|U_Datapath|U_RegTotal|q\(2)) # (!\U_Maquina|U_Datapath|U_RegPreco|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	datab => \U_Maquina|U_Datapath|U_RegPreco|q\(1),
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(2),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(2),
	combout => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\);

-- Location: LCCOMB_X51_Y51_N0
\U_Maquina|U_Datapath|U_RegRet|q[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[3]~17_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(3) $ (((!\U_Maquina|U_Controller|Selector6~0_combout\ & (\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\ $ 
-- (!\U_Maquina|U_Datapath|U_RegPreco|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\,
	datab => \U_Maquina|U_Controller|Selector6~0_combout\,
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(3),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	combout => \U_Maquina|U_Datapath|U_RegRet|q[3]~17_combout\);

-- Location: LCCOMB_X52_Y50_N2
\U_Maquina|U_Datapath|U_RegRet|q[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[3]~4_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:3:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[3]~17_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[3]~4_combout\);

-- Location: FF_X52_Y50_N3
\U_Maquina|U_Datapath|U_RegRet|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[3]~4_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(3),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(3));

-- Location: LCCOMB_X52_Y50_N10
\U_Maquina|U_Datapath|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|Equal0~0_combout\ = (!\U_Maquina|U_Datapath|U_RegRet|q\(1) & (!\U_Maquina|U_Datapath|U_RegRet|q\(3) & (!\U_Maquina|U_Datapath|U_RegRet|q\(2) & !\U_Maquina|U_Datapath|U_RegRet|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(1),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(3),
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(2),
	datad => \U_Maquina|U_Datapath|U_RegRet|q\(0),
	combout => \U_Maquina|U_Datapath|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y50_N14
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(4) $ (!\U_Maquina|U_Datapath|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(4),
	datac => \U_Maquina|U_Datapath|Equal0~0_combout\,
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X51_Y51_N24
\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(4) $ (((\U_Maquina|U_Datapath|U_RegPreco|q\(3) & (\U_Maquina|U_Datapath|U_RegTotal|q\(3) & 
-- \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\)) # (!\U_Maquina|U_Datapath|U_RegPreco|q\(3) & ((\U_Maquina|U_Datapath|U_RegTotal|q\(3)) # (\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegPreco|q\(3),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\,
	combout => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X51_Y51_N22
\U_Maquina|U_Datapath|U_RegRet|q[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[4]~24_combout\ = (\U_Maquina|U_Controller|estado_atual.Moeda~q\ & ((\KEY[1]~input_o\ & ((!\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\))) # (!\KEY[1]~input_o\ & 
-- (\U_Maquina|U_Datapath|U_RegTotal|q\(4))))) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\ & (((!\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datab => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[4]~24_combout\);

-- Location: LCCOMB_X52_Y50_N16
\U_Maquina|U_Datapath|U_RegRet|q[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[4]~3_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:4:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[4]~24_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[4]~3_combout\);

-- Location: FF_X52_Y50_N17
\U_Maquina|U_Datapath|U_RegRet|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[4]~3_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(4),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(4));

-- Location: LCCOMB_X52_Y50_N0
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(5) $ (((\U_Maquina|U_Datapath|U_RegRet|q\(4)) # (!\U_Maquina|U_Datapath|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(5),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(4),
	datac => \U_Maquina|U_Datapath|Equal0~0_combout\,
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X51_Y51_N4
\U_Maquina|U_Datapath|U_RegTotal|q[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[5]~5_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(5) $ (((\U_Maquina|U_Datapath|U_RegTotal|q\(4) & \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[5]~5_combout\);

-- Location: FF_X51_Y51_N5
\U_Maquina|U_Datapath|U_RegTotal|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegTotal|q[5]~5_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(5));

-- Location: LCCOMB_X52_Y51_N16
\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\ = (\U_Maquina|U_Datapath|U_RegTotal|q\(4)) # ((\U_Maquina|U_Datapath|U_RegTotal|q\(3) & ((\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\) # 
-- (!\U_Maquina|U_Datapath|U_RegPreco|q\(3)))) # (!\U_Maquina|U_Datapath|U_RegTotal|q\(3) & (!\U_Maquina|U_Datapath|U_RegPreco|q\(3) & \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(3),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datac => \U_Maquina|U_Datapath|U_RegPreco|q\(3),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:2:U_Bit|FA_3|Z~combout\,
	combout => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\);

-- Location: LCCOMB_X52_Y51_N8
\U_Maquina|U_Datapath|U_RegRet|q[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[5]~23_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(5) $ (((!\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\ & ((\KEY[1]~input_o\) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[5]~23_combout\);

-- Location: LCCOMB_X52_Y50_N26
\U_Maquina|U_Datapath|U_RegRet|q[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[5]~2_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[5]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:5:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[5]~23_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[5]~2_combout\);

-- Location: FF_X52_Y50_N27
\U_Maquina|U_Datapath|U_RegRet|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[5]~2_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(5),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(5));

-- Location: LCCOMB_X52_Y50_N22
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(6) $ (((\U_Maquina|U_Datapath|U_RegRet|q\(5)) # ((\U_Maquina|U_Datapath|U_RegRet|q\(4)) # (!\U_Maquina|U_Datapath|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(5),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(4),
	datac => \U_Maquina|U_Datapath|Equal0~0_combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q\(6),
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X50_Y51_N16
\U_Maquina|U_Datapath|U_RegTotal|q[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[6]~6_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(6) $ (((\U_Maquina|U_Datapath|U_RegTotal|q\(5) & (\U_Maquina|U_Datapath|U_RegTotal|q\(4) & \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(6),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[6]~6_combout\);

-- Location: FF_X50_Y51_N17
\U_Maquina|U_Datapath|U_RegTotal|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegTotal|q[6]~6_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(6));

-- Location: LCCOMB_X52_Y51_N30
\U_Maquina|U_Datapath|U_RegRet|q[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[6]~21_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(6) $ (((!\U_Maquina|U_Controller|Selector6~0_combout\ & (!\U_Maquina|U_Datapath|U_RegTotal|q\(5) & 
-- !\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector6~0_combout\,
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(6),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[6]~21_combout\);

-- Location: LCCOMB_X52_Y50_N4
\U_Maquina|U_Datapath|U_RegRet|q[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[6]~1_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:6:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[6]~21_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[6]~1_combout\);

-- Location: FF_X52_Y50_N5
\U_Maquina|U_Datapath|U_RegRet|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[6]~1_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(6),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(6));

-- Location: LCCOMB_X52_Y50_N12
\U_Maquina|U_Datapath|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|Equal0~1_combout\ = (!\U_Maquina|U_Datapath|U_RegRet|q\(5) & (!\U_Maquina|U_Datapath|U_RegRet|q\(4) & (!\U_Maquina|U_Datapath|U_RegRet|q\(6) & \U_Maquina|U_Datapath|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q\(5),
	datab => \U_Maquina|U_Datapath|U_RegRet|q\(4),
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(6),
	datad => \U_Maquina|U_Datapath|Equal0~0_combout\,
	combout => \U_Maquina|U_Datapath|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y50_N20
\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S~combout\ = \U_Maquina|U_Datapath|U_RegRet|q\(7) $ (!\U_Maquina|U_Datapath|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(7),
	datad => \U_Maquina|U_Datapath|Equal0~1_combout\,
	combout => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S~combout\);

-- Location: LCCOMB_X50_Y51_N2
\U_Maquina|U_Datapath|U_RegTotal|q[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[7]~3_combout\ = (\U_Maquina|U_Datapath|U_RegTotal|q\(5) & (\U_Maquina|U_Datapath|U_RegTotal|q\(4) & (\U_Maquina|U_Datapath|U_RegTotal|q\(6) & \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datab => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(6),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q[4]~0_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[7]~3_combout\);

-- Location: LCCOMB_X50_Y51_N26
\U_Maquina|U_Datapath|U_RegTotal|q[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegTotal|q[7]~4_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(7) $ (\U_Maquina|U_Datapath|U_RegTotal|q[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(7),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q[7]~3_combout\,
	combout => \U_Maquina|U_Datapath|U_RegTotal|q[7]~4_combout\);

-- Location: FF_X50_Y51_N27
\U_Maquina|U_Datapath|U_RegTotal|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegTotal|q[7]~4_combout\,
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegTotal|q\(7));

-- Location: LCCOMB_X52_Y51_N18
\U_Maquina|U_Datapath|U_RegRet|q[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[7]~13_combout\ = (!\U_Maquina|U_Datapath|U_RegTotal|q\(6) & ((\KEY[1]~input_o\) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(6),
	datad => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[7]~13_combout\);

-- Location: LCCOMB_X52_Y51_N4
\U_Maquina|U_Datapath|U_RegRet|q[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[7]~14_combout\ = \U_Maquina|U_Datapath|U_RegTotal|q\(7) $ (((\U_Maquina|U_Datapath|U_RegRet|q[7]~13_combout\ & (!\U_Maquina|U_Datapath|U_RegTotal|q\(5) & 
-- !\U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(7),
	datab => \U_Maquina|U_Datapath|U_RegRet|q[7]~13_combout\,
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(5),
	datad => \U_Maquina|U_Datapath|U_SubTroco|GEN_SUBTRACTOR:4:U_Bit|FA_3|Z~combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[7]~14_combout\);

-- Location: LCCOMB_X52_Y50_N8
\U_Maquina|U_Datapath|U_RegRet|q[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|U_RegRet|q[7]~0_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & (!\U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S~combout\)) # (!\U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\ & 
-- ((\U_Maquina|U_Datapath|U_RegRet|q[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegRet|q[1]~15_combout\,
	datab => \U_Maquina|U_Datapath|U_SubDec|GEN_SUBTRACTOR:7:U_Bit|FA_2|S~combout\,
	datad => \U_Maquina|U_Datapath|U_RegRet|q[7]~14_combout\,
	combout => \U_Maquina|U_Datapath|U_RegRet|q[7]~0_combout\);

-- Location: FF_X52_Y50_N9
\U_Maquina|U_Datapath|U_RegRet|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Datapath|U_RegRet|q[7]~0_combout\,
	asdata => \U_Maquina|U_Datapath|U_RegRet|q\(7),
	clrn => \U_Maquina|U_Datapath|U_RegTotal|ALT_INV_process_0~0_combout\,
	sload => \U_Maquina|U_Datapath|U_RegRet|q[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Datapath|U_RegRet|q\(7));

-- Location: LCCOMB_X52_Y50_N18
\U_Maquina|U_Datapath|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Datapath|Equal0~2_combout\ = (\U_Maquina|U_Datapath|U_RegRet|q\(7)) # (!\U_Maquina|U_Datapath|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Maquina|U_Datapath|U_RegRet|q\(7),
	datad => \U_Maquina|U_Datapath|Equal0~1_combout\,
	combout => \U_Maquina|U_Datapath|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y50_N2
\U_Maquina|U_Controller|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector5~2_combout\ = (\U_Maquina|U_Controller|Selector5~1_combout\) # ((\U_Maquina|U_Datapath|Equal0~2_combout\ & (\U_Maquina|U_Controller|estado_atual.Retorno~q\ & \U_Maquina|U_Controller|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector5~1_combout\,
	datab => \U_Maquina|U_Datapath|Equal0~2_combout\,
	datac => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	datad => \U_Maquina|U_Controller|Selector4~0_combout\,
	combout => \U_Maquina|U_Controller|Selector5~2_combout\);

-- Location: FF_X51_Y50_N3
\U_Maquina|U_Controller|estado_atual.Retorno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector5~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Retorno~q\);

-- Location: LCCOMB_X51_Y51_N6
\U_Maquina|U_Controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector0~0_combout\ = (\KEY[1]~input_o\ & (\U_Maquina|U_Controller|estado_atual.Retorno~q\ & ((!\U_Maquina|U_Datapath|Equal0~2_combout\)))) # (!\KEY[1]~input_o\ & (((\U_Maquina|U_Controller|estado_atual.Seleciona~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	datab => \U_Maquina|U_Controller|estado_atual.Seleciona~q\,
	datac => \KEY[1]~input_o\,
	datad => \U_Maquina|U_Datapath|Equal0~2_combout\,
	combout => \U_Maquina|U_Controller|Selector0~0_combout\);

-- Location: LCCOMB_X51_Y51_N28
\U_Maquina|U_Controller|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector0~1_combout\ = (!\U_Maquina|U_Controller|Selector0~0_combout\ & (((\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\) # (!\KEY[0]~input_o\)) # (!\U_Maquina|U_Controller|estado_atual.Dispensa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\,
	datad => \U_Maquina|U_Controller|Selector0~0_combout\,
	combout => \U_Maquina|U_Controller|Selector0~1_combout\);

-- Location: FF_X51_Y51_N29
\U_Maquina|U_Controller|estado_atual.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector0~1_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Inicio~q\);

-- Location: LCCOMB_X51_Y51_N26
\U_Maquina|U_Controller|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector1~1_combout\ = (\U_Maquina|U_Controller|Selector1~0_combout\) # (((\KEY[0]~input_o\ & \U_Maquina|U_Controller|estado_atual.Espera~q\)) # (!\U_Maquina|U_Controller|estado_atual.Inicio~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector1~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Espera~q\,
	datad => \U_Maquina|U_Controller|estado_atual.Inicio~q\,
	combout => \U_Maquina|U_Controller|Selector1~1_combout\);

-- Location: FF_X51_Y51_N27
\U_Maquina|U_Controller|estado_atual.Espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector1~1_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Espera~q\);

-- Location: LCCOMB_X51_Y51_N20
\U_Maquina|U_Controller|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector2~0_combout\ = (\U_Maquina|U_Controller|estado_atual.Seleciona~q\ & (\KEY[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Controller|estado_atual.Seleciona~q\,
	datac => \KEY[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \U_Maquina|U_Controller|Selector2~0_combout\);

-- Location: LCCOMB_X51_Y51_N16
\U_Maquina|U_Controller|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector2~1_combout\ = (\U_Maquina|U_Controller|Selector2~0_combout\) # ((!\KEY[0]~input_o\ & \U_Maquina|U_Controller|estado_atual.Espera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \U_Maquina|U_Controller|estado_atual.Espera~q\,
	datad => \U_Maquina|U_Controller|Selector2~0_combout\,
	combout => \U_Maquina|U_Controller|Selector2~1_combout\);

-- Location: FF_X51_Y51_N17
\U_Maquina|U_Controller|estado_atual.Seleciona\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector2~1_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Seleciona~q\);

-- Location: LCCOMB_X51_Y51_N2
\U_Maquina|U_Controller|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector3~1_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & (\KEY[1]~input_o\ & \U_Maquina|U_Controller|estado_atual.Seleciona~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \U_Maquina|U_Controller|estado_atual.Seleciona~q\,
	combout => \U_Maquina|U_Controller|Selector3~1_combout\);

-- Location: LCCOMB_X51_Y50_N4
\U_Maquina|U_Controller|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|process_1~0_combout\ = (!\U_Maquina|U_Datapath|U_RegTotal|q\(0) & (!\U_Maquina|U_Datapath|U_RegTotal|q\(4) & (\U_Maquina|U_Datapath|U_RegPreco|q\(1) $ (!\U_Maquina|U_Datapath|U_RegTotal|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Datapath|U_RegTotal|q\(0),
	datab => \U_Maquina|U_Datapath|U_RegPreco|q\(1),
	datac => \U_Maquina|U_Datapath|U_RegTotal|q\(1),
	datad => \U_Maquina|U_Datapath|U_RegTotal|q\(4),
	combout => \U_Maquina|U_Controller|process_1~0_combout\);

-- Location: LCCOMB_X51_Y50_N10
\U_Maquina|U_Controller|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|process_1~1_combout\ = (\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\ & \U_Maquina|U_Controller|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~0_combout\,
	datac => \U_Maquina|U_Controller|process_1~0_combout\,
	combout => \U_Maquina|U_Controller|process_1~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U_Maquina|U_Controller|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector3~0_combout\ = (\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # ((!\U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\ & !\U_Maquina|U_Controller|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \U_Maquina|U_Datapath|U_Comp|GEN_COMPARATOR:0:U_Bit|gt_out~3_combout\,
	datad => \U_Maquina|U_Controller|process_1~1_combout\,
	combout => \U_Maquina|U_Controller|Selector3~0_combout\);

-- Location: LCCOMB_X51_Y50_N6
\U_Maquina|U_Controller|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector3~2_combout\ = (\U_Maquina|U_Controller|Selector3~1_combout\) # ((\U_Maquina|U_Controller|total_ld~2_combout\) # ((\U_Maquina|U_Controller|Selector3~0_combout\ & \U_Maquina|U_Controller|estado_atual.Moeda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector3~1_combout\,
	datab => \U_Maquina|U_Controller|Selector3~0_combout\,
	datac => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datad => \U_Maquina|U_Controller|total_ld~2_combout\,
	combout => \U_Maquina|U_Controller|Selector3~2_combout\);

-- Location: FF_X51_Y50_N7
\U_Maquina|U_Controller|estado_atual.Moeda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector3~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Moeda~q\);

-- Location: LCCOMB_X51_Y50_N20
\U_Maquina|U_Controller|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector4~0_combout\ = (!\U_Maquina|U_Controller|estado_atual.Dispensa~q\ & (((!\U_Maquina|U_Controller|total_ld~0_combout\ & \U_Maquina|U_Controller|Selector3~0_combout\)) # (!\U_Maquina|U_Controller|estado_atual.Moeda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|estado_atual.Moeda~q\,
	datab => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datac => \U_Maquina|U_Controller|total_ld~0_combout\,
	datad => \U_Maquina|U_Controller|Selector3~0_combout\,
	combout => \U_Maquina|U_Controller|Selector4~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\U_Maquina|U_Controller|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|Selector4~2_combout\ = (!\U_Maquina|U_Controller|Selector4~1_combout\ & (!\U_Maquina|U_Controller|Selector4~0_combout\ & ((\U_Maquina|U_Controller|estado_atual.Dispensa~q\) # (!\U_Maquina|U_Controller|total_ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Maquina|U_Controller|Selector4~1_combout\,
	datab => \U_Maquina|U_Controller|total_ld~0_combout\,
	datac => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	datad => \U_Maquina|U_Controller|Selector4~0_combout\,
	combout => \U_Maquina|U_Controller|Selector4~2_combout\);

-- Location: FF_X51_Y50_N9
\U_Maquina|U_Controller|estado_atual.Dispensa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_Divisor|clk~clkctrl_outclk\,
	d => \U_Maquina|U_Controller|Selector4~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Maquina|U_Controller|estado_atual.Dispensa~q\);

-- Location: LCCOMB_X51_Y51_N8
\U_Maquina|U_Controller|liberar_bebida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|liberar_bebida~0_combout\ = (\KEY[0]~input_o\ & \U_Maquina|U_Controller|estado_atual.Dispensa~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \U_Maquina|U_Controller|estado_atual.Dispensa~q\,
	combout => \U_Maquina|U_Controller|liberar_bebida~0_combout\);

-- Location: LCCOMB_X50_Y50_N28
\U_Maquina|U_Controller|liberar_retorno~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_Maquina|U_Controller|liberar_retorno~0_combout\ = (\KEY[1]~input_o\ & \U_Maquina|U_Controller|estado_atual.Retorno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \U_Maquina|U_Controller|estado_atual.Retorno~q\,
	combout => \U_Maquina|U_Controller|liberar_retorno~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\KEY[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\KEY[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


