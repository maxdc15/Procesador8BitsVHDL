-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/27/2024 10:08:00"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Fibonacci IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	p_in_00 : IN std_logic_vector(7 DOWNTO 0);
	p_in_01 : IN std_logic_vector(7 DOWNTO 0);
	p_in_02 : IN std_logic_vector(7 DOWNTO 0);
	p_in_03 : IN std_logic_vector(7 DOWNTO 0);
	p_in_04 : IN std_logic_vector(7 DOWNTO 0);
	p_in_05 : IN std_logic_vector(7 DOWNTO 0);
	p_in_06 : IN std_logic_vector(7 DOWNTO 0);
	p_in_07 : IN std_logic_vector(7 DOWNTO 0);
	p_in_08 : IN std_logic_vector(7 DOWNTO 0);
	p_in_09 : IN std_logic_vector(7 DOWNTO 0);
	p_in_10 : IN std_logic_vector(7 DOWNTO 0);
	p_in_11 : IN std_logic_vector(7 DOWNTO 0);
	p_in_12 : IN std_logic_vector(7 DOWNTO 0);
	p_in_13 : IN std_logic_vector(7 DOWNTO 0);
	p_in_14 : IN std_logic_vector(7 DOWNTO 0);
	p_in_15 : IN std_logic_vector(7 DOWNTO 0);
	OUTPUT : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END Fibonacci;

ARCHITECTURE structure OF Fibonacci IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_p_in_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(13 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[4]~output_o\ : std_logic;
SIGNAL \OUTPUT[5]~output_o\ : std_logic;
SIGNAL \OUTPUT[6]~output_o\ : std_logic;
SIGNAL \OUTPUT[7]~output_o\ : std_logic;
SIGNAL \OUTPUT[8]~output_o\ : std_logic;
SIGNAL \OUTPUT[9]~output_o\ : std_logic;
SIGNAL \OUTPUT[10]~output_o\ : std_logic;
SIGNAL \OUTPUT[11]~output_o\ : std_logic;
SIGNAL \OUTPUT[12]~output_o\ : std_logic;
SIGNAL \OUTPUT[13]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \DivFrec|Q[0]~22_combout\ : std_logic;
SIGNAL \DivFrec|Q[1]~17_combout\ : std_logic;
SIGNAL \DivFrec|Q[2]~16_combout\ : std_logic;
SIGNAL \DivFrec|Q[3]~15_combout\ : std_logic;
SIGNAL \DivFrec|I0|I3|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[4]~21_combout\ : std_logic;
SIGNAL \DivFrec|Q[5]~20_combout\ : std_logic;
SIGNAL \DivFrec|Q[6]~19_combout\ : std_logic;
SIGNAL \DivFrec|I0|I6|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[7]~18_combout\ : std_logic;
SIGNAL \DivFrec|Q[8]~14_combout\ : std_logic;
SIGNAL \DivFrec|Q[9]~13_combout\ : std_logic;
SIGNAL \DivFrec|I0|I9|Cout~0_combout\ : std_logic;
SIGNAL \DivFrec|I0|I9|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[10]~12_combout\ : std_logic;
SIGNAL \DivFrec|Q[11]~11_combout\ : std_logic;
SIGNAL \DivFrec|Q[12]~10_combout\ : std_logic;
SIGNAL \DivFrec|I0|I12|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[13]~9_combout\ : std_logic;
SIGNAL \DivFrec|Q[14]~8_combout\ : std_logic;
SIGNAL \DivFrec|Q[15]~7_combout\ : std_logic;
SIGNAL \DivFrec|I0|I15|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[16]~6_combout\ : std_logic;
SIGNAL \DivFrec|Q[17]~5_combout\ : std_logic;
SIGNAL \DivFrec|Q[18]~4_combout\ : std_logic;
SIGNAL \DivFrec|I0|I18|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[19]~3_combout\ : std_logic;
SIGNAL \DivFrec|Q[20]~2_combout\ : std_logic;
SIGNAL \DivFrec|Q[21]~1_combout\ : std_logic;
SIGNAL \DivFrec|I0|I21|Cout~combout\ : std_logic;
SIGNAL \DivFrec|Q[22]~0_combout\ : std_logic;
SIGNAL \DivFrec|I0|OVER~combout\ : std_logic;
SIGNAL \DivFrec|QFF~q\ : std_logic;
SIGNAL \p_in_05[0]~input_o\ : std_logic;
SIGNAL \p_in_06[2]~input_o\ : std_logic;
SIGNAL \p_in_10[2]~input_o\ : std_logic;
SIGNAL \p_in_10[3]~input_o\ : std_logic;
SIGNAL \p_in_10[7]~input_o\ : std_logic;
SIGNAL \p_in_09[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C1|IR_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal8~0_combout\ : std_logic;
SIGNAL \p_in_06[6]~input_o\ : std_logic;
SIGNAL \p_in_10[6]~input_o\ : std_logic;
SIGNAL \p_in_02[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~0_combout\ : std_logic;
SIGNAL \p_in_14[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~1_combout\ : std_logic;
SIGNAL \p_in_09[6]~input_o\ : std_logic;
SIGNAL \p_in_05[6]~input_o\ : std_logic;
SIGNAL \p_in_01[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~2_combout\ : std_logic;
SIGNAL \p_in_13[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~3_combout\ : std_logic;
SIGNAL \p_in_08[6]~input_o\ : std_logic;
SIGNAL \p_in_04[6]~input_o\ : std_logic;
SIGNAL \p_in_00[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~4_combout\ : std_logic;
SIGNAL \p_in_12[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~6_combout\ : std_logic;
SIGNAL \p_in_07[6]~input_o\ : std_logic;
SIGNAL \p_in_11[6]~input_o\ : std_logic;
SIGNAL \p_in_03[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~7_combout\ : std_logic;
SIGNAL \p_in_15[6]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~9_combout\ : std_logic;
SIGNAL \p_in_05[4]~input_o\ : std_logic;
SIGNAL \p_in_09[4]~input_o\ : std_logic;
SIGNAL \p_in_01[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~0_combout\ : std_logic;
SIGNAL \p_in_13[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~1_combout\ : std_logic;
SIGNAL \p_in_10[4]~input_o\ : std_logic;
SIGNAL \p_in_06[4]~input_o\ : std_logic;
SIGNAL \p_in_02[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~2_combout\ : std_logic;
SIGNAL \p_in_14[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~3_combout\ : std_logic;
SIGNAL \p_in_04[4]~input_o\ : std_logic;
SIGNAL \p_in_08[4]~input_o\ : std_logic;
SIGNAL \p_in_00[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~4_combout\ : std_logic;
SIGNAL \p_in_12[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~6_combout\ : std_logic;
SIGNAL \p_in_11[4]~input_o\ : std_logic;
SIGNAL \p_in_07[4]~input_o\ : std_logic;
SIGNAL \p_in_03[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~7_combout\ : std_logic;
SIGNAL \p_in_15[4]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_inmA3~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_inmA3~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_A4~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal7~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_DIR_A5~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_A5~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal11~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal6~0_combout\ : std_logic;
SIGNAL \p_in_06[5]~input_o\ : std_logic;
SIGNAL \p_in_05[5]~input_o\ : std_logic;
SIGNAL \p_in_04[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~0_combout\ : std_logic;
SIGNAL \p_in_07[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~1_combout\ : std_logic;
SIGNAL \p_in_09[5]~input_o\ : std_logic;
SIGNAL \p_in_10[5]~input_o\ : std_logic;
SIGNAL \p_in_08[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~2_combout\ : std_logic;
SIGNAL \p_in_11[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~3_combout\ : std_logic;
SIGNAL \p_in_02[5]~input_o\ : std_logic;
SIGNAL \p_in_01[5]~input_o\ : std_logic;
SIGNAL \p_in_00[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~4_combout\ : std_logic;
SIGNAL \p_in_03[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~6_combout\ : std_logic;
SIGNAL \p_in_13[5]~input_o\ : std_logic;
SIGNAL \p_in_14[5]~input_o\ : std_logic;
SIGNAL \p_in_12[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~7_combout\ : std_logic;
SIGNAL \p_in_15[5]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[0]~_wirecell_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal6~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal6~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~12_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Selector10~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JMP1~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JMP1~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JMP2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JMP3~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal6~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_DIR_B~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_B~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.INC_B~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.INC_B~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal7~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.DEC_B~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.DEC_B~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal23~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal24~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.NOT_B~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.NOT_B~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr13~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr13~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|B_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.DEC_A~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.DEC_A~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.XOR_AB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.XOR_AB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr30~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.NOT_A~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.NOT_A~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.ADD_AB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.ADD_AB~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.ADD_AB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal17~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.AND_AB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.AND_AB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr1~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr1~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr26~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr34~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal3~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|ALU_Select~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal0~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.OR_AB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.OR_AB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr32~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[3]~17_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[3]~18_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I6|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal13~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal12~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal6~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux7~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr21~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr21~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr9~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr19~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr17~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr21~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA6|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I2|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I3|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal0~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I6|Cout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I7|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux0~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux0~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux5~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux6~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux6~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal4~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS6|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal1~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal5~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal3~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Equal6~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[3]~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|OverFlow~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|CCR_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_V~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_V~q\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[0]~13_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[0]~14_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[0]~15_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[0]~16_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_NC~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_NC~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_C~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_C~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_NZ~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_NZ~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr3~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr6~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr6~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr23~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux4~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux4~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA6|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux5~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS6|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~14_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~12_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA5|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS5|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA5|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS5|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux2~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA7|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~13_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~14_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~15_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA3|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS3|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA3|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS3|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux4~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA4|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS2|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS4|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA4|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS4|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux6~9_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I2|FA2|HA1|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I3|FS2|HS1|Diff~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags~12_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC4~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC4~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC4~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC4~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC4~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC4~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr9~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|PC_Inc~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[4]~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux1~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux1~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[1]~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[3]~19_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS7|HS0|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|I1|FS7|HS1|Bout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Flags[3]~20_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Negativo~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_N~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_N~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_NV~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_NV~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_NN~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_NN~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.JCC1_Z~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC1_Z~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr3~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr3~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.JCC3~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|PC_Load~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|PC_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I4|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|Contador|I5|Sum~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux2~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux2~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[0]~0_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[1]~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[2]~2_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[3]~3_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[4]~4_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[5]~5_combout\ : std_logic;
SIGNAL \Pros|MEM0|ram_address[6]~6_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[0]~0_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[1]~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[2]~2_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[3]~3_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[4]~4_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[5]~5_combout\ : std_logic;
SIGNAL \Pros|MEM0|rom_address[6]~6_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr17~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux10~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr19~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr19~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[5]~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Equal15~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.INC_A~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.INC_A~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.SUB_AB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.SUB_AB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr34~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr11~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|A_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux3~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux3~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux3~5_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux11~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[4]~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.STOREA~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.STOREA~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.STOREA2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.STOREA3~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.STOREB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.STOREB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.STOREA4~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.STOREA4~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|wr~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|wr~1_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|wr~combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux1~13_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux9~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[6]~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|P2~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_inmA1~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_inmA1~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_inmA2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_inmB~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_inmB~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr13~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr19~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr1~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr1~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.IDLE~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Fetch1~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Fetch1~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Fetch2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|Selector10~6_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Selector10~3_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Selector10~4_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|Selector10~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Decode~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|FUT.Load_DIR_A~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_A~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_A2~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|EDO.Load_DIR_A3~q\ : std_logic;
SIGNAL \Pros|CPU0|C1|WideOr6~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|MAR_Load~combout\ : std_logic;
SIGNAL \p_in_08[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~0_combout\ : std_logic;
SIGNAL \p_in_11[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~1_combout\ : std_logic;
SIGNAL \p_in_05[7]~input_o\ : std_logic;
SIGNAL \p_in_06[7]~input_o\ : std_logic;
SIGNAL \p_in_04[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~2_combout\ : std_logic;
SIGNAL \p_in_07[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~3_combout\ : std_logic;
SIGNAL \p_in_01[7]~input_o\ : std_logic;
SIGNAL \p_in_02[7]~input_o\ : std_logic;
SIGNAL \p_in_00[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~4_combout\ : std_logic;
SIGNAL \p_in_03[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~6_combout\ : std_logic;
SIGNAL \p_in_14[7]~input_o\ : std_logic;
SIGNAL \p_in_13[7]~input_o\ : std_logic;
SIGNAL \p_in_12[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~7_combout\ : std_logic;
SIGNAL \p_in_15[7]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~9_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux0~12_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux8~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[7]~7_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~17_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~15_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~2_combout\ : std_logic;
SIGNAL \p_in_06[1]~input_o\ : std_logic;
SIGNAL \p_in_05[1]~input_o\ : std_logic;
SIGNAL \p_in_04[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~3_combout\ : std_logic;
SIGNAL \p_in_07[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~4_combout\ : std_logic;
SIGNAL \p_in_02[1]~input_o\ : std_logic;
SIGNAL \p_in_01[1]~input_o\ : std_logic;
SIGNAL \p_in_00[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~5_combout\ : std_logic;
SIGNAL \p_in_03[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~6_combout\ : std_logic;
SIGNAL \p_in_09[1]~input_o\ : std_logic;
SIGNAL \p_in_10[1]~input_o\ : std_logic;
SIGNAL \p_in_08[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~7_combout\ : std_logic;
SIGNAL \p_in_11[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~8_combout\ : std_logic;
SIGNAL \p_in_13[1]~input_o\ : std_logic;
SIGNAL \p_in_14[1]~input_o\ : std_logic;
SIGNAL \p_in_12[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~9_combout\ : std_logic;
SIGNAL \p_in_15[1]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~12_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~13_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux14~14_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[1]~1_combout\ : std_logic;
SIGNAL \p_in_09[3]~input_o\ : std_logic;
SIGNAL \p_in_08[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~5_combout\ : std_logic;
SIGNAL \p_in_11[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~6_combout\ : std_logic;
SIGNAL \p_in_05[3]~input_o\ : std_logic;
SIGNAL \p_in_06[3]~input_o\ : std_logic;
SIGNAL \p_in_04[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~7_combout\ : std_logic;
SIGNAL \p_in_07[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~8_combout\ : std_logic;
SIGNAL \p_in_01[3]~input_o\ : std_logic;
SIGNAL \p_in_02[3]~input_o\ : std_logic;
SIGNAL \p_in_00[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~9_combout\ : std_logic;
SIGNAL \p_in_03[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~11_combout\ : std_logic;
SIGNAL \p_in_14[3]~input_o\ : std_logic;
SIGNAL \p_in_13[3]~input_o\ : std_logic;
SIGNAL \p_in_12[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~12_combout\ : std_logic;
SIGNAL \p_in_15[3]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~13_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~14_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~15_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux12~16_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[3]~3_combout\ : std_logic;
SIGNAL \p_in_02[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~0_combout\ : std_logic;
SIGNAL \p_in_14[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~1_combout\ : std_logic;
SIGNAL \p_in_09[2]~input_o\ : std_logic;
SIGNAL \p_in_05[2]~input_o\ : std_logic;
SIGNAL \p_in_01[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~2_combout\ : std_logic;
SIGNAL \p_in_13[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~3_combout\ : std_logic;
SIGNAL \p_in_08[2]~input_o\ : std_logic;
SIGNAL \p_in_04[2]~input_o\ : std_logic;
SIGNAL \p_in_00[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~4_combout\ : std_logic;
SIGNAL \p_in_12[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~6_combout\ : std_logic;
SIGNAL \p_in_07[2]~input_o\ : std_logic;
SIGNAL \p_in_11[2]~input_o\ : std_logic;
SIGNAL \p_in_03[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~7_combout\ : std_logic;
SIGNAL \p_in_15[2]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~9_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C2|Mux5~5_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux13~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[2]~2_combout\ : std_logic;
SIGNAL \p_in_09[0]~input_o\ : std_logic;
SIGNAL \p_in_01[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~0_combout\ : std_logic;
SIGNAL \p_in_13[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~1_combout\ : std_logic;
SIGNAL \p_in_10[0]~input_o\ : std_logic;
SIGNAL \p_in_06[0]~input_o\ : std_logic;
SIGNAL \p_in_02[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~2_combout\ : std_logic;
SIGNAL \p_in_14[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~3_combout\ : std_logic;
SIGNAL \p_in_04[0]~input_o\ : std_logic;
SIGNAL \p_in_08[0]~input_o\ : std_logic;
SIGNAL \p_in_00[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~4_combout\ : std_logic;
SIGNAL \p_in_12[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~5_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~6_combout\ : std_logic;
SIGNAL \p_in_11[0]~input_o\ : std_logic;
SIGNAL \p_in_07[0]~input_o\ : std_logic;
SIGNAL \p_in_03[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~7_combout\ : std_logic;
SIGNAL \p_in_15[0]~input_o\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~8_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~9_combout\ : std_logic;
SIGNAL \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~10_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux15~11_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C3|cuenta[0]~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux7~0_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|Mux7~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][7]~0_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][7]~1_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][7]~2_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][0]~q\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][1]~q\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][2]~q\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][3]~q\ : std_logic;
SIGNAL \Coder|Mux13~0_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][5]~q\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][4]~q\ : std_logic;
SIGNAL \Coder|Mux13~1_combout\ : std_logic;
SIGNAL \Coder|Mux13~2_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][6]~q\ : std_logic;
SIGNAL \Coder|Mux13~3_combout\ : std_logic;
SIGNAL \Coder|Mux13~4_combout\ : std_logic;
SIGNAL \Pros|MEM0|puertos|RAM[0][7]~q\ : std_logic;
SIGNAL \Coder|Mux0~0_combout\ : std_logic;
SIGNAL \Coder|Mux13~5_combout\ : std_logic;
SIGNAL \Coder|Mux12~0_combout\ : std_logic;
SIGNAL \Coder|Mux12~1_combout\ : std_logic;
SIGNAL \Coder|Mux12~2_combout\ : std_logic;
SIGNAL \Coder|Mux13~6_combout\ : std_logic;
SIGNAL \Coder|Mux2~0_combout\ : std_logic;
SIGNAL \Coder|Mux12~3_combout\ : std_logic;
SIGNAL \Coder|Mux12~4_combout\ : std_logic;
SIGNAL \Coder|Mux11~0_combout\ : std_logic;
SIGNAL \Coder|Mux11~1_combout\ : std_logic;
SIGNAL \Coder|Mux11~2_combout\ : std_logic;
SIGNAL \Coder|Mux11~3_combout\ : std_logic;
SIGNAL \Coder|Mux9~0_combout\ : std_logic;
SIGNAL \Coder|Mux12~5_combout\ : std_logic;
SIGNAL \Coder|Mux9~1_combout\ : std_logic;
SIGNAL \Coder|Mux8~0_combout\ : std_logic;
SIGNAL \Coder|Mux8~1_combout\ : std_logic;
SIGNAL \Coder|Mux8~2_combout\ : std_logic;
SIGNAL \Coder|Mux8~3_combout\ : std_logic;
SIGNAL \Coder|Mux8~4_combout\ : std_logic;
SIGNAL \Coder|Mux8~5_combout\ : std_logic;
SIGNAL \Coder|Mux7~0_combout\ : std_logic;
SIGNAL \Coder|Mux7~1_combout\ : std_logic;
SIGNAL \Coder|Mux7~2_combout\ : std_logic;
SIGNAL \Coder|Mux7~3_combout\ : std_logic;
SIGNAL \Coder|Mux6~0_combout\ : std_logic;
SIGNAL \Coder|Mux6~1_combout\ : std_logic;
SIGNAL \Coder|Mux6~2_combout\ : std_logic;
SIGNAL \Coder|Mux6~3_combout\ : std_logic;
SIGNAL \Coder|Mux5~0_combout\ : std_logic;
SIGNAL \Coder|Mux5~1_combout\ : std_logic;
SIGNAL \Coder|Mux5~2_combout\ : std_logic;
SIGNAL \Coder|Mux4~0_combout\ : std_logic;
SIGNAL \Coder|Mux4~1_combout\ : std_logic;
SIGNAL \Coder|Mux2~1_combout\ : std_logic;
SIGNAL \Coder|Mux2~2_combout\ : std_logic;
SIGNAL \Coder|Mux2~3_combout\ : std_logic;
SIGNAL \Coder|Mux1~0_combout\ : std_logic;
SIGNAL \Coder|Mux1~1_combout\ : std_logic;
SIGNAL \Coder|Mux12~6_combout\ : std_logic;
SIGNAL \Coder|Mux0~1_combout\ : std_logic;
SIGNAL \Coder|Mux0~2_combout\ : std_logic;
SIGNAL \Pros|CPU0|C2|C1|RegIR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C3|cuenta\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C1|RegA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C1|RegB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C2|Flags\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DivFrec|Q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C1|RegMAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C1|Bus1_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Pros|CPU0|C2|C1|RegCCR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Pros|CPU0|C1|Bus2_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Pros|CPU0|C1|ALU_Select\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pros|CPU0|C1|ALT_INV_PC_Load~combout\ : std_logic;
SIGNAL \Pros|CPU0|C1|ALT_INV_wr~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_p_in_00 <= p_in_00;
ww_p_in_01 <= p_in_01;
ww_p_in_02 <= p_in_02;
ww_p_in_03 <= p_in_03;
ww_p_in_04 <= p_in_04;
ww_p_in_05 <= p_in_05;
ww_p_in_06 <= p_in_06;
ww_p_in_07 <= p_in_07;
ww_p_in_08 <= p_in_08;
ww_p_in_09 <= p_in_09;
ww_p_in_10 <= p_in_10;
ww_p_in_11 <= p_in_11;
ww_p_in_12 <= p_in_12;
ww_p_in_13 <= p_in_13;
ww_p_in_14 <= p_in_14;
ww_p_in_15 <= p_in_15;
OUTPUT <= ww_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux7~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux4~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux5~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux6~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux3~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux1~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux0~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \Pros|CPU0|C2|Mux2~1_combout\;

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\Pros|MEM0|ram_address[6]~6_combout\ & \Pros|MEM0|ram_address[5]~5_combout\ & \Pros|MEM0|ram_address[4]~4_combout\ & \Pros|MEM0|ram_address[3]~3_combout\ & 
\Pros|MEM0|ram_address[2]~2_combout\ & \Pros|MEM0|ram_address[1]~1_combout\ & \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Pros|MEM0|rom_address[6]~6_combout\ & \Pros|MEM0|rom_address[5]~5_combout\ & \Pros|MEM0|rom_address[4]~4_combout\ & \Pros|MEM0|rom_address[3]~3_combout\ & 
\Pros|MEM0|rom_address[2]~2_combout\ & \Pros|MEM0|rom_address[1]~1_combout\ & \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\Pros|CPU0|C1|ALT_INV_PC_Load~combout\ <= NOT \Pros|CPU0|C1|PC_Load~combout\;
\Pros|CPU0|C1|ALT_INV_wr~combout\ <= NOT \Pros|CPU0|C1|wr~combout\;

\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux13~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux13~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

\OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[4]~output_o\);

\OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux8~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[5]~output_o\);

\OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[6]~output_o\);

\OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[7]~output_o\);

\OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[8]~output_o\);

\OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[9]~output_o\);

\OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[10]~output_o\);

\OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[11]~output_o\);

\OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[12]~output_o\);

\OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Coder|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[13]~output_o\);

\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

\DivFrec|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|I0|OVER~combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(23));

\DivFrec|Q[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[0]~22_combout\ = !\DivFrec|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(0),
	combout => \DivFrec|Q[0]~22_combout\);

\DivFrec|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[0]~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(0));

\DivFrec|Q[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[1]~17_combout\ = \DivFrec|Q\(1) $ (\DivFrec|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(1),
	datad => \DivFrec|Q\(0),
	combout => \DivFrec|Q[1]~17_combout\);

\DivFrec|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[1]~17_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(1));

\DivFrec|Q[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[2]~16_combout\ = \DivFrec|Q\(2) $ (((\DivFrec|Q\(1) & \DivFrec|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(2),
	datac => \DivFrec|Q\(1),
	datad => \DivFrec|Q\(0),
	combout => \DivFrec|Q[2]~16_combout\);

\DivFrec|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[2]~16_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(2));

\DivFrec|Q[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[3]~15_combout\ = \DivFrec|Q\(3) $ (((\DivFrec|Q\(2) & (\DivFrec|Q\(1) & \DivFrec|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(3),
	datab => \DivFrec|Q\(2),
	datac => \DivFrec|Q\(1),
	datad => \DivFrec|Q\(0),
	combout => \DivFrec|Q[3]~15_combout\);

\DivFrec|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[3]~15_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(3));

\DivFrec|I0|I3|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I3|Cout~combout\ = (\DivFrec|Q\(3) & (\DivFrec|Q\(2) & (\DivFrec|Q\(1) & \DivFrec|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(3),
	datab => \DivFrec|Q\(2),
	datac => \DivFrec|Q\(1),
	datad => \DivFrec|Q\(0),
	combout => \DivFrec|I0|I3|Cout~combout\);

\DivFrec|Q[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[4]~21_combout\ = \DivFrec|Q\(4) $ (\DivFrec|I0|I3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(4),
	datad => \DivFrec|I0|I3|Cout~combout\,
	combout => \DivFrec|Q[4]~21_combout\);

\DivFrec|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[4]~21_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(4));

\DivFrec|Q[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[5]~20_combout\ = \DivFrec|Q\(5) $ (((\DivFrec|Q\(4) & \DivFrec|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(5),
	datac => \DivFrec|Q\(4),
	datad => \DivFrec|I0|I3|Cout~combout\,
	combout => \DivFrec|Q[5]~20_combout\);

\DivFrec|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[5]~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(5));

\DivFrec|Q[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[6]~19_combout\ = \DivFrec|Q\(6) $ (((\DivFrec|Q\(5) & (\DivFrec|Q\(4) & \DivFrec|I0|I3|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(6),
	datab => \DivFrec|Q\(5),
	datac => \DivFrec|Q\(4),
	datad => \DivFrec|I0|I3|Cout~combout\,
	combout => \DivFrec|Q[6]~19_combout\);

\DivFrec|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[6]~19_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(6));

\DivFrec|I0|I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I6|Cout~combout\ = (\DivFrec|Q\(6) & (\DivFrec|Q\(5) & (\DivFrec|Q\(4) & \DivFrec|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(6),
	datab => \DivFrec|Q\(5),
	datac => \DivFrec|Q\(4),
	datad => \DivFrec|I0|I3|Cout~combout\,
	combout => \DivFrec|I0|I6|Cout~combout\);

\DivFrec|Q[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[7]~18_combout\ = \DivFrec|Q\(7) $ (\DivFrec|I0|I6|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(7),
	datad => \DivFrec|I0|I6|Cout~combout\,
	combout => \DivFrec|Q[7]~18_combout\);

\DivFrec|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[7]~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(7));

\DivFrec|Q[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[8]~14_combout\ = \DivFrec|Q\(8) $ (((\DivFrec|Q\(7) & \DivFrec|I0|I6|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(8),
	datac => \DivFrec|Q\(7),
	datad => \DivFrec|I0|I6|Cout~combout\,
	combout => \DivFrec|Q[8]~14_combout\);

\DivFrec|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[8]~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(8));

\DivFrec|Q[9]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[9]~13_combout\ = \DivFrec|Q\(9) $ (((\DivFrec|Q\(8) & (\DivFrec|Q\(7) & \DivFrec|I0|I6|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(9),
	datab => \DivFrec|Q\(8),
	datac => \DivFrec|Q\(7),
	datad => \DivFrec|I0|I6|Cout~combout\,
	combout => \DivFrec|Q[9]~13_combout\);

\DivFrec|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[9]~13_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(9));

\DivFrec|I0|I9|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I9|Cout~0_combout\ = (\DivFrec|Q\(7) & (\DivFrec|Q\(6) & (\DivFrec|Q\(5) & \DivFrec|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(7),
	datab => \DivFrec|Q\(6),
	datac => \DivFrec|Q\(5),
	datad => \DivFrec|Q\(4),
	combout => \DivFrec|I0|I9|Cout~0_combout\);

\DivFrec|I0|I9|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I9|Cout~combout\ = (\DivFrec|Q\(9) & (\DivFrec|Q\(8) & (\DivFrec|I0|I3|Cout~combout\ & \DivFrec|I0|I9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(9),
	datab => \DivFrec|Q\(8),
	datac => \DivFrec|I0|I3|Cout~combout\,
	datad => \DivFrec|I0|I9|Cout~0_combout\,
	combout => \DivFrec|I0|I9|Cout~combout\);

\DivFrec|Q[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[10]~12_combout\ = \DivFrec|Q\(10) $ (\DivFrec|I0|I9|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(10),
	datad => \DivFrec|I0|I9|Cout~combout\,
	combout => \DivFrec|Q[10]~12_combout\);

\DivFrec|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[10]~12_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(10));

\DivFrec|Q[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[11]~11_combout\ = \DivFrec|Q\(11) $ (((\DivFrec|Q\(10) & \DivFrec|I0|I9|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(11),
	datac => \DivFrec|Q\(10),
	datad => \DivFrec|I0|I9|Cout~combout\,
	combout => \DivFrec|Q[11]~11_combout\);

\DivFrec|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[11]~11_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(11));

\DivFrec|Q[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[12]~10_combout\ = \DivFrec|Q\(12) $ (((\DivFrec|Q\(11) & (\DivFrec|Q\(10) & \DivFrec|I0|I9|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(12),
	datab => \DivFrec|Q\(11),
	datac => \DivFrec|Q\(10),
	datad => \DivFrec|I0|I9|Cout~combout\,
	combout => \DivFrec|Q[12]~10_combout\);

\DivFrec|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[12]~10_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(12));

\DivFrec|I0|I12|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I12|Cout~combout\ = (\DivFrec|Q\(12) & (\DivFrec|Q\(11) & (\DivFrec|Q\(10) & \DivFrec|I0|I9|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(12),
	datab => \DivFrec|Q\(11),
	datac => \DivFrec|Q\(10),
	datad => \DivFrec|I0|I9|Cout~combout\,
	combout => \DivFrec|I0|I12|Cout~combout\);

\DivFrec|Q[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[13]~9_combout\ = \DivFrec|Q\(13) $ (\DivFrec|I0|I12|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(13),
	datad => \DivFrec|I0|I12|Cout~combout\,
	combout => \DivFrec|Q[13]~9_combout\);

\DivFrec|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[13]~9_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(13));

\DivFrec|Q[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[14]~8_combout\ = \DivFrec|Q\(14) $ (((\DivFrec|Q\(13) & \DivFrec|I0|I12|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(14),
	datac => \DivFrec|Q\(13),
	datad => \DivFrec|I0|I12|Cout~combout\,
	combout => \DivFrec|Q[14]~8_combout\);

\DivFrec|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[14]~8_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(14));

\DivFrec|Q[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[15]~7_combout\ = \DivFrec|Q\(15) $ (((\DivFrec|Q\(14) & (\DivFrec|Q\(13) & \DivFrec|I0|I12|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(15),
	datab => \DivFrec|Q\(14),
	datac => \DivFrec|Q\(13),
	datad => \DivFrec|I0|I12|Cout~combout\,
	combout => \DivFrec|Q[15]~7_combout\);

\DivFrec|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[15]~7_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(15));

\DivFrec|I0|I15|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I15|Cout~combout\ = (\DivFrec|Q\(15) & (\DivFrec|Q\(14) & (\DivFrec|Q\(13) & \DivFrec|I0|I12|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(15),
	datab => \DivFrec|Q\(14),
	datac => \DivFrec|Q\(13),
	datad => \DivFrec|I0|I12|Cout~combout\,
	combout => \DivFrec|I0|I15|Cout~combout\);

\DivFrec|Q[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[16]~6_combout\ = \DivFrec|Q\(16) $ (\DivFrec|I0|I15|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(16),
	datad => \DivFrec|I0|I15|Cout~combout\,
	combout => \DivFrec|Q[16]~6_combout\);

\DivFrec|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[16]~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(16));

\DivFrec|Q[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[17]~5_combout\ = \DivFrec|Q\(17) $ (((\DivFrec|Q\(16) & \DivFrec|I0|I15|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(17),
	datac => \DivFrec|Q\(16),
	datad => \DivFrec|I0|I15|Cout~combout\,
	combout => \DivFrec|Q[17]~5_combout\);

\DivFrec|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[17]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(17));

\DivFrec|Q[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[18]~4_combout\ = \DivFrec|Q\(18) $ (((\DivFrec|Q\(17) & (\DivFrec|Q\(16) & \DivFrec|I0|I15|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(18),
	datab => \DivFrec|Q\(17),
	datac => \DivFrec|Q\(16),
	datad => \DivFrec|I0|I15|Cout~combout\,
	combout => \DivFrec|Q[18]~4_combout\);

\DivFrec|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[18]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(18));

\DivFrec|I0|I18|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I18|Cout~combout\ = (\DivFrec|Q\(18) & (\DivFrec|Q\(17) & (\DivFrec|Q\(16) & \DivFrec|I0|I15|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(18),
	datab => \DivFrec|Q\(17),
	datac => \DivFrec|Q\(16),
	datad => \DivFrec|I0|I15|Cout~combout\,
	combout => \DivFrec|I0|I18|Cout~combout\);

\DivFrec|Q[19]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[19]~3_combout\ = \DivFrec|Q\(19) $ (\DivFrec|I0|I18|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(19),
	datad => \DivFrec|I0|I18|Cout~combout\,
	combout => \DivFrec|Q[19]~3_combout\);

\DivFrec|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[19]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(19));

\DivFrec|Q[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[20]~2_combout\ = \DivFrec|Q\(20) $ (((\DivFrec|Q\(19) & \DivFrec|I0|I18|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(20),
	datac => \DivFrec|Q\(19),
	datad => \DivFrec|I0|I18|Cout~combout\,
	combout => \DivFrec|Q[20]~2_combout\);

\DivFrec|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[20]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(20));

\DivFrec|Q[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[21]~1_combout\ = \DivFrec|Q\(21) $ (((\DivFrec|Q\(20) & (\DivFrec|Q\(19) & \DivFrec|I0|I18|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(21),
	datab => \DivFrec|Q\(20),
	datac => \DivFrec|Q\(19),
	datad => \DivFrec|I0|I18|Cout~combout\,
	combout => \DivFrec|Q[21]~1_combout\);

\DivFrec|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[21]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(21));

\DivFrec|I0|I21|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|I21|Cout~combout\ = (\DivFrec|Q\(21) & (\DivFrec|Q\(20) & (\DivFrec|Q\(19) & \DivFrec|I0|I18|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFrec|Q\(21),
	datab => \DivFrec|Q\(20),
	datac => \DivFrec|Q\(19),
	datad => \DivFrec|I0|I18|Cout~combout\,
	combout => \DivFrec|I0|I21|Cout~combout\);

\DivFrec|Q[22]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|Q[22]~0_combout\ = \DivFrec|Q\(22) $ (\DivFrec|I0|I21|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFrec|Q\(22),
	datad => \DivFrec|I0|I21|Cout~combout\,
	combout => \DivFrec|Q[22]~0_combout\);

\DivFrec|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|Q[22]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|Q\(22));

\DivFrec|I0|OVER\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFrec|I0|OVER~combout\ = \DivFrec|Q\(23) $ (((\DivFrec|Q\(22) & \DivFrec|I0|I21|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFrec|Q\(23),
	datac => \DivFrec|Q\(22),
	datad => \DivFrec|I0|I21|Cout~combout\,
	combout => \DivFrec|I0|OVER~combout\);

\DivFrec|QFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DivFrec|I0|OVER~combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFrec|QFF~q\);

\p_in_05[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(0),
	o => \p_in_05[0]~input_o\);

\p_in_06[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(2),
	o => \p_in_06[2]~input_o\);

\p_in_10[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(2),
	o => \p_in_10[2]~input_o\);

\p_in_10[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(3),
	o => \p_in_10[3]~input_o\);

\p_in_10[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(7),
	o => \p_in_10[7]~input_o\);

\p_in_09[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(7),
	o => \p_in_09[7]~input_o\);

\Pros|CPU0|C1|IR_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|IR_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|IR_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|EDO.Fetch2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|EDO.Fetch2~q\,
	datac => \Pros|CPU0|C1|IR_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|IR_Load~combout\);

\Pros|CPU0|C2|C1|RegIR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(2));

\Pros|CPU0|C2|C1|RegIR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(1));

\Pros|CPU0|C1|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal8~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(2) & \Pros|CPU0|C2|C1|RegIR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(2),
	datab => \Pros|CPU0|C2|C1|RegIR\(1),
	combout => \Pros|CPU0|C1|Equal8~0_combout\);

\Pros|CPU0|C2|C1|RegIR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(7));

\p_in_06[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(6),
	o => \p_in_06[6]~input_o\);

\p_in_10[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(6),
	o => \p_in_10[6]~input_o\);

\p_in_02[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(6),
	o => \p_in_02[6]~input_o\);

\Pros|CPU0|C2|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_10[6]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_02[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_10[6]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_02[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~0_combout\);

\p_in_14[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(6),
	o => \p_in_14[6]~input_o\);

\Pros|CPU0|C2|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux9~0_combout\ & ((\p_in_14[6]~input_o\))) # (!\Pros|CPU0|C2|Mux9~0_combout\ & (\p_in_06[6]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_06[6]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux9~0_combout\,
	datad => \p_in_14[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~1_combout\);

\p_in_09[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(6),
	o => \p_in_09[6]~input_o\);

\p_in_05[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(6),
	o => \p_in_05[6]~input_o\);

\p_in_01[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(6),
	o => \p_in_01[6]~input_o\);

\Pros|CPU0|C2|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_05[6]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_01[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_05[6]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_01[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~2_combout\);

\p_in_13[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(6),
	o => \p_in_13[6]~input_o\);

\Pros|CPU0|C2|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux9~2_combout\ & ((\p_in_13[6]~input_o\))) # (!\Pros|CPU0|C2|Mux9~2_combout\ & (\p_in_09[6]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_09[6]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux9~2_combout\,
	datad => \p_in_13[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~3_combout\);

\p_in_08[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(6),
	o => \p_in_08[6]~input_o\);

\p_in_04[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(6),
	o => \p_in_04[6]~input_o\);

\p_in_00[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(6),
	o => \p_in_00[6]~input_o\);

\Pros|CPU0|C2|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_04[6]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_00[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_04[6]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_00[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~4_combout\);

\p_in_12[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(6),
	o => \p_in_12[6]~input_o\);

\Pros|CPU0|C2|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux9~4_combout\ & ((\p_in_12[6]~input_o\))) # (!\Pros|CPU0|C2|Mux9~4_combout\ & (\p_in_08[6]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_08[6]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux9~4_combout\,
	datad => \p_in_12[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~5_combout\);

\Pros|CPU0|C2|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\Pros|CPU0|C2|Mux9~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- ((\Pros|CPU0|C2|Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \Pros|CPU0|C2|Mux9~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \Pros|CPU0|C2|Mux9~5_combout\,
	combout => \Pros|CPU0|C2|Mux9~6_combout\);

\p_in_07[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(6),
	o => \p_in_07[6]~input_o\);

\p_in_11[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(6),
	o => \p_in_11[6]~input_o\);

\p_in_03[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(6),
	o => \p_in_03[6]~input_o\);

\Pros|CPU0|C2|Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_11[6]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_03[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_11[6]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_03[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~7_combout\);

\p_in_15[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(6),
	o => \p_in_15[6]~input_o\);

\Pros|CPU0|C2|Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux9~7_combout\ & ((\p_in_15[6]~input_o\))) # (!\Pros|CPU0|C2|Mux9~7_combout\ & (\p_in_07[6]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_07[6]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux9~7_combout\,
	datad => \p_in_15[6]~input_o\,
	combout => \Pros|CPU0|C2|Mux9~8_combout\);

\Pros|CPU0|C2|Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux9~6_combout\ & ((\Pros|CPU0|C2|Mux9~8_combout\))) # (!\Pros|CPU0|C2|Mux9~6_combout\ & (\Pros|CPU0|C2|Mux9~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux9~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux9~6_combout\,
	datad => \Pros|CPU0|C2|Mux9~8_combout\,
	combout => \Pros|CPU0|C2|Mux9~9_combout\);

\p_in_05[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(4),
	o => \p_in_05[4]~input_o\);

\p_in_09[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(4),
	o => \p_in_09[4]~input_o\);

\p_in_01[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(4),
	o => \p_in_01[4]~input_o\);

\Pros|CPU0|C2|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_09[4]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_01[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_09[4]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_01[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~0_combout\);

\p_in_13[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(4),
	o => \p_in_13[4]~input_o\);

\Pros|CPU0|C2|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux11~0_combout\ & ((\p_in_13[4]~input_o\))) # (!\Pros|CPU0|C2|Mux11~0_combout\ & (\p_in_05[4]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_05[4]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux11~0_combout\,
	datad => \p_in_13[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~1_combout\);

\p_in_10[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(4),
	o => \p_in_10[4]~input_o\);

\p_in_06[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(4),
	o => \p_in_06[4]~input_o\);

\p_in_02[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(4),
	o => \p_in_02[4]~input_o\);

\Pros|CPU0|C2|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_06[4]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_02[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_06[4]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_02[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~2_combout\);

\p_in_14[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(4),
	o => \p_in_14[4]~input_o\);

\Pros|CPU0|C2|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux11~2_combout\ & ((\p_in_14[4]~input_o\))) # (!\Pros|CPU0|C2|Mux11~2_combout\ & (\p_in_10[4]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_10[4]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux11~2_combout\,
	datad => \p_in_14[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~3_combout\);

\p_in_04[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(4),
	o => \p_in_04[4]~input_o\);

\p_in_08[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(4),
	o => \p_in_08[4]~input_o\);

\p_in_00[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(4),
	o => \p_in_00[4]~input_o\);

\Pros|CPU0|C2|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_08[4]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_00[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_08[4]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_00[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~4_combout\);

\p_in_12[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(4),
	o => \p_in_12[4]~input_o\);

\Pros|CPU0|C2|Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux11~4_combout\ & ((\p_in_12[4]~input_o\))) # (!\Pros|CPU0|C2|Mux11~4_combout\ & (\p_in_04[4]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_04[4]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux11~4_combout\,
	datad => \p_in_12[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~5_combout\);

\Pros|CPU0|C2|Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\Pros|CPU0|C2|Mux11~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- ((\Pros|CPU0|C2|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \Pros|CPU0|C2|Mux11~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \Pros|CPU0|C2|Mux11~5_combout\,
	combout => \Pros|CPU0|C2|Mux11~6_combout\);

\p_in_11[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(4),
	o => \p_in_11[4]~input_o\);

\p_in_07[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(4),
	o => \p_in_07[4]~input_o\);

\p_in_03[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(4),
	o => \p_in_03[4]~input_o\);

\Pros|CPU0|C2|Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_07[4]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_03[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_07[4]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_03[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~7_combout\);

\p_in_15[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(4),
	o => \p_in_15[4]~input_o\);

\Pros|CPU0|C2|Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux11~7_combout\ & ((\p_in_15[4]~input_o\))) # (!\Pros|CPU0|C2|Mux11~7_combout\ & (\p_in_11[4]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_11[4]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux11~7_combout\,
	datad => \p_in_15[4]~input_o\,
	combout => \Pros|CPU0|C2|Mux11~8_combout\);

\Pros|CPU0|C2|Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux11~6_combout\ & ((\Pros|CPU0|C2|Mux11~8_combout\))) # (!\Pros|CPU0|C2|Mux11~6_combout\ & (\Pros|CPU0|C2|Mux11~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux11~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux11~6_combout\,
	datad => \Pros|CPU0|C2|Mux11~8_combout\,
	combout => \Pros|CPU0|C2|Mux11~9_combout\);

\Pros|CPU0|C2|C1|RegIR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(0));

\Pros|CPU0|C1|FUT.Load_inmA3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_inmA3~0_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|EDO.Load_inmA2~q\ & \Pros|CPU0|C1|P2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|EDO.Load_inmA2~q\,
	datad => \Pros|CPU0|C1|P2~4_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_inmA3~0_combout\);

\Pros|CPU0|C1|EDO.Load_inmA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_inmA3~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_inmA3~q\);

\Pros|CPU0|C1|EDO.Load_DIR_A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Load_DIR_A3~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_A4~q\);

\Pros|CPU0|C2|C1|RegIR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(3));

\Pros|CPU0|C1|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal7~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(3) & (!\Pros|CPU0|C2|C1|RegIR\(4) & (!\Pros|CPU0|C2|C1|RegIR\(2) & !\Pros|CPU0|C2|C1|RegIR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(3),
	datab => \Pros|CPU0|C2|C1|RegIR\(4),
	datac => \Pros|CPU0|C2|C1|RegIR\(2),
	datad => \Pros|CPU0|C2|C1|RegIR\(1),
	combout => \Pros|CPU0|C1|Equal7~0_combout\);

\Pros|CPU0|C1|FUT.Load_DIR_A5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_DIR_A5~0_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|EDO.Load_DIR_A4~q\ & (\Pros|CPU0|C1|P2~2_combout\ & \Pros|CPU0|C1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datab => \Pros|CPU0|C1|EDO.Load_DIR_A4~q\,
	datac => \Pros|CPU0|C1|P2~2_combout\,
	datad => \Pros|CPU0|C1|Equal7~0_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_DIR_A5~0_combout\);

\Pros|CPU0|C1|EDO.Load_DIR_A5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_DIR_A5~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_A5~q\);

\Pros|CPU0|C1|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal11~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(2) & !\Pros|CPU0|C2|C1|RegIR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(2),
	datad => \Pros|CPU0|C2|C1|RegIR\(1),
	combout => \Pros|CPU0|C1|Equal11~0_combout\);

\Pros|CPU0|C1|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal6~0_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(3) & !\Pros|CPU0|C2|C1|RegIR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C1|RegIR\(3),
	datad => \Pros|CPU0|C2|C1|RegIR\(7),
	combout => \Pros|CPU0|C1|Equal6~0_combout\);

\p_in_06[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(5),
	o => \p_in_06[5]~input_o\);

\p_in_05[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(5),
	o => \p_in_05[5]~input_o\);

\p_in_04[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(5),
	o => \p_in_04[5]~input_o\);

\Pros|CPU0|C2|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_05[5]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_04[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_05[5]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_04[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~0_combout\);

\p_in_07[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(5),
	o => \p_in_07[5]~input_o\);

\Pros|CPU0|C2|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux10~0_combout\ & ((\p_in_07[5]~input_o\))) # (!\Pros|CPU0|C2|Mux10~0_combout\ & (\p_in_06[5]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_06[5]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux10~0_combout\,
	datad => \p_in_07[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~1_combout\);

\p_in_09[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(5),
	o => \p_in_09[5]~input_o\);

\p_in_10[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(5),
	o => \p_in_10[5]~input_o\);

\p_in_08[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(5),
	o => \p_in_08[5]~input_o\);

\Pros|CPU0|C2|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_10[5]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_08[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_10[5]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_08[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~2_combout\);

\p_in_11[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(5),
	o => \p_in_11[5]~input_o\);

\Pros|CPU0|C2|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux10~2_combout\ & ((\p_in_11[5]~input_o\))) # (!\Pros|CPU0|C2|Mux10~2_combout\ & (\p_in_09[5]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_09[5]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux10~2_combout\,
	datad => \p_in_11[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~3_combout\);

\p_in_02[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(5),
	o => \p_in_02[5]~input_o\);

\p_in_01[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(5),
	o => \p_in_01[5]~input_o\);

\p_in_00[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(5),
	o => \p_in_00[5]~input_o\);

\Pros|CPU0|C2|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_01[5]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_00[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_01[5]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_00[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~4_combout\);

\p_in_03[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(5),
	o => \p_in_03[5]~input_o\);

\Pros|CPU0|C2|Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux10~4_combout\ & ((\p_in_03[5]~input_o\))) # (!\Pros|CPU0|C2|Mux10~4_combout\ & (\p_in_02[5]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_02[5]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux10~4_combout\,
	datad => \p_in_03[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~5_combout\);

\Pros|CPU0|C2|Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\Pros|CPU0|C2|Mux10~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- ((\Pros|CPU0|C2|Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \Pros|CPU0|C2|Mux10~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \Pros|CPU0|C2|Mux10~5_combout\,
	combout => \Pros|CPU0|C2|Mux10~6_combout\);

\p_in_13[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(5),
	o => \p_in_13[5]~input_o\);

\p_in_14[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(5),
	o => \p_in_14[5]~input_o\);

\p_in_12[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(5),
	o => \p_in_12[5]~input_o\);

\Pros|CPU0|C2|Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_14[5]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_12[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_14[5]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_12[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~7_combout\);

\p_in_15[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(5),
	o => \p_in_15[5]~input_o\);

\Pros|CPU0|C2|Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux10~7_combout\ & ((\p_in_15[5]~input_o\))) # (!\Pros|CPU0|C2|Mux10~7_combout\ & (\p_in_13[5]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_13[5]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux10~7_combout\,
	datad => \p_in_15[5]~input_o\,
	combout => \Pros|CPU0|C2|Mux10~8_combout\);

\Pros|CPU0|C2|Mux10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux10~6_combout\ & ((\Pros|CPU0|C2|Mux10~8_combout\))) # (!\Pros|CPU0|C2|Mux10~6_combout\ & (\Pros|CPU0|C2|Mux10~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux10~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux10~6_combout\,
	datad => \Pros|CPU0|C2|Mux10~8_combout\,
	combout => \Pros|CPU0|C2|Mux10~9_combout\);

\Pros|CPU0|C2|C1|RegA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(5));

\Pros|CPU0|C2|C3|cuenta[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[0]~_wirecell_combout\ = !\Pros|CPU0|C2|C3|cuenta\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C3|cuenta\(0),
	combout => \Pros|CPU0|C2|C3|cuenta[0]~_wirecell_combout\);

\Pros|CPU0|C1|Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal6~2_combout\ = (\Pros|CPU0|C2|C1|RegIR\(5) & (\Pros|CPU0|C1|Equal6~0_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(4) & !\Pros|CPU0|C2|C1|RegIR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(5),
	datab => \Pros|CPU0|C1|Equal6~0_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(4),
	datad => \Pros|CPU0|C2|C1|RegIR\(6),
	combout => \Pros|CPU0|C1|Equal6~2_combout\);

\Pros|CPU0|C1|Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal6~3_combout\ = (\Pros|CPU0|C1|Equal6~2_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|Equal6~3_combout\);

\Pros|CPU0|C1|P2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~12_combout\ = (\Pros|CPU0|C2|C1|RegIR\(7) & (!\Pros|CPU0|C2|C1|RegIR\(6) & (!\Pros|CPU0|C2|C1|RegIR\(5) & \Pros|CPU0|C1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(7),
	datab => \Pros|CPU0|C2|C1|RegIR\(6),
	datac => \Pros|CPU0|C2|C1|RegIR\(5),
	datad => \Pros|CPU0|C1|Equal7~0_combout\,
	combout => \Pros|CPU0|C1|P2~12_combout\);

\Pros|CPU0|C1|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Selector10~2_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|P2~4_combout\ & (!\Pros|CPU0|C1|P2~12_combout\ & !\Pros|CPU0|C1|P2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|P2~4_combout\,
	datac => \Pros|CPU0|C1|P2~12_combout\,
	datad => \Pros|CPU0|C1|P2~3_combout\,
	combout => \Pros|CPU0|C1|Selector10~2_combout\);

\Pros|CPU0|C1|FUT.JMP1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JMP1~4_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(2) & (!\Pros|CPU0|C2|C1|RegIR\(1) & (\Pros|CPU0|C1|Equal6~3_combout\ & \Pros|CPU0|C1|Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(2),
	datab => \Pros|CPU0|C2|C1|RegIR\(1),
	datac => \Pros|CPU0|C1|Equal6~3_combout\,
	datad => \Pros|CPU0|C1|Selector10~2_combout\,
	combout => \Pros|CPU0|C1|FUT.JMP1~4_combout\);

\Pros|CPU0|C1|EDO.JMP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JMP1~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JMP1~q\);

\Pros|CPU0|C1|EDO.JMP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.JMP1~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JMP2~q\);

\Pros|CPU0|C1|EDO.JMP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.JMP2~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JMP3~q\);

\Pros|CPU0|C1|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal6~1_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(2) & !\Pros|CPU0|C2|C1|RegIR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C1|RegIR\(2),
	datad => \Pros|CPU0|C2|C1|RegIR\(1),
	combout => \Pros|CPU0|C1|Equal6~1_combout\);

\Pros|CPU0|C1|FUT.Load_DIR_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_DIR_B~0_combout\ = (\Pros|CPU0|C1|EDO.Load_DIR_A4~q\ & ((\Pros|CPU0|C2|C1|RegIR\(0)) # ((!\Pros|CPU0|C1|Equal7~0_combout\) # (!\Pros|CPU0|C1|P2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Load_DIR_A4~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|P2~2_combout\,
	datad => \Pros|CPU0|C1|Equal7~0_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_DIR_B~0_combout\);

\Pros|CPU0|C1|EDO.Load_DIR_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_DIR_B~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_B~q\);

\Pros|CPU0|C1|FUT.INC_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.INC_B~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|Equal8~0_combout\ & (\Pros|CPU0|C1|Equal15~0_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|Equal8~0_combout\,
	datac => \Pros|CPU0|C1|Equal15~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|FUT.INC_B~0_combout\);

\Pros|CPU0|C1|EDO.INC_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.INC_B~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.INC_B~q\);

\Pros|CPU0|C1|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal7~1_combout\ = (\Pros|CPU0|C1|Equal7~0_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(0) & !\Pros|CPU0|C2|C1|RegIR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal7~0_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(0),
	datad => \Pros|CPU0|C2|C1|RegIR\(7),
	combout => \Pros|CPU0|C1|Equal7~1_combout\);

\Pros|CPU0|C1|FUT.DEC_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.DEC_B~2_combout\ = (\Pros|CPU0|C2|C1|RegIR\(6) & (!\Pros|CPU0|C2|C1|RegIR\(5) & (\Pros|CPU0|C1|EDO.Decode~q\ & \Pros|CPU0|C1|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(6),
	datab => \Pros|CPU0|C2|C1|RegIR\(5),
	datac => \Pros|CPU0|C1|EDO.Decode~q\,
	datad => \Pros|CPU0|C1|Equal7~1_combout\,
	combout => \Pros|CPU0|C1|FUT.DEC_B~2_combout\);

\Pros|CPU0|C1|EDO.DEC_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.DEC_B~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.DEC_B~q\);

\Pros|CPU0|C1|Equal23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal23~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(6) & !\Pros|CPU0|C2|C1|RegIR\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(6),
	datad => \Pros|CPU0|C2|C1|RegIR\(5),
	combout => \Pros|CPU0|C1|Equal23~0_combout\);

\Pros|CPU0|C1|Equal24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal24~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(4) & (\Pros|CPU0|C1|Equal6~1_combout\ & (\Pros|CPU0|C1|Equal6~0_combout\ & \Pros|CPU0|C1|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(4),
	datab => \Pros|CPU0|C1|Equal6~1_combout\,
	datac => \Pros|CPU0|C1|Equal6~0_combout\,
	datad => \Pros|CPU0|C1|Equal23~0_combout\,
	combout => \Pros|CPU0|C1|Equal24~0_combout\);

\Pros|CPU0|C1|FUT.NOT_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.NOT_B~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(0) & \Pros|CPU0|C1|Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|Equal24~0_combout\,
	combout => \Pros|CPU0|C1|FUT.NOT_B~0_combout\);

\Pros|CPU0|C1|EDO.NOT_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.NOT_B~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.NOT_B~q\);

\Pros|CPU0|C1|WideOr13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr13~4_combout\ = (!\Pros|CPU0|C1|EDO.INC_B~q\ & (!\Pros|CPU0|C1|EDO.DEC_B~q\ & !\Pros|CPU0|C1|EDO.NOT_B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|EDO.INC_B~q\,
	datac => \Pros|CPU0|C1|EDO.DEC_B~q\,
	datad => \Pros|CPU0|C1|EDO.NOT_B~q\,
	combout => \Pros|CPU0|C1|WideOr13~4_combout\);

\Pros|CPU0|C1|WideOr13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr13~combout\ = (\Pros|CPU0|C1|EDO.Load_inmB~q\) # ((\Pros|CPU0|C1|EDO.Load_DIR_B~q\) # (!\Pros|CPU0|C1|WideOr13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Load_inmB~q\,
	datab => \Pros|CPU0|C1|EDO.Load_DIR_B~q\,
	datac => \Pros|CPU0|C1|WideOr13~4_combout\,
	combout => \Pros|CPU0|C1|WideOr13~combout\);

\Pros|CPU0|C1|B_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|B_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|B_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr13~combout\,
	datac => \Pros|CPU0|C1|B_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|B_Load~combout\);

\Pros|CPU0|C2|C1|RegB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(6));

\Pros|CPU0|C2|C1|RegB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(5));

\Pros|CPU0|C2|C1|RegB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(4));

\Pros|CPU0|C2|C1|RegB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(0));

\Pros|CPU0|C2|C1|RegB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(1));

\Pros|CPU0|C2|C1|RegB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(2));

\Pros|CPU0|C2|C1|RegB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(3));

\Pros|CPU0|C2|C2|I2|FA3|HA1|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\ = (\Pros|CPU0|C2|C1|RegB\(0) & (\Pros|CPU0|C2|C1|RegB\(1) & (\Pros|CPU0|C2|C1|RegB\(2) & \Pros|CPU0|C2|C1|RegB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(0),
	datab => \Pros|CPU0|C2|C1|RegB\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(2),
	datad => \Pros|CPU0|C2|C1|RegB\(3),
	combout => \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\);

\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ = (\Pros|CPU0|C2|C1|RegB\(6) & (\Pros|CPU0|C2|C1|RegB\(5) & (\Pros|CPU0|C2|C1|RegB\(4) & \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(6),
	datab => \Pros|CPU0|C2|C1|RegB\(5),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\,
	combout => \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\);

\Pros|CPU0|C1|FUT.DEC_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.DEC_A~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal8~0_combout\ & \Pros|CPU0|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|Equal8~0_combout\,
	datad => \Pros|CPU0|C1|Equal15~0_combout\,
	combout => \Pros|CPU0|C1|FUT.DEC_A~0_combout\);

\Pros|CPU0|C1|EDO.DEC_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.DEC_A~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.DEC_A~q\);

\Pros|CPU0|C1|FUT.XOR_AB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.XOR_AB~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|Equal11~0_combout\ & (\Pros|CPU0|C1|Equal15~0_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|Equal11~0_combout\,
	datac => \Pros|CPU0|C1|Equal15~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|FUT.XOR_AB~0_combout\);

\Pros|CPU0|C1|EDO.XOR_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.XOR_AB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.XOR_AB~q\);

\Pros|CPU0|C1|WideOr30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr30~0_combout\ = (\Pros|CPU0|C1|EDO.INC_B~q\) # ((\Pros|CPU0|C1|EDO.INC_A~q\) # ((\Pros|CPU0|C1|EDO.DEC_A~q\) # (\Pros|CPU0|C1|EDO.XOR_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.INC_B~q\,
	datab => \Pros|CPU0|C1|EDO.INC_A~q\,
	datac => \Pros|CPU0|C1|EDO.DEC_A~q\,
	datad => \Pros|CPU0|C1|EDO.XOR_AB~q\,
	combout => \Pros|CPU0|C1|WideOr30~0_combout\);

\Pros|CPU0|C1|FUT.NOT_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.NOT_A~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|Equal24~0_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|Equal24~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|FUT.NOT_A~0_combout\);

\Pros|CPU0|C1|EDO.NOT_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.NOT_A~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.NOT_A~q\);

\Pros|CPU0|C1|FUT.ADD_AB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.ADD_AB~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|Equal6~1_combout\ & (\Pros|CPU0|C1|Equal15~0_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|Equal6~1_combout\,
	datac => \Pros|CPU0|C1|Equal15~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|FUT.ADD_AB~0_combout\);

\Pros|CPU0|C1|P2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~9_combout\ = (\Pros|CPU0|C1|Equal6~2_combout\ & ((\Pros|CPU0|C2|C1|RegIR\(0)) # ((\Pros|CPU0|C2|C1|RegIR\(2)) # (\Pros|CPU0|C2|C1|RegIR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~2_combout\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C2|C1|RegIR\(2),
	datad => \Pros|CPU0|C2|C1|RegIR\(1),
	combout => \Pros|CPU0|C1|P2~9_combout\);

\Pros|CPU0|C1|P2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~10_combout\ = (\Pros|CPU0|C1|P2~9_combout\) # ((\Pros|CPU0|C2|C1|RegIR\(5) & (\Pros|CPU0|C1|Equal7~1_combout\ & !\Pros|CPU0|C2|C1|RegIR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|P2~9_combout\,
	datab => \Pros|CPU0|C2|C1|RegIR\(5),
	datac => \Pros|CPU0|C1|Equal7~1_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(6),
	combout => \Pros|CPU0|C1|P2~10_combout\);

\Pros|CPU0|C1|FUT.ADD_AB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.ADD_AB~1_combout\ = (\Pros|CPU0|C1|FUT.ADD_AB~0_combout\ & !\Pros|CPU0|C1|P2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|FUT.ADD_AB~0_combout\,
	datad => \Pros|CPU0|C1|P2~10_combout\,
	combout => \Pros|CPU0|C1|FUT.ADD_AB~1_combout\);

\Pros|CPU0|C1|EDO.ADD_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.ADD_AB~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.ADD_AB~q\);

\Pros|CPU0|C1|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal17~0_combout\ = (\Pros|CPU0|C1|Equal6~0_combout\ & (\Pros|CPU0|C1|Equal23~0_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(4) & !\Pros|CPU0|C2|C1|RegIR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~0_combout\,
	datab => \Pros|CPU0|C1|Equal23~0_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(4),
	datad => \Pros|CPU0|C2|C1|RegIR\(2),
	combout => \Pros|CPU0|C1|Equal17~0_combout\);

\Pros|CPU0|C1|FUT.AND_AB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.AND_AB~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(1) & (\Pros|CPU0|C1|Equal17~0_combout\ & !\Pros|CPU0|C2|C1|RegIR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(1),
	datac => \Pros|CPU0|C1|Equal17~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(0),
	combout => \Pros|CPU0|C1|FUT.AND_AB~0_combout\);

\Pros|CPU0|C1|EDO.AND_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.AND_AB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.AND_AB~q\);

\Pros|CPU0|C1|WideOr1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr1~1_combout\ = (!\Pros|CPU0|C1|EDO.NOT_A~q\ & (!\Pros|CPU0|C1|EDO.ADD_AB~q\ & (!\Pros|CPU0|C1|EDO.AND_AB~q\ & !\Pros|CPU0|C1|EDO.XOR_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.NOT_A~q\,
	datab => \Pros|CPU0|C1|EDO.ADD_AB~q\,
	datac => \Pros|CPU0|C1|EDO.AND_AB~q\,
	datad => \Pros|CPU0|C1|EDO.XOR_AB~q\,
	combout => \Pros|CPU0|C1|WideOr1~1_combout\);

\Pros|CPU0|C1|WideOr1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr1~2_combout\ = (\Pros|CPU0|C1|WideOr13~4_combout\ & (\Pros|CPU0|C1|WideOr34~0_combout\ & \Pros|CPU0|C1|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr13~4_combout\,
	datab => \Pros|CPU0|C1|WideOr34~0_combout\,
	datac => \Pros|CPU0|C1|WideOr1~1_combout\,
	combout => \Pros|CPU0|C1|WideOr1~2_combout\);

\Pros|CPU0|C1|WideOr26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr26~0_combout\ = (\Pros|CPU0|C1|EDO.Fetch1~q\) # ((\Pros|CPU0|C1|EDO.Fetch2~q\) # ((!\Pros|CPU0|C1|WideOr1~2_combout\) # (!\Pros|CPU0|C1|EDO.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Fetch1~q\,
	datab => \Pros|CPU0|C1|EDO.Fetch2~q\,
	datac => \Pros|CPU0|C1|EDO.IDLE~q\,
	datad => \Pros|CPU0|C1|WideOr1~2_combout\,
	combout => \Pros|CPU0|C1|WideOr26~0_combout\);

\Pros|CPU0|C1|ALU_Select[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(2) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (\Pros|CPU0|C1|WideOr30~0_combout\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr30~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(2),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(2));

\Pros|CPU0|C1|WideOr34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr34~combout\ = (\Pros|CPU0|C1|EDO.NOT_B~q\) # (!\Pros|CPU0|C1|WideOr34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.NOT_B~q\,
	datad => \Pros|CPU0|C1|WideOr34~0_combout\,
	combout => \Pros|CPU0|C1|WideOr34~combout\);

\Pros|CPU0|C1|ALU_Select[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(0) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (\Pros|CPU0|C1|WideOr34~combout\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr34~combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(0));

\Pros|CPU0|C2|C2|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal3~2_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & \Pros|CPU0|C1|ALU_Select\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Equal3~2_combout\);

\Pros|CPU0|C1|ALU_Select[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(6) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (!\Pros|CPU0|C1|WideOr1~2_combout\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr1~2_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(6),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(6));

\Pros|CPU0|C1|ALU_Select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select~0_combout\ = (\Pros|CPU0|C1|EDO.NOT_B~q\) # (\Pros|CPU0|C1|EDO.NOT_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.NOT_B~q\,
	datab => \Pros|CPU0|C1|EDO.NOT_A~q\,
	combout => \Pros|CPU0|C1|ALU_Select~0_combout\);

\Pros|CPU0|C1|ALU_Select[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(4) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (\Pros|CPU0|C1|ALU_Select~0_combout\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|ALU_Select~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(4),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(4));

\Pros|CPU0|C1|ALU_Select[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(3) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (\Pros|CPU0|C1|EDO.DEC_B~q\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|EDO.DEC_B~q\,
	datac => \Pros|CPU0|C1|ALU_Select\(3),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(3));

\Pros|CPU0|C2|C2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal0~0_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & (!\Pros|CPU0|C1|ALU_Select\(4) & !\Pros|CPU0|C1|ALU_Select\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datac => \Pros|CPU0|C1|ALU_Select\(4),
	datad => \Pros|CPU0|C1|ALU_Select\(3),
	combout => \Pros|CPU0|C2|C2|Equal0~0_combout\);

\Pros|CPU0|C2|C1|RegB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegB\(7));

\Pros|CPU0|C1|FUT.OR_AB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.OR_AB~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C2|C1|RegIR\(1) & \Pros|CPU0|C1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C2|C1|RegIR\(1),
	datad => \Pros|CPU0|C1|Equal17~0_combout\,
	combout => \Pros|CPU0|C1|FUT.OR_AB~0_combout\);

\Pros|CPU0|C1|EDO.OR_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.OR_AB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.OR_AB~q\);

\Pros|CPU0|C1|WideOr32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr32~0_combout\ = (\Pros|CPU0|C1|EDO.INC_B~q\) # ((\Pros|CPU0|C1|EDO.DEC_A~q\) # ((\Pros|CPU0|C1|EDO.OR_AB~q\) # (\Pros|CPU0|C1|EDO.AND_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.INC_B~q\,
	datab => \Pros|CPU0|C1|EDO.DEC_A~q\,
	datac => \Pros|CPU0|C1|EDO.OR_AB~q\,
	datad => \Pros|CPU0|C1|EDO.AND_AB~q\,
	combout => \Pros|CPU0|C1|WideOr32~0_combout\);

\Pros|CPU0|C1|ALU_Select[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|ALU_Select\(1) = (\Pros|CPU0|C1|WideOr26~0_combout\ & (\Pros|CPU0|C1|WideOr32~0_combout\)) # (!\Pros|CPU0|C1|WideOr26~0_combout\ & ((\Pros|CPU0|C1|ALU_Select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr32~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C1|WideOr26~0_combout\,
	combout => \Pros|CPU0|C1|ALU_Select\(1));

\Pros|CPU0|C2|C2|Flags[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[3]~17_combout\ = (\Pros|CPU0|C2|C1|RegB\(7) & \Pros|CPU0|C1|ALU_Select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(7),
	datab => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Flags[3]~17_combout\);

\Pros|CPU0|C2|C2|Flags[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[3]~18_combout\ = (\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ & (\Pros|CPU0|C2|C2|Equal3~2_combout\ & (\Pros|CPU0|C2|C2|Equal0~0_combout\ & \Pros|CPU0|C2|C2|Flags[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\,
	datab => \Pros|CPU0|C2|C2|Equal3~2_combout\,
	datac => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datad => \Pros|CPU0|C2|C2|Flags[3]~17_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[3]~18_combout\);

\Pros|CPU0|C2|C1|RegA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(6));

\Pros|CPU0|C2|C3|Contador|I6|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I6|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(6) $ (((\Pros|CPU0|C2|C3|cuenta\(5) & (\Pros|CPU0|C2|C3|cuenta\(4) & \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C3|cuenta\(6),
	datab => \Pros|CPU0|C2|C3|cuenta\(5),
	datac => \Pros|CPU0|C2|C3|cuenta\(4),
	datad => \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\,
	combout => \Pros|CPU0|C2|C3|Contador|I6|Sum~combout\);

\Pros|CPU0|C1|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal13~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(1) & (\Pros|CPU0|C1|Equal6~2_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(0) & !\Pros|CPU0|C2|C1|RegIR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(1),
	datab => \Pros|CPU0|C1|Equal6~2_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(0),
	datad => \Pros|CPU0|C2|C1|RegIR\(2),
	combout => \Pros|CPU0|C1|Equal13~0_combout\);

\Pros|CPU0|C1|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal12~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C2|C1|RegIR\(1) & (\Pros|CPU0|C1|Equal6~2_combout\ & !\Pros|CPU0|C2|C1|RegIR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datab => \Pros|CPU0|C2|C1|RegIR\(1),
	datac => \Pros|CPU0|C1|Equal6~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(2),
	combout => \Pros|CPU0|C1|Equal12~0_combout\);

\Pros|CPU0|C2|C2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~2_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & !\Pros|CPU0|C1|ALU_Select\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datad => \Pros|CPU0|C1|ALU_Select\(3),
	combout => \Pros|CPU0|C2|C2|Mux1~2_combout\);

\Pros|CPU0|C2|C2|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~3_combout\ = (\Pros|CPU0|C1|ALU_Select\(4) & (\Pros|CPU0|C2|C2|Mux1~2_combout\ & (!\Pros|CPU0|C1|ALU_Select\(2) & !\Pros|CPU0|C1|ALU_Select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(4),
	datab => \Pros|CPU0|C2|C2|Mux1~2_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(2),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux1~3_combout\);

\Pros|CPU0|C2|C2|Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~8_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux1~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|Mux1~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~8_combout\);

\Pros|CPU0|C2|C2|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~0_combout\ = (\Pros|CPU0|C2|C1|RegB\(0) & (\Pros|CPU0|C1|ALU_Select\(2) $ (((\Pros|CPU0|C1|ALU_Select\(0)) # (\Pros|CPU0|C2|Mux7~1_combout\))))) # (!\Pros|CPU0|C2|C1|RegB\(0) & ((\Pros|CPU0|C2|Mux7~1_combout\ & 
-- (\Pros|CPU0|C1|ALU_Select\(0))) # (!\Pros|CPU0|C2|Mux7~1_combout\ & ((\Pros|CPU0|C1|ALU_Select\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(0),
	datab => \Pros|CPU0|C2|C1|RegB\(0),
	datac => \Pros|CPU0|C1|ALU_Select\(2),
	datad => \Pros|CPU0|C2|Mux7~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux7~0_combout\);

\Pros|CPU0|C2|C2|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (\Pros|CPU0|C2|C2|Mux7~0_combout\ & !\Pros|CPU0|C1|ALU_Select\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|Mux7~0_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(3),
	combout => \Pros|CPU0|C2|C2|Mux7~1_combout\);

\Pros|CPU0|C2|C2|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal6~0_combout\ = (\Pros|CPU0|C1|ALU_Select\(3) & (!\Pros|CPU0|C1|ALU_Select\(2) & (!\Pros|CPU0|C1|ALU_Select\(1) & !\Pros|CPU0|C1|ALU_Select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(3),
	datab => \Pros|CPU0|C1|ALU_Select\(2),
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Equal6~0_combout\);

\Pros|CPU0|C2|C2|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~2_combout\ = (!\Pros|CPU0|C1|ALU_Select\(4) & ((\Pros|CPU0|C2|C2|Mux7~1_combout\) # ((\Pros|CPU0|C2|C2|Equal6~0_combout\ & !\Pros|CPU0|C2|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux7~1_combout\,
	datab => \Pros|CPU0|C2|C2|Equal6~0_combout\,
	datac => \Pros|CPU0|C2|Mux7~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux7~2_combout\);

\Pros|CPU0|C2|C2|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~3_combout\ = (!\Pros|CPU0|C1|ALU_Select\(4) & (\Pros|CPU0|C2|C1|RegB\(0) $ (((\Pros|CPU0|C2|Mux7~1_combout\) # (\Pros|CPU0|C2|C2|Equal3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux7~1_combout\,
	datab => \Pros|CPU0|C2|C2|Equal3~2_combout\,
	datac => \Pros|CPU0|C2|C1|RegB\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux7~3_combout\);

\Pros|CPU0|C2|C2|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~4_combout\ = (\Pros|CPU0|C1|ALU_Select\(4) & (!\Pros|CPU0|C1|ALU_Select\(2) & ((\Pros|CPU0|C1|ALU_Select\(0)) # (!\Pros|CPU0|C2|C1|RegB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(4),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(2),
	combout => \Pros|CPU0|C2|C2|Mux7~4_combout\);

\Pros|CPU0|C2|C2|Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~5_combout\ = (\Pros|CPU0|C2|C2|Mux7~3_combout\) # ((\Pros|CPU0|C2|C2|Mux7~4_combout\ & ((!\Pros|CPU0|C1|ALU_Select\(0)) # (!\Pros|CPU0|C2|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux7~3_combout\,
	datab => \Pros|CPU0|C2|C2|Mux7~4_combout\,
	datac => \Pros|CPU0|C2|Mux7~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Mux7~5_combout\);

\Pros|CPU0|C2|C2|Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~6_combout\ = (!\Pros|CPU0|C1|ALU_Select\(3) & !\Pros|CPU0|C1|ALU_Select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C1|ALU_Select\(3),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux7~6_combout\);

\Pros|CPU0|C2|C2|Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux7~7_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & ((\Pros|CPU0|C2|C2|Mux7~2_combout\) # ((\Pros|CPU0|C2|C2|Mux7~5_combout\ & \Pros|CPU0|C2|C2|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datab => \Pros|CPU0|C2|C2|Mux7~2_combout\,
	datac => \Pros|CPU0|C2|C2|Mux7~5_combout\,
	datad => \Pros|CPU0|C2|C2|Mux7~6_combout\,
	combout => \Pros|CPU0|C2|C2|Mux7~7_combout\);

\Pros|CPU0|C1|WideOr21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr21~0_combout\ = (!\Pros|CPU0|C1|EDO.JCC4~q\ & (!\Pros|CPU0|C1|EDO.Load_inmA3~q\ & !\Pros|CPU0|C1|EDO.Load_DIR_A5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.JCC4~q\,
	datab => \Pros|CPU0|C1|EDO.Load_inmA3~q\,
	datac => \Pros|CPU0|C1|EDO.Load_DIR_A5~q\,
	combout => \Pros|CPU0|C1|WideOr21~0_combout\);

\Pros|CPU0|C1|WideOr21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr21~1_combout\ = (!\Pros|CPU0|C1|EDO.STOREB~q\ & (\Pros|CPU0|C1|WideOr13~5_combout\ & (\Pros|CPU0|C1|PC_Load~0_combout\ & \Pros|CPU0|C1|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.STOREB~q\,
	datab => \Pros|CPU0|C1|WideOr13~5_combout\,
	datac => \Pros|CPU0|C1|PC_Load~0_combout\,
	datad => \Pros|CPU0|C1|WideOr21~0_combout\,
	combout => \Pros|CPU0|C1|WideOr21~1_combout\);

\Pros|CPU0|C1|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr9~0_combout\ = (!\Pros|CPU0|C1|EDO.Fetch1~q\ & (!\Pros|CPU0|C1|EDO.Load_inmA2~q\ & (!\Pros|CPU0|C1|EDO.Load_DIR_A2~q\ & !\Pros|CPU0|C1|EDO.STOREA2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Fetch1~q\,
	datab => \Pros|CPU0|C1|EDO.Load_inmA2~q\,
	datac => \Pros|CPU0|C1|EDO.Load_DIR_A2~q\,
	datad => \Pros|CPU0|C1|EDO.STOREA2~q\,
	combout => \Pros|CPU0|C1|WideOr9~0_combout\);

\Pros|CPU0|C1|WideOr19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr19~2_combout\ = (!\Pros|CPU0|C1|EDO.Fetch2~q\ & (!\Pros|CPU0|C1|EDO.Load_DIR_A3~q\ & !\Pros|CPU0|C1|EDO.STOREA3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|EDO.Fetch2~q\,
	datac => \Pros|CPU0|C1|EDO.Load_DIR_A3~q\,
	datad => \Pros|CPU0|C1|EDO.STOREA3~q\,
	combout => \Pros|CPU0|C1|WideOr19~2_combout\);

\Pros|CPU0|C1|WideOr17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr17~0_combout\ = (\Pros|CPU0|C1|WideOr19~2_combout\ & (!\Pros|CPU0|C1|EDO.Load_DIR_A4~q\ & (!\Pros|CPU0|C1|EDO.JMP2~q\ & !\Pros|CPU0|C1|EDO.JCC2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr19~2_combout\,
	datab => \Pros|CPU0|C1|EDO.Load_DIR_A4~q\,
	datac => \Pros|CPU0|C1|EDO.JMP2~q\,
	datad => \Pros|CPU0|C1|EDO.JCC2~q\,
	combout => \Pros|CPU0|C1|WideOr17~0_combout\);

\Pros|CPU0|C1|WideOr21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr21~combout\ = (((!\Pros|CPU0|C1|WideOr13~4_combout\) # (!\Pros|CPU0|C1|WideOr17~0_combout\)) # (!\Pros|CPU0|C1|WideOr9~0_combout\)) # (!\Pros|CPU0|C1|WideOr21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr21~1_combout\,
	datab => \Pros|CPU0|C1|WideOr9~0_combout\,
	datac => \Pros|CPU0|C1|WideOr17~0_combout\,
	datad => \Pros|CPU0|C1|WideOr13~4_combout\,
	combout => \Pros|CPU0|C1|WideOr21~combout\);

\Pros|CPU0|C1|Bus1_Sel[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Bus1_Sel\(1) = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|Bus1_Sel\(1)))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr21~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr21~combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|Bus1_Sel\(1));

\Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux1~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(6)))) # (!\Pros|CPU0|C2|Mux1~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux1~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(6),
	combout => \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I2|FA6|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA6|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(6) $ (((\Pros|CPU0|C2|C1|RegB\(5) & (\Pros|CPU0|C2|C1|RegB\(4) & \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(6),
	datab => \Pros|CPU0|C2|C1|RegB\(5),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\,
	combout => \Pros|CPU0|C2|C2|I2|FA6|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~4_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (\Pros|CPU0|C2|C2|Mux1~2_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C2|C2|Mux1~2_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux1~4_combout\);

\Pros|CPU0|C2|C2|I1|FS4|HS0|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\ = (\Pros|CPU0|C2|Mux3~0_combout\ & !\Pros|CPU0|C2|C1|RegB\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux3~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegB\(4),
	combout => \Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\);

\Pros|CPU0|C2|C1|RegA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(3));

\Pros|CPU0|C2|C3|Contador|I1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I1|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(0) $ (\Pros|CPU0|C2|C3|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C3|cuenta\(0),
	datad => \Pros|CPU0|C2|C3|cuenta\(1),
	combout => \Pros|CPU0|C2|C3|Contador|I1|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I1|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(1));

\Pros|CPU0|C2|C3|Contador|I2|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I2|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(2) $ (((\Pros|CPU0|C2|C3|cuenta\(0) & \Pros|CPU0|C2|C3|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|C3|cuenta\(2),
	datac => \Pros|CPU0|C2|C3|cuenta\(0),
	datad => \Pros|CPU0|C2|C3|cuenta\(1),
	combout => \Pros|CPU0|C2|C3|Contador|I2|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I2|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(2));

\Pros|CPU0|C2|C3|Contador|I3|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I3|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(3) $ (((\Pros|CPU0|C2|C3|cuenta\(0) & (\Pros|CPU0|C2|C3|cuenta\(1) & \Pros|CPU0|C2|C3|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C3|cuenta\(3),
	datab => \Pros|CPU0|C2|C3|cuenta\(0),
	datac => \Pros|CPU0|C2|C3|cuenta\(1),
	datad => \Pros|CPU0|C2|C3|cuenta\(2),
	combout => \Pros|CPU0|C2|C3|Contador|I3|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I3|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(3));

\Pros|CPU0|C2|C2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal0~1_combout\ = (\Pros|CPU0|C2|C2|Equal0~0_combout\ & (!\Pros|CPU0|C1|ALU_Select\(2) & (!\Pros|CPU0|C1|ALU_Select\(1) & !\Pros|CPU0|C1|ALU_Select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(2),
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Equal0~1_combout\);

\Pros|CPU0|C2|C1|RegA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(7));

\Pros|CPU0|C2|C3|Contador|I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I6|Cout~combout\ = (\Pros|CPU0|C2|C3|cuenta\(6) & (\Pros|CPU0|C2|C3|cuenta\(5) & (\Pros|CPU0|C2|C3|cuenta\(4) & \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C3|cuenta\(6),
	datab => \Pros|CPU0|C2|C3|cuenta\(5),
	datac => \Pros|CPU0|C2|C3|cuenta\(4),
	datad => \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\,
	combout => \Pros|CPU0|C2|C3|Contador|I6|Cout~combout\);

\Pros|CPU0|C2|C3|Contador|I7|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I7|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(7) $ (\Pros|CPU0|C2|C3|Contador|I6|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C3|cuenta\(7),
	datad => \Pros|CPU0|C2|C3|Contador|I6|Cout~combout\,
	combout => \Pros|CPU0|C2|C3|Contador|I7|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I7|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(7));

\Pros|CPU0|C2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux0~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(7))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(7),
	datab => \Pros|CPU0|C2|C3|cuenta\(7),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux0~0_combout\);

\Pros|CPU0|C2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux0~1_combout\ = (\Pros|CPU0|C2|Mux0~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux0~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(7),
	combout => \Pros|CPU0|C2|Mux0~1_combout\);

\Pros|CPU0|C2|C1|RegA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(2));

\Pros|CPU0|C2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux5~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(2))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(2),
	datab => \Pros|CPU0|C2|C3|cuenta\(2),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux5~0_combout\);

\Pros|CPU0|C2|C1|RegA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(1));

\Pros|CPU0|C2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux6~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(1))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(1),
	datab => \Pros|CPU0|C2|C3|cuenta\(1),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux6~0_combout\);

\Pros|CPU0|C2|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux6~1_combout\ = (\Pros|CPU0|C2|Mux6~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux6~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(1),
	combout => \Pros|CPU0|C2|Mux6~1_combout\);

\Pros|CPU0|C2|C2|I0|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\ = (\Pros|CPU0|C2|Mux6~1_combout\ & ((\Pros|CPU0|C2|C1|RegB\(1)) # ((\Pros|CPU0|C2|C1|RegB\(0) & \Pros|CPU0|C2|Mux7~1_combout\)))) # (!\Pros|CPU0|C2|Mux6~1_combout\ & (\Pros|CPU0|C2|C1|RegB\(0) & 
-- (\Pros|CPU0|C2|Mux7~1_combout\ & \Pros|CPU0|C2|C1|RegB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(0),
	datab => \Pros|CPU0|C2|Mux7~1_combout\,
	datac => \Pros|CPU0|C2|Mux6~1_combout\,
	datad => \Pros|CPU0|C2|C1|RegB\(1),
	combout => \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\);

\Pros|CPU0|C2|C2|I0|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\ = (\Pros|CPU0|C2|C1|RegB\(2) & ((\Pros|CPU0|C2|Mux5~0_combout\) # ((\Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\) # (\Pros|CPU0|C1|Bus1_Sel\(1))))) # (!\Pros|CPU0|C2|C1|RegB\(2) & (\Pros|CPU0|C2|Mux5~0_combout\ & 
-- (\Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(2),
	datab => \Pros|CPU0|C2|Mux5~0_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\,
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\);

\Pros|CPU0|C2|C2|I0|FA3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\ = (\Pros|CPU0|C2|C1|RegB\(3) & ((\Pros|CPU0|C2|Mux4~0_combout\) # ((\Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\) # (\Pros|CPU0|C1|Bus1_Sel\(1))))) # (!\Pros|CPU0|C2|C1|RegB\(3) & (\Pros|CPU0|C2|Mux4~0_combout\ & 
-- (\Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(3),
	datab => \Pros|CPU0|C2|Mux4~0_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\,
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\);

\Pros|CPU0|C2|C2|I0|FA4|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\ = (\Pros|CPU0|C2|C1|RegB\(4) & ((\Pros|CPU0|C2|Mux3~0_combout\) # ((\Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\) # (\Pros|CPU0|C1|Bus1_Sel\(1))))) # (!\Pros|CPU0|C2|C1|RegB\(4) & (\Pros|CPU0|C2|Mux3~0_combout\ & 
-- (\Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(4),
	datab => \Pros|CPU0|C2|Mux3~0_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\,
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\);

\Pros|CPU0|C2|C2|I0|FA5|Cout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\ = (\Pros|CPU0|C2|Mux2~0_combout\ & (((\Pros|CPU0|C2|C1|RegB\(5)) # (\Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\)))) # (!\Pros|CPU0|C2|Mux2~0_combout\ & (\Pros|CPU0|C2|C1|RegB\(5) & ((\Pros|CPU0|C1|Bus1_Sel\(1)) # 
-- (\Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux2~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(5),
	datad => \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\);

\Pros|CPU0|C2|C2|I0|FA6|Cout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\ = (\Pros|CPU0|C2|Mux1~0_combout\ & (((\Pros|CPU0|C2|C1|RegB\(6)) # (\Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\)))) # (!\Pros|CPU0|C2|Mux1~0_combout\ & (\Pros|CPU0|C2|C1|RegB\(6) & ((\Pros|CPU0|C1|Bus1_Sel\(1)) # 
-- (\Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\);

\Pros|CPU0|C2|C2|Flags[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~1_combout\ = (\Pros|CPU0|C2|C2|Equal0~1_combout\ & ((\Pros|CPU0|C2|C1|RegB\(7) & (\Pros|CPU0|C2|Mux0~1_combout\ & !\Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\)) # (!\Pros|CPU0|C2|C1|RegB\(7) & (!\Pros|CPU0|C2|Mux0~1_combout\ & 
-- \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal0~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(7),
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~1_combout\);

\Pros|CPU0|C2|C2|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal4~0_combout\ = (\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|Equal0~0_combout\ & (!\Pros|CPU0|C1|ALU_Select\(2) & !\Pros|CPU0|C1|ALU_Select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(0),
	datab => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(2),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Equal4~0_combout\);

\Pros|CPU0|C2|C2|I1|FS6|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS6|Bout~combout\ = (\Pros|CPU0|C2|Mux1~0_combout\ & (((\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\) # (!\Pros|CPU0|C2|C1|RegB\(6))))) # (!\Pros|CPU0|C2|Mux1~0_combout\ & (\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\ & ((\Pros|CPU0|C1|Bus1_Sel\(1)) 
-- # (!\Pros|CPU0|C2|C1|RegB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS6|Bout~combout\);

\Pros|CPU0|C2|C2|Flags[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~2_combout\ = (\Pros|CPU0|C2|C2|Equal4~0_combout\ & ((\Pros|CPU0|C2|C1|RegB\(7) & (\Pros|CPU0|C2|C2|I1|FS6|Bout~combout\ & !\Pros|CPU0|C2|Mux0~1_combout\)) # (!\Pros|CPU0|C2|C1|RegB\(7) & (!\Pros|CPU0|C2|C2|I1|FS6|Bout~combout\ & 
-- \Pros|CPU0|C2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal4~0_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(7),
	datac => \Pros|CPU0|C2|C2|I1|FS6|Bout~combout\,
	datad => \Pros|CPU0|C2|Mux0~1_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~2_combout\);

\Pros|CPU0|C2|C2|Flags[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~3_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|Equal0~0_combout\ & !\Pros|CPU0|C2|C1|RegB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegB\(7),
	combout => \Pros|CPU0|C2|C2|Flags[1]~3_combout\);

\Pros|CPU0|C2|C2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal1~0_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (\Pros|CPU0|C1|ALU_Select\(1) & (\Pros|CPU0|C2|C2|Equal0~0_combout\ & !\Pros|CPU0|C1|ALU_Select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(1),
	datac => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Equal1~0_combout\);

\Pros|CPU0|C2|C2|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal5~2_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C1|ALU_Select\(1) & \Pros|CPU0|C2|C2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	combout => \Pros|CPU0|C2|C2|Equal5~2_combout\);

\Pros|CPU0|C2|C2|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal3~3_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|Equal0~0_combout\ & !\Pros|CPU0|C1|ALU_Select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Equal3~3_combout\);

\Pros|CPU0|C2|C2|Flags[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~4_combout\ = (\Pros|CPU0|C2|Mux0~1_combout\ & (!\Pros|CPU0|C2|C2|Equal3~3_combout\ & ((\Pros|CPU0|C2|C2|Equal1~0_combout\) # (!\Pros|CPU0|C2|C2|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal1~0_combout\,
	datab => \Pros|CPU0|C2|C2|Equal5~2_combout\,
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|Equal3~3_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~4_combout\);

\Pros|CPU0|C2|C2|Flags[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~5_combout\ = (\Pros|CPU0|C2|C2|Flags[1]~0_combout\ & ((\Pros|CPU0|C2|C2|Flags[1]~4_combout\) # ((\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ & \Pros|CPU0|C2|C2|Flags[1]~3_combout\)))) # (!\Pros|CPU0|C2|C2|Flags[1]~0_combout\ & 
-- (\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ & (\Pros|CPU0|C2|C2|Flags[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[1]~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\,
	datac => \Pros|CPU0|C2|C2|Flags[1]~3_combout\,
	datad => \Pros|CPU0|C2|C2|Flags[1]~4_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~5_combout\);

\Pros|CPU0|C2|C2|Flags[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~6_combout\ = (!\Pros|CPU0|C2|C2|Equal0~1_combout\ & ((\Pros|CPU0|C2|C2|Flags[1]~2_combout\) # ((\Pros|CPU0|C2|C2|Flags[1]~5_combout\ & !\Pros|CPU0|C2|C2|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[1]~2_combout\,
	datab => \Pros|CPU0|C2|C2|Flags[1]~5_combout\,
	datac => \Pros|CPU0|C2|C2|Equal4~0_combout\,
	datad => \Pros|CPU0|C2|C2|Equal0~1_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~6_combout\);

\Pros|CPU0|C2|C2|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Equal6~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & !\Pros|CPU0|C1|ALU_Select\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Equal6~1_combout\);

\Pros|CPU0|C2|C2|Flags[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[3]~7_combout\ = (!\Pros|CPU0|C2|C2|Equal4~0_combout\ & (!\Pros|CPU0|C2|C2|Equal5~2_combout\ & ((!\Pros|CPU0|C2|C2|Equal6~1_combout\) # (!\Pros|CPU0|C2|C2|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal6~0_combout\,
	datab => \Pros|CPU0|C2|C2|Equal6~1_combout\,
	datac => \Pros|CPU0|C2|C2|Equal4~0_combout\,
	datad => \Pros|CPU0|C2|C2|Equal5~2_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[3]~7_combout\);

\Pros|CPU0|C2|C2|OverFlow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|OverFlow~0_combout\ = (\Pros|CPU0|C1|ALU_Select\(1)) # ((\Pros|CPU0|C1|ALU_Select\(2) $ (\Pros|CPU0|C1|ALU_Select\(0))) # (!\Pros|CPU0|C2|C2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C1|ALU_Select\(2),
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	combout => \Pros|CPU0|C2|C2|OverFlow~0_combout\);

\Pros|CPU0|C2|C2|Flags[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags\(1) = (\Pros|CPU0|C2|C2|Flags[1]~1_combout\ & (((!\Pros|CPU0|C2|C2|OverFlow~0_combout\) # (!\Pros|CPU0|C2|C2|Flags[3]~7_combout\)))) # (!\Pros|CPU0|C2|C2|Flags[1]~1_combout\ & (\Pros|CPU0|C2|C2|Flags[1]~6_combout\ & 
-- ((!\Pros|CPU0|C2|C2|OverFlow~0_combout\) # (!\Pros|CPU0|C2|C2|Flags[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[1]~1_combout\,
	datab => \Pros|CPU0|C2|C2|Flags[1]~6_combout\,
	datac => \Pros|CPU0|C2|C2|Flags[3]~7_combout\,
	datad => \Pros|CPU0|C2|C2|OverFlow~0_combout\,
	combout => \Pros|CPU0|C2|C2|Flags\(1));

\Pros|CPU0|C1|CCR_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|CCR_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|CCR_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr1~2_combout\,
	datac => \Pros|CPU0|C1|CCR_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|CCR_Load~combout\);

\Pros|CPU0|C2|C1|RegCCR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C2|Flags\(1),
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegCCR\(1));

\Pros|CPU0|C1|FUT.JCC1_V~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_V~0_combout\ = (\Pros|CPU0|C1|Equal8~0_combout\ & (\Pros|CPU0|C1|Equal6~3_combout\ & (\Pros|CPU0|C1|Selector10~2_combout\ & !\Pros|CPU0|C2|C1|RegCCR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal8~0_combout\,
	datab => \Pros|CPU0|C1|Equal6~3_combout\,
	datac => \Pros|CPU0|C1|Selector10~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(1),
	combout => \Pros|CPU0|C1|FUT.JCC1_V~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_V\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_V~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_V~q\);

\Pros|CPU0|C2|C2|Flags[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[0]~13_combout\ = (\Pros|CPU0|C2|C2|Equal0~1_combout\ & ((\Pros|CPU0|C2|C1|RegB\(7) & ((\Pros|CPU0|C2|Mux0~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(7) & (\Pros|CPU0|C2|Mux0~1_combout\ & 
-- \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal0~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(7),
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|I0|FA6|Cout~2_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[0]~13_combout\);

\Pros|CPU0|C2|C2|Flags[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[0]~14_combout\ = (\Pros|CPU0|C2|C1|RegB\(7) & (\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\ & \Pros|CPU0|C2|C2|Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(7),
	datab => \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\,
	datac => \Pros|CPU0|C2|C2|Equal3~3_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[0]~14_combout\);

\Pros|CPU0|C2|C2|Flags[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[0]~15_combout\ = (\Pros|CPU0|C2|C2|Flags[1]~0_combout\ & (\Pros|CPU0|C2|C2|Equal1~0_combout\ & (!\Pros|CPU0|C2|Mux0~1_combout\ & !\Pros|CPU0|C2|C2|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[1]~0_combout\,
	datab => \Pros|CPU0|C2|C2|Equal1~0_combout\,
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|Equal3~3_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[0]~15_combout\);

\Pros|CPU0|C2|C2|Flags[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[0]~16_combout\ = (\Pros|CPU0|C2|C2|Flags[0]~13_combout\) # ((!\Pros|CPU0|C2|C2|Equal0~1_combout\ & ((\Pros|CPU0|C2|C2|Flags[0]~14_combout\) # (\Pros|CPU0|C2|C2|Flags[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[0]~13_combout\,
	datab => \Pros|CPU0|C2|C2|Flags[0]~14_combout\,
	datac => \Pros|CPU0|C2|C2|Flags[0]~15_combout\,
	datad => \Pros|CPU0|C2|C2|Equal0~1_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[0]~16_combout\);

\Pros|CPU0|C2|C1|RegCCR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C2|Flags[0]~16_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegCCR\(0));

\Pros|CPU0|C1|P2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~7_combout\ = (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal8~0_combout\ & (\Pros|CPU0|C1|Equal6~2_combout\ & \Pros|CPU0|C2|C1|RegCCR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datab => \Pros|CPU0|C1|Equal8~0_combout\,
	datac => \Pros|CPU0|C1|Equal6~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(0),
	combout => \Pros|CPU0|C1|P2~7_combout\);

\Pros|CPU0|C1|FUT.JCC1_NC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_NC~0_combout\ = (\Pros|CPU0|C1|Selector10~2_combout\ & \Pros|CPU0|C1|P2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Selector10~2_combout\,
	datab => \Pros|CPU0|C1|P2~7_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC1_NC~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_NC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_NC~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_NC~q\);

\Pros|CPU0|C1|P2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~8_combout\ = (\Pros|CPU0|C2|C1|RegIR\(5) & (\Pros|CPU0|C1|Equal7~1_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(6) & !\Pros|CPU0|C2|C1|RegCCR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(5),
	datab => \Pros|CPU0|C1|Equal7~1_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(6),
	datad => \Pros|CPU0|C2|C1|RegCCR\(0),
	combout => \Pros|CPU0|C1|P2~8_combout\);

\Pros|CPU0|C1|FUT.JCC1_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_C~0_combout\ = (\Pros|CPU0|C1|Selector10~2_combout\ & \Pros|CPU0|C1|P2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Selector10~2_combout\,
	datab => \Pros|CPU0|C1|P2~8_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC1_C~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_C~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_C~q\);

\Pros|CPU0|C1|FUT.JCC1_NZ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_NZ~0_combout\ = (\Pros|CPU0|C1|Equal6~3_combout\ & (\Pros|CPU0|C1|Equal11~0_combout\ & (\Pros|CPU0|C1|Selector10~2_combout\ & !\Pros|CPU0|C2|C1|RegCCR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~3_combout\,
	datab => \Pros|CPU0|C1|Equal11~0_combout\,
	datac => \Pros|CPU0|C1|Selector10~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(2),
	combout => \Pros|CPU0|C1|FUT.JCC1_NZ~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_NZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_NZ~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_NZ~q\);

\Pros|CPU0|C1|WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr3~1_combout\ = (!\Pros|CPU0|C1|EDO.JCC1_V~q\ & (!\Pros|CPU0|C1|EDO.JCC1_NC~q\ & (!\Pros|CPU0|C1|EDO.JCC1_C~q\ & !\Pros|CPU0|C1|EDO.JCC1_NZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.JCC1_V~q\,
	datab => \Pros|CPU0|C1|EDO.JCC1_NC~q\,
	datac => \Pros|CPU0|C1|EDO.JCC1_C~q\,
	datad => \Pros|CPU0|C1|EDO.JCC1_NZ~q\,
	combout => \Pros|CPU0|C1|WideOr3~1_combout\);

\Pros|CPU0|C1|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr6~0_combout\ = (\Pros|CPU0|C1|EDO.IDLE~q\ & (!\Pros|CPU0|C1|EDO.Load_inmA1~q\ & (!\Pros|CPU0|C1|EDO.Load_DIR_A~q\ & !\Pros|CPU0|C1|EDO.STOREA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.IDLE~q\,
	datab => \Pros|CPU0|C1|EDO.Load_inmA1~q\,
	datac => \Pros|CPU0|C1|EDO.Load_DIR_A~q\,
	datad => \Pros|CPU0|C1|EDO.STOREA~q\,
	combout => \Pros|CPU0|C1|WideOr6~0_combout\);

\Pros|CPU0|C1|WideOr6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr6~1_combout\ = (\Pros|CPU0|C1|WideOr3~0_combout\ & (\Pros|CPU0|C1|WideOr3~1_combout\ & (\Pros|CPU0|C1|WideOr6~0_combout\ & !\Pros|CPU0|C1|EDO.JMP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr3~0_combout\,
	datab => \Pros|CPU0|C1|WideOr3~1_combout\,
	datac => \Pros|CPU0|C1|WideOr6~0_combout\,
	datad => \Pros|CPU0|C1|EDO.JMP1~q\,
	combout => \Pros|CPU0|C1|WideOr6~1_combout\);

\Pros|CPU0|C1|WideOr23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr23~0_combout\ = (\Pros|CPU0|C1|EDO.STOREB~q\) # ((!\Pros|CPU0|C1|WideOr6~1_combout\) # (!\Pros|CPU0|C1|WideOr13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.STOREB~q\,
	datac => \Pros|CPU0|C1|WideOr13~4_combout\,
	datad => \Pros|CPU0|C1|WideOr6~1_combout\,
	combout => \Pros|CPU0|C1|WideOr23~0_combout\);

\Pros|CPU0|C1|Bus1_Sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Bus1_Sel\(0) = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|Bus1_Sel\(0)))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|WideOr23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr23~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|Bus1_Sel\(0));

\Pros|CPU0|C2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux4~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(3))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(3),
	datab => \Pros|CPU0|C2|C3|cuenta\(3),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux4~0_combout\);

\Pros|CPU0|C2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux4~1_combout\ = (\Pros|CPU0|C2|Mux4~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux4~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(3),
	combout => \Pros|CPU0|C2|Mux4~1_combout\);

\Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux3~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(4)))) # (!\Pros|CPU0|C2|Mux3~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux3~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(4),
	combout => \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I1|FS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ = (\Pros|CPU0|C2|Mux6~1_combout\ & (((\Pros|CPU0|C2|Mux7~1_combout\ & !\Pros|CPU0|C2|C1|RegB\(0))) # (!\Pros|CPU0|C2|C1|RegB\(1)))) # (!\Pros|CPU0|C2|Mux6~1_combout\ & (\Pros|CPU0|C2|Mux7~1_combout\ & 
-- (!\Pros|CPU0|C2|C1|RegB\(0) & !\Pros|CPU0|C2|C1|RegB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux6~1_combout\,
	datab => \Pros|CPU0|C2|Mux7~1_combout\,
	datac => \Pros|CPU0|C2|C1|RegB\(0),
	datad => \Pros|CPU0|C2|C1|RegB\(1),
	combout => \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\);

\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\ = (\Pros|CPU0|C2|C1|RegB\(2) & (\Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ & ((\Pros|CPU0|C1|Bus1_Sel\(1)) # (\Pros|CPU0|C2|Mux5~0_combout\)))) # (!\Pros|CPU0|C2|C1|RegB\(2) & (((\Pros|CPU0|C2|Mux5~0_combout\) # 
-- (\Pros|CPU0|C2|C2|I1|FS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Bus1_Sel\(1),
	datab => \Pros|CPU0|C2|C1|RegB\(2),
	datac => \Pros|CPU0|C2|Mux5~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\);

\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\ = (!\Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\ & ((\Pros|CPU0|C2|Mux4~1_combout\ & ((\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\) # (!\Pros|CPU0|C2|C1|RegB\(3)))) # (!\Pros|CPU0|C2|Mux4~1_combout\ & 
-- (!\Pros|CPU0|C2|C1|RegB\(3) & \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux4~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(3),
	datac => \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~0_combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\);

\Pros|CPU0|C2|C2|I1|FS5|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\ = (\Pros|CPU0|C2|Mux2~1_combout\ & ((\Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\) # ((\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\) # (!\Pros|CPU0|C2|C1|RegB\(5))))) # (!\Pros|CPU0|C2|Mux2~1_combout\ & 
-- (!\Pros|CPU0|C2|C1|RegB\(5) & ((\Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\) # (\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux2~1_combout\,
	datab => \Pros|CPU0|C2|C2|I1|FS4|HS0|Bout~combout\,
	datac => \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\,
	datad => \Pros|CPU0|C2|C1|RegB\(5),
	combout => \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\);

\Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0_combout\ = \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\ $ (((\Pros|CPU0|C2|Mux1~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(6)))) # (!\Pros|CPU0|C2|Mux1~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0_combout\);

\Pros|CPU0|C2|C2|I0|FA6|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA6|HA1|Sum~combout\ = \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(5) & ((\Pros|CPU0|C2|Mux2~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(5) & 
-- (\Pros|CPU0|C2|Mux2~1_combout\ & \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(5),
	datab => \Pros|CPU0|C2|Mux2~1_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA4|Cout~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA6|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~9_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0_combout\)) # (!\Pros|CPU0|C1|ALU_Select\(0) & 
-- ((\Pros|CPU0|C2|C2|I0|FA6|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|I1|FS6|HS1|Diff~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|I0|FA6|HA1|Sum~combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~9_combout\);

\Pros|CPU0|C2|C2|Mux1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~10_combout\ = (\Pros|CPU0|C2|Mux1~1_combout\ & ((\Pros|CPU0|C2|C2|Mux1~9_combout\) # ((\Pros|CPU0|C2|C1|RegB\(6) & \Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux1~1_combout\ & (\Pros|CPU0|C2|C2|Mux1~9_combout\ & 
-- ((\Pros|CPU0|C2|C1|RegB\(6)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(6),
	datac => \Pros|CPU0|C2|C2|Mux1~9_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux1~10_combout\);

\Pros|CPU0|C2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux5~1_combout\ = (\Pros|CPU0|C2|Mux5~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux5~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(2),
	combout => \Pros|CPU0|C2|Mux5~1_combout\);

\Pros|CPU0|C2|C2|I3|FS3|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\ = (\Pros|CPU0|C2|Mux7~1_combout\) # ((\Pros|CPU0|C2|Mux6~1_combout\) # ((\Pros|CPU0|C2|Mux5~1_combout\) # (\Pros|CPU0|C2|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux7~1_combout\,
	datab => \Pros|CPU0|C2|Mux6~1_combout\,
	datac => \Pros|CPU0|C2|Mux5~1_combout\,
	datad => \Pros|CPU0|C2|Mux4~1_combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\);

\Pros|CPU0|C2|C2|I3|FS6|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS6|HS1|Diff~combout\ = \Pros|CPU0|C2|Mux1~1_combout\ $ (((\Pros|CPU0|C2|Mux2~1_combout\) # ((\Pros|CPU0|C2|Mux3~1_combout\) # (\Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux2~1_combout\,
	datab => \Pros|CPU0|C2|Mux3~1_combout\,
	datac => \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\,
	datad => \Pros|CPU0|C2|Mux1~1_combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS6|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~5_combout\ = (\Pros|CPU0|C1|ALU_Select\(2) & (!\Pros|CPU0|C1|ALU_Select\(3) & ((\Pros|CPU0|C1|ALU_Select\(1)) # (\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(2) & (!\Pros|CPU0|C1|ALU_Select\(1) & 
-- (!\Pros|CPU0|C1|ALU_Select\(0) & \Pros|CPU0|C1|ALU_Select\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(1),
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(3),
	combout => \Pros|CPU0|C2|C2|Mux1~5_combout\);

\Pros|CPU0|C2|C2|Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~6_combout\ = ((!\Pros|CPU0|C1|ALU_Select\(0) & \Pros|CPU0|C1|ALU_Select\(1))) # (!\Pros|CPU0|C1|ALU_Select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(2),
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux1~6_combout\);

\Pros|CPU0|C2|C2|Mux1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~14_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & ((\Pros|CPU0|C1|ALU_Select\(3) & (\Pros|CPU0|C2|C2|Mux1~5_combout\)) # (!\Pros|CPU0|C1|ALU_Select\(3) & ((\Pros|CPU0|C2|C2|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datab => \Pros|CPU0|C1|ALU_Select\(3),
	datac => \Pros|CPU0|C2|C2|Mux1~5_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~6_combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~14_combout\);

\Pros|CPU0|C2|C2|Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~7_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & \Pros|CPU0|C2|C2|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datab => \Pros|CPU0|C2|C2|Mux1~5_combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~7_combout\);

\Pros|CPU0|C2|C2|Mux1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~11_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|C2|Mux1~7_combout\ & ((!\Pros|CPU0|C2|C2|I3|FS6|HS1|Diff~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\ & (\Pros|CPU0|C2|C2|Mux1~10_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & (((\Pros|CPU0|C2|C2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~10_combout\,
	datab => \Pros|CPU0|C2|C2|I3|FS6|HS1|Diff~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~11_combout\);

\Pros|CPU0|C2|C2|Mux1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~12_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux1~11_combout\ & ((\Pros|CPU0|C2|C2|I2|FA6|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~11_combout\ & (\Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS6|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA6|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~11_combout\,
	combout => \Pros|CPU0|C2|C2|Mux1~12_combout\);

\Pros|CPU0|C2|C2|Flags~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags~8_combout\ = (\Pros|CPU0|C2|C2|Mux1~8_combout\) # ((\Pros|CPU0|C2|C2|Mux7~7_combout\) # ((\Pros|CPU0|C2|C2|Mux1~12_combout\ & !\Pros|CPU0|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~8_combout\,
	datab => \Pros|CPU0|C2|C2|Mux7~7_combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~12_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Flags~8_combout\);

\Pros|CPU0|C2|C2|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~6_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux0~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(7),
	datad => \Pros|CPU0|C2|Mux0~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~6_combout\);

\Pros|CPU0|C2|C2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~0_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux2~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(5),
	datad => \Pros|CPU0|C2|Mux2~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux2~0_combout\);

\Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux2~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(5)))) # (!\Pros|CPU0|C2|Mux2~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux2~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(5),
	combout => \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I2|FA5|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA5|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(5) $ (((\Pros|CPU0|C2|C1|RegB\(4) & \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|C1|RegB\(5),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\,
	combout => \Pros|CPU0|C2|C2|I2|FA5|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|I1|FS5|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS5|HS1|Diff~combout\ = \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\) # ((\Pros|CPU0|C2|Mux3~0_combout\ & !\Pros|CPU0|C2|C1|RegB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux3~0_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(4),
	datac => \Pros|CPU0|C2|C2|I1|FS4|HS1|Bout~1_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS5|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|I0|FA5|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA5|HA1|Sum~combout\ = \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(4) & ((\Pros|CPU0|C2|Mux3~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(4) & 
-- (\Pros|CPU0|C2|Mux3~1_combout\ & \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(4),
	datab => \Pros|CPU0|C2|Mux3~1_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA3|Cout~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA5|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS5|HS1|Diff~combout\)) # (!\Pros|CPU0|C1|ALU_Select\(0) & 
-- ((\Pros|CPU0|C2|C2|I0|FA5|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|I1|FS5|HS1|Diff~combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|I0|FA5|HA1|Sum~combout\,
	combout => \Pros|CPU0|C2|C2|Mux2~1_combout\);

\Pros|CPU0|C2|C2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~2_combout\ = (\Pros|CPU0|C2|Mux2~1_combout\ & ((\Pros|CPU0|C2|C2|Mux2~1_combout\) # ((\Pros|CPU0|C2|C1|RegB\(5) & \Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux2~1_combout\ & (\Pros|CPU0|C2|C2|Mux2~1_combout\ & 
-- ((\Pros|CPU0|C2|C1|RegB\(5)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux2~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(5),
	datac => \Pros|CPU0|C2|C2|Mux2~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux2~2_combout\);

\Pros|CPU0|C2|C2|I3|FS5|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS5|HS1|Diff~combout\ = \Pros|CPU0|C2|Mux2~1_combout\ $ (((\Pros|CPU0|C2|Mux3~1_combout\) # (\Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux3~1_combout\,
	datac => \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\,
	datad => \Pros|CPU0|C2|Mux2~1_combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS5|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~3_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|C2|Mux1~7_combout\ & ((!\Pros|CPU0|C2|C2|I3|FS5|HS1|Diff~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\ & (\Pros|CPU0|C2|C2|Mux2~2_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & (((\Pros|CPU0|C2|C2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux2~2_combout\,
	datab => \Pros|CPU0|C2|C2|I3|FS5|HS1|Diff~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux2~3_combout\);

\Pros|CPU0|C2|C2|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~4_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux2~3_combout\ & ((\Pros|CPU0|C2|C2|I2|FA5|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux2~3_combout\ & (\Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS5|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA5|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux2~3_combout\,
	combout => \Pros|CPU0|C2|C2|Mux2~4_combout\);

\Pros|CPU0|C2|C2|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux2~5_combout\ = (\Pros|CPU0|C2|C2|Mux2~0_combout\) # ((\Pros|CPU0|C2|C2|Mux2~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux2~0_combout\,
	datab => \Pros|CPU0|C2|C2|Mux2~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux2~5_combout\);

\Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux0~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(7)))) # (!\Pros|CPU0|C2|Mux0~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux0~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(7),
	combout => \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I2|FA7|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA7|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(7) $ (\Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C1|RegB\(7),
	datad => \Pros|CPU0|C2|C2|I2|FA6|HA1|Cout~combout\,
	combout => \Pros|CPU0|C2|C2|I2|FA7|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~7_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|Mux0~1_combout\ $ (\Pros|CPU0|C2|C2|Flags[1]~0_combout\)) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\))) # (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & 
-- (\Pros|CPU0|C2|C2|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datab => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|Flags[1]~0_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~7_combout\);

\Pros|CPU0|C2|C2|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~13_combout\ = (\Pros|CPU0|C2|Mux1~0_combout\ & (((\Pros|CPU0|C2|C1|RegB\(6) & !\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\)))) # (!\Pros|CPU0|C2|Mux1~0_combout\ & (((!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(6))) # 
-- (!\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~13_combout\);

\Pros|CPU0|C2|C2|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~8_combout\ = \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(6) & ((\Pros|CPU0|C2|Mux1~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(6) & (\Pros|CPU0|C2|Mux1~1_combout\ & 
-- \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(6),
	datab => \Pros|CPU0|C2|Mux1~1_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA5|Cout~2_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~8_combout\);

\Pros|CPU0|C2|C2|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~9_combout\ = (\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\ $ ((!\Pros|CPU0|C2|C2|Mux0~13_combout\)))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (((\Pros|CPU0|C2|C2|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(0),
	datab => \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\,
	datac => \Pros|CPU0|C2|C2|Mux0~13_combout\,
	datad => \Pros|CPU0|C2|C2|Mux0~8_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~9_combout\);

\Pros|CPU0|C2|C2|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~14_combout\ = (\Pros|CPU0|C2|Mux0~0_combout\ & (((\Pros|CPU0|C2|C1|RegB\(7)) # (\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C2|Mux0~0_combout\ & (\Pros|CPU0|C2|C1|RegB\(7) & ((\Pros|CPU0|C1|Bus1_Sel\(1)) # 
-- (\Pros|CPU0|C1|ALU_Select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux0~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(7),
	datad => \Pros|CPU0|C1|ALU_Select\(0),
	combout => \Pros|CPU0|C2|C2|Mux0~14_combout\);

\Pros|CPU0|C2|C2|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~15_combout\ = (\Pros|CPU0|C1|ALU_Select\(6) & ((\Pros|CPU0|C2|C2|Mux1~5_combout\) # ((\Pros|CPU0|C1|ALU_Select\(1) & \Pros|CPU0|C2|C2|Mux0~14_combout\)))) # (!\Pros|CPU0|C1|ALU_Select\(6) & (((\Pros|CPU0|C1|ALU_Select\(1) & 
-- \Pros|CPU0|C2|C2|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datab => \Pros|CPU0|C2|C2|Mux1~5_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C2|C2|Mux0~14_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~15_combout\);

\Pros|CPU0|C2|C2|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~10_combout\ = (\Pros|CPU0|C2|C2|Mux0~7_combout\ & ((\Pros|CPU0|C2|C2|Mux0~15_combout\) # ((!\Pros|CPU0|C1|ALU_Select\(1) & \Pros|CPU0|C2|C2|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|Mux0~7_combout\,
	datac => \Pros|CPU0|C2|C2|Mux0~9_combout\,
	datad => \Pros|CPU0|C2|C2|Mux0~15_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~10_combout\);

\Pros|CPU0|C2|C2|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~11_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux0~10_combout\ & ((\Pros|CPU0|C2|C2|I2|FA7|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux0~10_combout\ & (\Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA7|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux0~10_combout\,
	combout => \Pros|CPU0|C2|C2|Mux0~11_combout\);

\Pros|CPU0|C2|C2|Flags~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags~9_combout\ = (\Pros|CPU0|C2|C2|Mux0~6_combout\) # ((\Pros|CPU0|C2|C2|Mux2~5_combout\) # ((\Pros|CPU0|C2|C2|Mux0~11_combout\ & !\Pros|CPU0|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux0~6_combout\,
	datab => \Pros|CPU0|C2|C2|Mux2~5_combout\,
	datac => \Pros|CPU0|C2|C2|Mux0~11_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Flags~9_combout\);

\Pros|CPU0|C2|C2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~0_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux4~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(3),
	datad => \Pros|CPU0|C2|Mux4~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux4~0_combout\);

\Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux4~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(3)))) # (!\Pros|CPU0|C2|Mux4~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux4~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(3),
	combout => \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I2|FA3|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA3|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(3) $ (((\Pros|CPU0|C2|C1|RegB\(0) & (\Pros|CPU0|C2|C1|RegB\(1) & \Pros|CPU0|C2|C1|RegB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(3),
	datab => \Pros|CPU0|C2|C1|RegB\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(2),
	combout => \Pros|CPU0|C2|C2|I2|FA3|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|I1|FS3|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS3|HS1|Diff~combout\ = \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(2) & (\Pros|CPU0|C2|Mux5~1_combout\ & \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\)) # (!\Pros|CPU0|C2|C1|RegB\(2) & 
-- ((\Pros|CPU0|C2|Mux5~1_combout\) # (\Pros|CPU0|C2|C2|I1|FS1|Bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(2),
	datab => \Pros|CPU0|C2|Mux5~1_combout\,
	datac => \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS3|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|I0|FA3|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA3|HA1|Sum~combout\ = \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(2) & ((\Pros|CPU0|C2|Mux5~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(2) & 
-- (\Pros|CPU0|C2|Mux5~1_combout\ & \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(2),
	datab => \Pros|CPU0|C2|Mux5~1_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA3|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS3|HS1|Diff~combout\)) # (!\Pros|CPU0|C1|ALU_Select\(0) & 
-- ((\Pros|CPU0|C2|C2|I0|FA3|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|I1|FS3|HS1|Diff~combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|I0|FA3|HA1|Sum~combout\,
	combout => \Pros|CPU0|C2|C2|Mux4~1_combout\);

\Pros|CPU0|C2|C2|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~2_combout\ = (\Pros|CPU0|C2|Mux4~1_combout\ & ((\Pros|CPU0|C2|C2|Mux4~1_combout\) # ((\Pros|CPU0|C2|C1|RegB\(3) & \Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux4~1_combout\ & (\Pros|CPU0|C2|C2|Mux4~1_combout\ & 
-- ((\Pros|CPU0|C2|C1|RegB\(3)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux4~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(3),
	datac => \Pros|CPU0|C2|C2|Mux4~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux4~2_combout\);

\Pros|CPU0|C2|C2|I3|FS3|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS3|HS1|Diff~combout\ = \Pros|CPU0|C2|Mux4~1_combout\ $ (((\Pros|CPU0|C2|Mux7~1_combout\) # ((\Pros|CPU0|C2|Mux6~1_combout\) # (\Pros|CPU0|C2|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux7~1_combout\,
	datab => \Pros|CPU0|C2|Mux6~1_combout\,
	datac => \Pros|CPU0|C2|Mux5~1_combout\,
	datad => \Pros|CPU0|C2|Mux4~1_combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS3|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~3_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|C2|Mux1~7_combout\ & ((!\Pros|CPU0|C2|C2|I3|FS3|HS1|Diff~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\ & (\Pros|CPU0|C2|C2|Mux4~2_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & (((\Pros|CPU0|C2|C2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux4~2_combout\,
	datab => \Pros|CPU0|C2|C2|I3|FS3|HS1|Diff~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux4~3_combout\);

\Pros|CPU0|C2|C2|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~4_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux4~3_combout\ & ((\Pros|CPU0|C2|C2|I2|FA3|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux4~3_combout\ & (\Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS3|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA3|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux4~3_combout\,
	combout => \Pros|CPU0|C2|C2|Mux4~4_combout\);

\Pros|CPU0|C2|C2|Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux4~5_combout\ = (\Pros|CPU0|C2|C2|Mux4~0_combout\) # ((\Pros|CPU0|C2|C2|Mux4~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux4~0_combout\,
	datab => \Pros|CPU0|C2|C2|Mux4~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux4~5_combout\);

\Pros|CPU0|C2|C2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~0_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux3~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|Mux3~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux3~0_combout\);

\Pros|CPU0|C2|C2|I2|FA4|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA4|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(4) $ (\Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|C2|I2|FA3|HA1|Cout~combout\,
	combout => \Pros|CPU0|C2|C2|I2|FA4|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|I1|FS2|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS2|Bout~combout\ = (\Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ & ((\Pros|CPU0|C2|Mux5~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1)) # (!\Pros|CPU0|C2|C1|RegB\(2))))) # (!\Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ & (\Pros|CPU0|C2|Mux5~0_combout\ 
-- & ((!\Pros|CPU0|C2|C1|RegB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\,
	datab => \Pros|CPU0|C2|Mux5~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(2),
	combout => \Pros|CPU0|C2|C2|I1|FS2|Bout~combout\);

\Pros|CPU0|C2|C2|I1|FS4|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS4|HS1|Diff~combout\ = \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(3) & (\Pros|CPU0|C2|Mux4~1_combout\ & \Pros|CPU0|C2|C2|I1|FS2|Bout~combout\)) # (!\Pros|CPU0|C2|C1|RegB\(3) & 
-- ((\Pros|CPU0|C2|Mux4~1_combout\) # (\Pros|CPU0|C2|C2|I1|FS2|Bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(3),
	datab => \Pros|CPU0|C2|Mux4~1_combout\,
	datac => \Pros|CPU0|C2|C2|I1|FS2|Bout~combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS4|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|I0|FA4|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA4|HA1|Sum~combout\ = \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(3) & ((\Pros|CPU0|C2|Mux4~1_combout\) # (\Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\))) # (!\Pros|CPU0|C2|C1|RegB\(3) & 
-- (\Pros|CPU0|C2|Mux4~1_combout\ & \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(3),
	datab => \Pros|CPU0|C2|Mux4~1_combout\,
	datac => \Pros|CPU0|C2|C2|I0|FA2|Cout~0_combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA4|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS4|HS1|Diff~combout\)) # (!\Pros|CPU0|C1|ALU_Select\(0) & 
-- ((\Pros|CPU0|C2|C2|I0|FA4|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|I1|FS4|HS1|Diff~combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|I0|FA4|HA1|Sum~combout\,
	combout => \Pros|CPU0|C2|C2|Mux3~1_combout\);

\Pros|CPU0|C2|C2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~2_combout\ = (\Pros|CPU0|C2|Mux3~1_combout\ & ((\Pros|CPU0|C2|C2|Mux3~1_combout\) # ((\Pros|CPU0|C2|C1|RegB\(4) & \Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux3~1_combout\ & (\Pros|CPU0|C2|C2|Mux3~1_combout\ & 
-- ((\Pros|CPU0|C2|C1|RegB\(4)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux3~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(4),
	datac => \Pros|CPU0|C2|C2|Mux3~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux3~2_combout\);

\Pros|CPU0|C2|C2|I3|FS4|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS4|HS1|Diff~combout\ = \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\ $ (((\Pros|CPU0|C2|Mux3~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux3~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	datad => \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS4|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~3_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|C2|Mux1~7_combout\ & ((!\Pros|CPU0|C2|C2|I3|FS4|HS1|Diff~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\ & (\Pros|CPU0|C2|C2|Mux3~2_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & (((\Pros|CPU0|C2|C2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux3~2_combout\,
	datab => \Pros|CPU0|C2|C2|I3|FS4|HS1|Diff~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux3~3_combout\);

\Pros|CPU0|C2|C2|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~4_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux3~3_combout\ & ((\Pros|CPU0|C2|C2|I2|FA4|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux3~3_combout\ & (\Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS4|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA4|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux3~3_combout\,
	combout => \Pros|CPU0|C2|C2|Mux3~4_combout\);

\Pros|CPU0|C2|C2|Flags~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags~10_combout\ = (\Pros|CPU0|C2|C2|Mux4~5_combout\) # ((\Pros|CPU0|C2|C2|Mux3~0_combout\) # ((\Pros|CPU0|C2|C2|Mux3~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux4~5_combout\,
	datab => \Pros|CPU0|C2|C2|Mux3~0_combout\,
	datac => \Pros|CPU0|C2|C2|Mux3~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Flags~10_combout\);

\Pros|CPU0|C2|C2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~0_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux5~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(2),
	datad => \Pros|CPU0|C2|Mux5~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux5~0_combout\);

\Pros|CPU0|C2|C2|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~2_combout\ = (\Pros|CPU0|C2|C2|Mux1~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(0) & ((!\Pros|CPU0|C2|Mux6~1_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(0) & (!\Pros|CPU0|C2|C1|RegB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~3_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(0),
	datac => \Pros|CPU0|C2|C1|RegB\(1),
	datad => \Pros|CPU0|C2|Mux6~1_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~2_combout\);

\Pros|CPU0|C2|C2|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~3_combout\ = (\Pros|CPU0|C2|Mux6~0_combout\ & ((\Pros|CPU0|C2|C1|RegB\(1) $ (!\Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux6~0_combout\ & (\Pros|CPU0|C2|C1|RegB\(1) & ((\Pros|CPU0|C1|ALU_Select\(1)) # 
-- (!\Pros|CPU0|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux6~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(1),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux6~3_combout\);

\Pros|CPU0|C2|C2|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~4_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & (\Pros|CPU0|C2|Mux7~1_combout\ & (\Pros|CPU0|C2|C1|RegB\(0) $ (\Pros|CPU0|C1|ALU_Select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(0),
	datab => \Pros|CPU0|C2|Mux7~1_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux6~4_combout\);

\Pros|CPU0|C2|C2|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~5_combout\ = (\Pros|CPU0|C2|C2|Mux6~3_combout\ & ((\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C2|Mux6~1_combout\) # (\Pros|CPU0|C2|C2|Mux6~4_combout\))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((!\Pros|CPU0|C2|C2|Mux6~4_combout\))))) # 
-- (!\Pros|CPU0|C2|C2|Mux6~3_combout\ & (\Pros|CPU0|C2|C2|Mux6~4_combout\ & ((\Pros|CPU0|C2|Mux6~1_combout\) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux6~1_combout\,
	datab => \Pros|CPU0|C2|C2|Mux6~3_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(1),
	datad => \Pros|CPU0|C2|C2|Mux6~4_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~5_combout\);

\Pros|CPU0|C2|C2|Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~6_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|Mux7~1_combout\ $ (\Pros|CPU0|C2|Mux6~1_combout\)) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux7~1_combout\,
	datab => \Pros|CPU0|C2|Mux6~1_combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~6_combout\);

\Pros|CPU0|C2|C2|Mux6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~10_combout\ = (\Pros|CPU0|C2|C2|Mux6~6_combout\ & (\Pros|CPU0|C2|C2|Mux6~5_combout\ & ((!\Pros|CPU0|C2|C2|Mux1~5_combout\) # (!\Pros|CPU0|C1|ALU_Select\(6))))) # (!\Pros|CPU0|C2|C2|Mux6~6_combout\ & (\Pros|CPU0|C1|ALU_Select\(6) & 
-- (\Pros|CPU0|C2|C2|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(6),
	datab => \Pros|CPU0|C2|C2|Mux1~5_combout\,
	datac => \Pros|CPU0|C2|C2|Mux6~5_combout\,
	datad => \Pros|CPU0|C2|C2|Mux6~6_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~10_combout\);

\Pros|CPU0|C2|C2|Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~7_combout\ = (\Pros|CPU0|C2|Mux6~0_combout\ & ((\Pros|CPU0|C2|C1|RegB\(1) $ (!\Pros|CPU0|C2|C2|Mux6~10_combout\)))) # (!\Pros|CPU0|C2|Mux6~0_combout\ & (\Pros|CPU0|C2|C1|RegB\(1) & ((\Pros|CPU0|C2|C2|Mux6~10_combout\) # 
-- (!\Pros|CPU0|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux6~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(1),
	datad => \Pros|CPU0|C2|C2|Mux6~10_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~7_combout\);

\Pros|CPU0|C2|C2|Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~8_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & (\Pros|CPU0|C2|C2|Mux6~7_combout\ $ (((\Pros|CPU0|C2|C1|RegB\(0) & \Pros|CPU0|C2|C2|Mux6~10_combout\))))) # (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & 
-- (((\Pros|CPU0|C2|C2|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegB\(0),
	datab => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datac => \Pros|CPU0|C2|C2|Mux6~10_combout\,
	datad => \Pros|CPU0|C2|C2|Mux6~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux6~8_combout\);

\Pros|CPU0|C2|C2|Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux6~9_combout\ = (\Pros|CPU0|C2|C2|Mux6~2_combout\) # ((\Pros|CPU0|C2|C2|Mux6~8_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux6~2_combout\,
	datab => \Pros|CPU0|C2|C2|Mux6~8_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux6~9_combout\);

\Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0_combout\ = (\Pros|CPU0|C2|Mux5~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(2)))) # (!\Pros|CPU0|C2|Mux5~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux5~0_combout\,
	datac => \Pros|CPU0|C1|Bus1_Sel\(1),
	datad => \Pros|CPU0|C2|C1|RegB\(2),
	combout => \Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0_combout\);

\Pros|CPU0|C2|C2|I2|FA2|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I2|FA2|HA1|Sum~combout\ = \Pros|CPU0|C2|C1|RegB\(2) $ (((\Pros|CPU0|C2|C1|RegB\(0) & \Pros|CPU0|C2|C1|RegB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|C1|RegB\(2),
	datac => \Pros|CPU0|C2|C1|RegB\(0),
	datad => \Pros|CPU0|C2|C1|RegB\(1),
	combout => \Pros|CPU0|C2|C2|I2|FA2|HA1|Sum~combout\);

\Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0_combout\ = \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\ $ (((\Pros|CPU0|C2|Mux5~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(2)))) # (!\Pros|CPU0|C2|Mux5~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux5~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(2),
	datad => \Pros|CPU0|C2|C2|I1|FS1|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0_combout\);

\Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0_combout\ = \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\ $ (((\Pros|CPU0|C2|Mux5~0_combout\ & ((!\Pros|CPU0|C2|C1|RegB\(2)))) # (!\Pros|CPU0|C2|Mux5~0_combout\ & (!\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux5~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(2),
	datad => \Pros|CPU0|C2|C2|I0|FA1|Cout~0_combout\,
	combout => \Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0_combout\);

\Pros|CPU0|C2|C2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~1_combout\ = (\Pros|CPU0|C1|ALU_Select\(1) & (((\Pros|CPU0|C1|ALU_Select\(0))))) # (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(0) & (\Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0_combout\)) # (!\Pros|CPU0|C1|ALU_Select\(0) & 
-- ((\Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|ALU_Select\(1),
	datab => \Pros|CPU0|C2|C2|I1|FS2|HS1|Diff~0_combout\,
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C2|C2|I0|FA2|HA1|Sum~0_combout\,
	combout => \Pros|CPU0|C2|C2|Mux5~1_combout\);

\Pros|CPU0|C2|C2|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~2_combout\ = (\Pros|CPU0|C2|Mux5~1_combout\ & ((\Pros|CPU0|C2|C2|Mux5~1_combout\) # ((\Pros|CPU0|C2|C1|RegB\(2) & \Pros|CPU0|C1|ALU_Select\(1))))) # (!\Pros|CPU0|C2|Mux5~1_combout\ & (\Pros|CPU0|C2|C2|Mux5~1_combout\ & 
-- ((\Pros|CPU0|C2|C1|RegB\(2)) # (!\Pros|CPU0|C1|ALU_Select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux5~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegB\(2),
	datac => \Pros|CPU0|C2|C2|Mux5~1_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Mux5~2_combout\);

\Pros|CPU0|C2|C2|I3|FS2|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I3|FS2|HS1|Diff~combout\ = \Pros|CPU0|C2|Mux5~1_combout\ $ (((\Pros|CPU0|C2|Mux7~1_combout\) # (\Pros|CPU0|C2|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|Mux7~1_combout\,
	datac => \Pros|CPU0|C2|Mux6~1_combout\,
	datad => \Pros|CPU0|C2|Mux5~1_combout\,
	combout => \Pros|CPU0|C2|C2|I3|FS2|HS1|Diff~combout\);

\Pros|CPU0|C2|C2|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~3_combout\ = (\Pros|CPU0|C2|C2|Mux1~14_combout\ & ((\Pros|CPU0|C2|C2|Mux1~7_combout\ & ((!\Pros|CPU0|C2|C2|I3|FS2|HS1|Diff~combout\))) # (!\Pros|CPU0|C2|C2|Mux1~7_combout\ & (\Pros|CPU0|C2|C2|Mux5~2_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~14_combout\ & (((\Pros|CPU0|C2|C2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux5~2_combout\,
	datab => \Pros|CPU0|C2|C2|I3|FS2|HS1|Diff~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~14_combout\,
	datad => \Pros|CPU0|C2|C2|Mux1~7_combout\,
	combout => \Pros|CPU0|C2|C2|Mux5~3_combout\);

\Pros|CPU0|C2|C2|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~4_combout\ = (\Pros|CPU0|C2|C2|Mux1~4_combout\ & ((\Pros|CPU0|C2|C2|Mux5~3_combout\ & ((\Pros|CPU0|C2|C2|I2|FA2|HA1|Sum~combout\))) # (!\Pros|CPU0|C2|C2|Mux5~3_combout\ & (\Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0_combout\)))) # 
-- (!\Pros|CPU0|C2|C2|Mux1~4_combout\ & (((\Pros|CPU0|C2|C2|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|I1|FS2|HS0|Diff~0_combout\,
	datab => \Pros|CPU0|C2|C2|I2|FA2|HA1|Sum~combout\,
	datac => \Pros|CPU0|C2|C2|Mux1~4_combout\,
	datad => \Pros|CPU0|C2|C2|Mux5~3_combout\,
	combout => \Pros|CPU0|C2|C2|Mux5~4_combout\);

\Pros|CPU0|C2|C2|Flags~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags~11_combout\ = (\Pros|CPU0|C2|C2|Mux5~0_combout\) # ((\Pros|CPU0|C2|C2|Mux6~9_combout\) # ((\Pros|CPU0|C2|C2|Mux5~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux5~0_combout\,
	datab => \Pros|CPU0|C2|C2|Mux6~9_combout\,
	datac => \Pros|CPU0|C2|C2|Mux5~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Flags~11_combout\);

\Pros|CPU0|C2|C2|Flags~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags~12_combout\ = (!\Pros|CPU0|C2|C2|Flags~8_combout\ & (!\Pros|CPU0|C2|C2|Flags~9_combout\ & (!\Pros|CPU0|C2|C2|Flags~10_combout\ & !\Pros|CPU0|C2|C2|Flags~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags~8_combout\,
	datab => \Pros|CPU0|C2|C2|Flags~9_combout\,
	datac => \Pros|CPU0|C2|C2|Flags~10_combout\,
	datad => \Pros|CPU0|C2|C2|Flags~11_combout\,
	combout => \Pros|CPU0|C2|C2|Flags~12_combout\);

\Pros|CPU0|C2|C1|RegCCR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C2|Flags~12_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegCCR\(2));

\Pros|CPU0|C1|FUT.JCC4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC4~0_combout\ = (\Pros|CPU0|C2|C1|RegCCR\(3) & (((!\Pros|CPU0|C2|C1|RegCCR\(2)) # (!\Pros|CPU0|C1|Equal12~0_combout\)))) # (!\Pros|CPU0|C2|C1|RegCCR\(3) & (!\Pros|CPU0|C1|Equal13~0_combout\ & ((!\Pros|CPU0|C2|C1|RegCCR\(2)) # 
-- (!\Pros|CPU0|C1|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegCCR\(3),
	datab => \Pros|CPU0|C1|Equal13~0_combout\,
	datac => \Pros|CPU0|C1|Equal12~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(2),
	combout => \Pros|CPU0|C1|FUT.JCC4~0_combout\);

\Pros|CPU0|C1|FUT.JCC4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC4~1_combout\ = (\Pros|CPU0|C1|Selector10~2_combout\ & (\Pros|CPU0|C1|FUT.JCC4~0_combout\ & ((!\Pros|CPU0|C1|Equal6~3_combout\) # (!\Pros|CPU0|C1|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Selector10~2_combout\,
	datab => \Pros|CPU0|C1|FUT.JCC4~0_combout\,
	datac => \Pros|CPU0|C1|Equal6~1_combout\,
	datad => \Pros|CPU0|C1|Equal6~3_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC4~1_combout\);

\Pros|CPU0|C1|P2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~11_combout\ = (\Pros|CPU0|C1|Equal6~2_combout\ & (\Pros|CPU0|C1|Equal11~0_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(0) & !\Pros|CPU0|C2|C1|RegCCR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~2_combout\,
	datab => \Pros|CPU0|C1|Equal11~0_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(0),
	datad => \Pros|CPU0|C2|C1|RegCCR\(2),
	combout => \Pros|CPU0|C1|P2~11_combout\);

\Pros|CPU0|C1|FUT.JCC4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC4~2_combout\ = (!\Pros|CPU0|C1|P2~11_combout\ & ((\Pros|CPU0|C2|C1|RegCCR\(1)) # ((!\Pros|CPU0|C1|Equal6~3_combout\) # (!\Pros|CPU0|C1|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegCCR\(1),
	datab => \Pros|CPU0|C1|Equal8~0_combout\,
	datac => \Pros|CPU0|C1|Equal6~3_combout\,
	datad => \Pros|CPU0|C1|P2~11_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC4~2_combout\);

\Pros|CPU0|C1|P2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~6_combout\ = (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal6~2_combout\ & (\Pros|CPU0|C1|Equal11~0_combout\ & \Pros|CPU0|C2|C1|RegCCR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datab => \Pros|CPU0|C1|Equal6~2_combout\,
	datac => \Pros|CPU0|C1|Equal11~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(1),
	combout => \Pros|CPU0|C1|P2~6_combout\);

\Pros|CPU0|C1|FUT.JCC4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC4~3_combout\ = (!\Pros|CPU0|C1|P2~5_combout\ & (!\Pros|CPU0|C1|P2~6_combout\ & (!\Pros|CPU0|C1|P2~7_combout\ & !\Pros|CPU0|C1|P2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|P2~5_combout\,
	datab => \Pros|CPU0|C1|P2~6_combout\,
	datac => \Pros|CPU0|C1|P2~7_combout\,
	datad => \Pros|CPU0|C1|P2~8_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC4~3_combout\);

\Pros|CPU0|C1|FUT.JCC4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC4~4_combout\ = (\Pros|CPU0|C1|P2~10_combout\ & (\Pros|CPU0|C1|FUT.JCC4~1_combout\ & (\Pros|CPU0|C1|FUT.JCC4~2_combout\ & \Pros|CPU0|C1|FUT.JCC4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|P2~10_combout\,
	datab => \Pros|CPU0|C1|FUT.JCC4~1_combout\,
	datac => \Pros|CPU0|C1|FUT.JCC4~2_combout\,
	datad => \Pros|CPU0|C1|FUT.JCC4~3_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC4~4_combout\);

\Pros|CPU0|C1|EDO.JCC4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC4~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC4~q\);

\Pros|CPU0|C1|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr9~combout\ = (\Pros|CPU0|C1|EDO.JCC4~q\) # (!\Pros|CPU0|C1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.JCC4~q\,
	datad => \Pros|CPU0|C1|WideOr9~0_combout\,
	combout => \Pros|CPU0|C1|WideOr9~combout\);

\Pros|CPU0|C1|PC_Inc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|PC_Inc~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|PC_Inc~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr9~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr9~combout\,
	datac => \Pros|CPU0|C1|PC_Inc~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|PC_Inc~combout\);

\Pros|CPU0|C2|C3|cuenta[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[4]~8_combout\ = (\Pros|CPU0|C1|PC_Load~combout\) # (\Pros|CPU0|C1|PC_Inc~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|PC_Load~combout\,
	datab => \Pros|CPU0|C1|PC_Inc~combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\);

\Pros|CPU0|C2|C3|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I6|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(6));

\Pros|CPU0|C2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux1~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(6))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(6),
	datab => \Pros|CPU0|C2|C3|cuenta\(6),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux1~0_combout\);

\Pros|CPU0|C2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux1~1_combout\ = (\Pros|CPU0|C2|Mux1~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	combout => \Pros|CPU0|C2|Mux1~1_combout\);

\Pros|CPU0|C2|C2|Flags[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[1]~0_combout\ = (!\Pros|CPU0|C2|Mux1~1_combout\ & (!\Pros|CPU0|C2|Mux2~1_combout\ & (!\Pros|CPU0|C2|Mux3~1_combout\ & !\Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~1_combout\,
	datab => \Pros|CPU0|C2|Mux2~1_combout\,
	datac => \Pros|CPU0|C2|Mux3~1_combout\,
	datad => \Pros|CPU0|C2|C2|I3|FS3|HS1|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|Flags[1]~0_combout\);

\Pros|CPU0|C2|C2|Flags[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[3]~19_combout\ = (\Pros|CPU0|C2|C2|Flags[3]~18_combout\) # ((\Pros|CPU0|C2|C2|Flags[1]~0_combout\ & (!\Pros|CPU0|C2|Mux0~1_combout\ & !\Pros|CPU0|C2|C2|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[3]~18_combout\,
	datab => \Pros|CPU0|C2|C2|Flags[1]~0_combout\,
	datac => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|C2|Equal5~2_combout\,
	combout => \Pros|CPU0|C2|C2|Flags[3]~19_combout\);

\Pros|CPU0|C2|C2|I1|FS7|HS0|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS7|HS0|Bout~combout\ = (\Pros|CPU0|C2|Mux0~0_combout\ & !\Pros|CPU0|C2|C1|RegB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux0~0_combout\,
	datad => \Pros|CPU0|C2|C1|RegB\(7),
	combout => \Pros|CPU0|C2|C2|I1|FS7|HS0|Bout~combout\);

\Pros|CPU0|C2|C2|I1|FS7|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|I1|FS7|HS1|Bout~combout\ = (!\Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\ & ((\Pros|CPU0|C2|Mux1~1_combout\ & ((\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\) # (!\Pros|CPU0|C2|C1|RegB\(6)))) # (!\Pros|CPU0|C2|Mux1~1_combout\ & 
-- (\Pros|CPU0|C2|C2|I1|FS5|Bout~combout\ & !\Pros|CPU0|C2|C1|RegB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux1~1_combout\,
	datab => \Pros|CPU0|C2|C2|I1|FS5|Bout~combout\,
	datac => \Pros|CPU0|C2|C1|RegB\(6),
	datad => \Pros|CPU0|C2|C2|I1|FS7|HS0|Diff~0_combout\,
	combout => \Pros|CPU0|C2|C2|I1|FS7|HS1|Bout~combout\);

\Pros|CPU0|C2|C2|Flags[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags[3]~20_combout\ = (\Pros|CPU0|C2|C2|Equal4~0_combout\ & (((\Pros|CPU0|C2|C2|I1|FS7|HS0|Bout~combout\) # (\Pros|CPU0|C2|C2|I1|FS7|HS1|Bout~combout\)))) # (!\Pros|CPU0|C2|C2|Equal4~0_combout\ & (\Pros|CPU0|C2|C2|Flags[3]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[3]~19_combout\,
	datab => \Pros|CPU0|C2|C2|Equal4~0_combout\,
	datac => \Pros|CPU0|C2|C2|I1|FS7|HS0|Bout~combout\,
	datad => \Pros|CPU0|C2|C2|I1|FS7|HS1|Bout~combout\,
	combout => \Pros|CPU0|C2|C2|Flags[3]~20_combout\);

\Pros|CPU0|C2|C2|Negativo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Negativo~0_combout\ = (\Pros|CPU0|C2|C2|Equal0~0_combout\ & (!\Pros|CPU0|C1|ALU_Select\(1) & ((\Pros|CPU0|C1|ALU_Select\(2)) # (\Pros|CPU0|C1|ALU_Select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Equal0~0_combout\,
	datab => \Pros|CPU0|C1|ALU_Select\(2),
	datac => \Pros|CPU0|C1|ALU_Select\(0),
	datad => \Pros|CPU0|C1|ALU_Select\(1),
	combout => \Pros|CPU0|C2|C2|Negativo~0_combout\);

\Pros|CPU0|C2|C2|Flags[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Flags\(3) = (\Pros|CPU0|C2|C2|Negativo~0_combout\ & ((\Pros|CPU0|C2|C2|Flags[3]~7_combout\ & ((\Pros|CPU0|C2|C2|Flags\(3)))) # (!\Pros|CPU0|C2|C2|Flags[3]~7_combout\ & (\Pros|CPU0|C2|C2|Flags[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Flags[3]~20_combout\,
	datab => \Pros|CPU0|C2|C2|Flags\(3),
	datac => \Pros|CPU0|C2|C2|Flags[3]~7_combout\,
	datad => \Pros|CPU0|C2|C2|Negativo~0_combout\,
	combout => \Pros|CPU0|C2|C2|Flags\(3));

\Pros|CPU0|C2|C1|RegCCR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C2|Flags\(3),
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegCCR\(3));

\Pros|CPU0|C1|P2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~5_combout\ = (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal6~1_combout\ & (\Pros|CPU0|C1|Equal6~2_combout\ & \Pros|CPU0|C2|C1|RegCCR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datab => \Pros|CPU0|C1|Equal6~1_combout\,
	datac => \Pros|CPU0|C1|Equal6~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(3),
	combout => \Pros|CPU0|C1|P2~5_combout\);

\Pros|CPU0|C1|FUT.JCC1_N~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_N~0_combout\ = (\Pros|CPU0|C1|Selector10~2_combout\ & \Pros|CPU0|C1|P2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Selector10~2_combout\,
	datab => \Pros|CPU0|C1|P2~5_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC1_N~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_N~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_N~q\);

\Pros|CPU0|C1|FUT.JCC1_NV~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_NV~0_combout\ = (\Pros|CPU0|C1|Selector10~2_combout\ & \Pros|CPU0|C1|P2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Selector10~2_combout\,
	datab => \Pros|CPU0|C1|P2~6_combout\,
	combout => \Pros|CPU0|C1|FUT.JCC1_NV~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_NV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_NV~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_NV~q\);

\Pros|CPU0|C1|FUT.JCC1_NN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_NN~0_combout\ = (\Pros|CPU0|C1|Equal13~0_combout\ & (\Pros|CPU0|C1|Selector10~2_combout\ & !\Pros|CPU0|C2|C1|RegCCR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal13~0_combout\,
	datab => \Pros|CPU0|C1|Selector10~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegCCR\(3),
	combout => \Pros|CPU0|C1|FUT.JCC1_NN~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_NN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_NN~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_NN~q\);

\Pros|CPU0|C1|FUT.JCC1_Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.JCC1_Z~0_combout\ = (\Pros|CPU0|C1|Equal12~0_combout\ & (\Pros|CPU0|C1|Selector10~2_combout\ & \Pros|CPU0|C2|C1|RegCCR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal12~0_combout\,
	datab => \Pros|CPU0|C1|Selector10~2_combout\,
	datac => \Pros|CPU0|C2|C1|RegCCR\(2),
	combout => \Pros|CPU0|C1|FUT.JCC1_Z~0_combout\);

\Pros|CPU0|C1|EDO.JCC1_Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.JCC1_Z~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC1_Z~q\);

\Pros|CPU0|C1|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr3~0_combout\ = (!\Pros|CPU0|C1|EDO.JCC1_N~q\ & (!\Pros|CPU0|C1|EDO.JCC1_NV~q\ & (!\Pros|CPU0|C1|EDO.JCC1_NN~q\ & !\Pros|CPU0|C1|EDO.JCC1_Z~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.JCC1_N~q\,
	datab => \Pros|CPU0|C1|EDO.JCC1_NV~q\,
	datac => \Pros|CPU0|C1|EDO.JCC1_NN~q\,
	datad => \Pros|CPU0|C1|EDO.JCC1_Z~q\,
	combout => \Pros|CPU0|C1|WideOr3~0_combout\);

\Pros|CPU0|C1|WideOr3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr3~2_combout\ = (!\Pros|CPU0|C1|WideOr3~1_combout\) # (!\Pros|CPU0|C1|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr3~0_combout\,
	datab => \Pros|CPU0|C1|WideOr3~1_combout\,
	combout => \Pros|CPU0|C1|WideOr3~2_combout\);

\Pros|CPU0|C1|EDO.JCC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|WideOr3~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC2~q\);

\Pros|CPU0|C1|EDO.JCC3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.JCC2~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.JCC3~q\);

\Pros|CPU0|C1|PC_Load~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|PC_Load~0_combout\ = (!\Pros|CPU0|C1|EDO.JMP3~q\ & !\Pros|CPU0|C1|EDO.JCC3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C1|EDO.JMP3~q\,
	datad => \Pros|CPU0|C1|EDO.JCC3~q\,
	combout => \Pros|CPU0|C1|PC_Load~0_combout\);

\Pros|CPU0|C1|PC_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|PC_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|PC_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|PC_Load~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|PC_Load~0_combout\,
	datac => \Pros|CPU0|C1|PC_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|PC_Load~combout\);

\Pros|CPU0|C2|C3|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\,
	asdata => \Pros|CPU0|C2|C3|cuenta[0]~_wirecell_combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(0));

\Pros|CPU0|C2|C3|Contador|I3|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\ = (\Pros|CPU0|C2|C3|cuenta\(0) & (\Pros|CPU0|C2|C3|cuenta\(1) & (\Pros|CPU0|C2|C3|cuenta\(2) & \Pros|CPU0|C2|C3|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C3|cuenta\(0),
	datab => \Pros|CPU0|C2|C3|cuenta\(1),
	datac => \Pros|CPU0|C2|C3|cuenta\(2),
	datad => \Pros|CPU0|C2|C3|cuenta\(3),
	combout => \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\);

\Pros|CPU0|C2|C3|Contador|I4|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I4|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(4) $ (\Pros|CPU0|C2|C3|Contador|I3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C2|C3|cuenta\(4),
	datad => \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\,
	combout => \Pros|CPU0|C2|C3|Contador|I4|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I4|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(4));

\Pros|CPU0|C2|C3|Contador|I5|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|Contador|I5|Sum~combout\ = \Pros|CPU0|C2|C3|cuenta\(5) $ (((\Pros|CPU0|C2|C3|cuenta\(4) & \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C2|C3|cuenta\(5),
	datac => \Pros|CPU0|C2|C3|cuenta\(4),
	datad => \Pros|CPU0|C2|C3|Contador|I3|Cout~combout\,
	combout => \Pros|CPU0|C2|C3|Contador|I5|Sum~combout\);

\Pros|CPU0|C2|C3|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\,
	asdata => \Pros|CPU0|C2|C3|Contador|I5|Sum~combout\,
	clrn => \RST~input_o\,
	sload => \Pros|CPU0|C1|ALT_INV_PC_Load~combout\,
	ena => \Pros|CPU0|C2|C3|cuenta[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C3|cuenta\(5));

\Pros|CPU0|C2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux2~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(5))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(5),
	datab => \Pros|CPU0|C2|C3|cuenta\(5),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux2~0_combout\);

\Pros|CPU0|C2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux2~1_combout\ = (\Pros|CPU0|C2|Mux2~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux2~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(5),
	combout => \Pros|CPU0|C2|Mux2~1_combout\);

\Pros|MEM0|ram_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[0]~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[0]~0_combout\);

\Pros|MEM0|ram_address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[1]~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[1]~1_combout\);

\Pros|MEM0|ram_address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[2]~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[2]~2_combout\);

\Pros|MEM0|ram_address[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[3]~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[3]~3_combout\);

\Pros|CPU0|C2|C1|RegMAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(4));

\Pros|MEM0|ram_address[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[4]~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(4) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(4),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[4]~4_combout\);

\Pros|CPU0|C2|C1|RegMAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(5));

\Pros|MEM0|ram_address[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[5]~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(7) & \Pros|CPU0|C2|C1|RegMAR\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(7),
	datab => \Pros|CPU0|C2|C1|RegMAR\(5),
	combout => \Pros|MEM0|ram_address[5]~5_combout\);

\Pros|CPU0|C2|C1|RegMAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(6));

\Pros|MEM0|ram_address[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|ram_address[6]~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(6) & \Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(6),
	datab => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|ram_address[6]~6_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\Pros|MEM0|rom_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[0]~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[0]~0_combout\);

\Pros|MEM0|rom_address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[1]~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[1]~1_combout\);

\Pros|MEM0|rom_address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[2]~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[2]~2_combout\);

\Pros|MEM0|rom_address[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[3]~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[3]~3_combout\);

\Pros|MEM0|rom_address[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[4]~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(4) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(4),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[4]~4_combout\);

\Pros|MEM0|rom_address[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[5]~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(5) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(5),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[5]~5_combout\);

\Pros|MEM0|rom_address[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|rom_address[6]~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(6) & !\Pros|CPU0|C2|C1|RegMAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(6),
	datad => \Pros|CPU0|C2|C1|RegMAR\(7),
	combout => \Pros|MEM0|rom_address[6]~6_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000004A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\Pros|CPU0|C1|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr17~combout\ = ((!\Pros|CPU0|C1|WideOr1~0_combout\) # (!\Pros|CPU0|C1|WideOr17~0_combout\)) # (!\Pros|CPU0|C1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr9~0_combout\,
	datac => \Pros|CPU0|C1|WideOr17~0_combout\,
	datad => \Pros|CPU0|C1|WideOr1~0_combout\,
	combout => \Pros|CPU0|C1|WideOr17~combout\);

\Pros|CPU0|C1|Bus2_Sel[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Bus2_Sel\(1) = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|Bus2_Sel\(1)))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr17~combout\,
	datac => \Pros|CPU0|C1|Bus2_Sel\(1),
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|Bus2_Sel\(1));

\Pros|CPU0|C2|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(7) & \Pros|CPU0|C1|Bus2_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(7),
	datab => \Pros|CPU0|C1|Bus2_Sel\(1),
	combout => \Pros|CPU0|C2|Mux12~2_combout\);

\Pros|CPU0|C2|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~3_combout\ = (\Pros|CPU0|C1|Bus2_Sel\(1) & (((!\Pros|CPU0|C2|C1|RegMAR\(5)) # (!\Pros|CPU0|C2|C1|RegMAR\(7))) # (!\Pros|CPU0|C2|C1|RegMAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Bus2_Sel\(1),
	datab => \Pros|CPU0|C2|C1|RegMAR\(6),
	datac => \Pros|CPU0|C2|C1|RegMAR\(7),
	datad => \Pros|CPU0|C2|C1|RegMAR\(5),
	combout => \Pros|CPU0|C2|Mux12~3_combout\);

\Pros|CPU0|C2|Mux10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\))) 
-- # (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux2~5_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux10~10_combout\);

\Pros|CPU0|C2|Mux10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux10~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux10~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\))) # (!\Pros|CPU0|C2|Mux10~10_combout\ & (\Pros|CPU0|C2|Mux10~9_combout\)))) 
-- # (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux10~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux10~10_combout\,
	combout => \Pros|CPU0|C2|Mux10~11_combout\);

\Pros|CPU0|C1|WideOr19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr19~4_combout\ = (\Pros|CPU0|C1|EDO.Fetch2~q\) # ((\Pros|CPU0|C1|EDO.Load_DIR_A3~q\) # ((\Pros|CPU0|C1|EDO.STOREA3~q\) # (!\Pros|CPU0|C1|WideOr19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Fetch2~q\,
	datab => \Pros|CPU0|C1|EDO.Load_DIR_A3~q\,
	datac => \Pros|CPU0|C1|EDO.STOREA3~q\,
	datad => \Pros|CPU0|C1|WideOr19~3_combout\,
	combout => \Pros|CPU0|C1|WideOr19~4_combout\);

\Pros|CPU0|C1|WideOr19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr19~combout\ = (((\Pros|CPU0|C1|WideOr19~4_combout\) # (!\Pros|CPU0|C1|WideOr1~1_combout\)) # (!\Pros|CPU0|C1|WideOr34~0_combout\)) # (!\Pros|CPU0|C1|WideOr13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr13~4_combout\,
	datab => \Pros|CPU0|C1|WideOr34~0_combout\,
	datac => \Pros|CPU0|C1|WideOr1~1_combout\,
	datad => \Pros|CPU0|C1|WideOr19~4_combout\,
	combout => \Pros|CPU0|C1|WideOr19~combout\);

\Pros|CPU0|C1|Bus2_Sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Bus2_Sel\(0) = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|Bus2_Sel\(0)))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|WideOr19~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr19~combout\,
	datac => \Pros|CPU0|C1|Bus2_Sel\(0),
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|Bus2_Sel\(0));

\Pros|CPU0|C2|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~4_combout\ = (\Pros|CPU0|C1|Bus2_Sel\(0) & !\Pros|CPU0|C1|Bus2_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Bus2_Sel\(0),
	datad => \Pros|CPU0|C1|Bus2_Sel\(1),
	combout => \Pros|CPU0|C2|Mux12~4_combout\);

\Pros|CPU0|C2|C3|cuenta[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[5]~5_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux2~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux10~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux10~11_combout\,
	datab => \Pros|CPU0|C2|Mux2~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\);

\Pros|CPU0|C2|C1|RegIR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[5]~5_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(5));

\Pros|CPU0|C1|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Equal15~0_combout\ = (\Pros|CPU0|C2|C1|RegIR\(6) & (\Pros|CPU0|C1|Equal6~0_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(4) & !\Pros|CPU0|C2|C1|RegIR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(6),
	datab => \Pros|CPU0|C1|Equal6~0_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(4),
	datad => \Pros|CPU0|C2|C1|RegIR\(5),
	combout => \Pros|CPU0|C1|Equal15~0_combout\);

\Pros|CPU0|C1|FUT.INC_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.INC_A~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal11~0_combout\ & \Pros|CPU0|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|Equal11~0_combout\,
	datad => \Pros|CPU0|C1|Equal15~0_combout\,
	combout => \Pros|CPU0|C1|FUT.INC_A~0_combout\);

\Pros|CPU0|C1|EDO.INC_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.INC_A~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.INC_A~q\);

\Pros|CPU0|C1|FUT.SUB_AB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.SUB_AB~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|Equal6~1_combout\ & \Pros|CPU0|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|Equal6~1_combout\,
	datad => \Pros|CPU0|C1|Equal15~0_combout\,
	combout => \Pros|CPU0|C1|FUT.SUB_AB~0_combout\);

\Pros|CPU0|C1|EDO.SUB_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.SUB_AB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.SUB_AB~q\);

\Pros|CPU0|C1|WideOr34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr34~0_combout\ = (!\Pros|CPU0|C1|EDO.INC_A~q\ & (!\Pros|CPU0|C1|EDO.DEC_A~q\ & (!\Pros|CPU0|C1|EDO.SUB_AB~q\ & !\Pros|CPU0|C1|EDO.OR_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.INC_A~q\,
	datab => \Pros|CPU0|C1|EDO.DEC_A~q\,
	datac => \Pros|CPU0|C1|EDO.SUB_AB~q\,
	datad => \Pros|CPU0|C1|EDO.OR_AB~q\,
	combout => \Pros|CPU0|C1|WideOr34~0_combout\);

\Pros|CPU0|C1|WideOr11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr11~combout\ = (\Pros|CPU0|C1|EDO.Load_inmA3~q\) # ((\Pros|CPU0|C1|EDO.Load_DIR_A5~q\) # ((!\Pros|CPU0|C1|WideOr1~1_combout\) # (!\Pros|CPU0|C1|WideOr34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Load_inmA3~q\,
	datab => \Pros|CPU0|C1|EDO.Load_DIR_A5~q\,
	datac => \Pros|CPU0|C1|WideOr34~0_combout\,
	datad => \Pros|CPU0|C1|WideOr1~1_combout\,
	combout => \Pros|CPU0|C1|WideOr11~combout\);

\Pros|CPU0|C1|A_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|A_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|A_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr11~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr11~combout\,
	datac => \Pros|CPU0|C1|A_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|A_Load~combout\);

\Pros|CPU0|C2|C1|RegA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(4));

\Pros|CPU0|C2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux3~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(4))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(4),
	datab => \Pros|CPU0|C2|C3|cuenta\(4),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux3~0_combout\);

\Pros|CPU0|C2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux3~1_combout\ = (\Pros|CPU0|C2|Mux3~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux3~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(4),
	combout => \Pros|CPU0|C2|Mux3~1_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\Pros|CPU0|C2|C2|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux3~5_combout\ = (\Pros|CPU0|C2|C2|Mux3~0_combout\) # ((\Pros|CPU0|C2|C2|Mux3~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux3~0_combout\,
	datab => \Pros|CPU0|C2|C2|Mux3~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux3~5_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000006C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\))) 
-- # (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux3~5_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux11~10_combout\);

\Pros|CPU0|C2|Mux11~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux11~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux11~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (!\Pros|CPU0|C2|Mux11~10_combout\ & (\Pros|CPU0|C2|Mux11~9_combout\)))) 
-- # (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux11~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux11~10_combout\,
	combout => \Pros|CPU0|C2|Mux11~11_combout\);

\Pros|CPU0|C2|C3|cuenta[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[4]~4_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux3~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux11~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux11~11_combout\,
	datab => \Pros|CPU0|C2|Mux3~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\);

\Pros|CPU0|C2|C1|RegIR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[4]~4_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(4));

\Pros|CPU0|C1|P2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~3_combout\ = (\Pros|CPU0|C2|C1|RegIR\(4) & (\Pros|CPU0|C1|Equal8~0_combout\ & (\Pros|CPU0|C1|P2~2_combout\ & !\Pros|CPU0|C2|C1|RegIR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(4),
	datab => \Pros|CPU0|C1|Equal8~0_combout\,
	datac => \Pros|CPU0|C1|P2~2_combout\,
	datad => \Pros|CPU0|C2|C1|RegIR\(3),
	combout => \Pros|CPU0|C1|P2~3_combout\);

\Pros|CPU0|C1|FUT.STOREA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.STOREA~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|P2~3_combout\ & (!\Pros|CPU0|C1|P2~4_combout\ & !\Pros|CPU0|C1|P2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|P2~3_combout\,
	datac => \Pros|CPU0|C1|P2~4_combout\,
	datad => \Pros|CPU0|C1|P2~12_combout\,
	combout => \Pros|CPU0|C1|FUT.STOREA~0_combout\);

\Pros|CPU0|C1|EDO.STOREA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.STOREA~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.STOREA~q\);

\Pros|CPU0|C1|EDO.STOREA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.STOREA~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.STOREA2~q\);

\Pros|CPU0|C1|EDO.STOREA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.STOREA2~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.STOREA3~q\);

\Pros|CPU0|C1|FUT.STOREB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.STOREB~0_combout\ = (\Pros|CPU0|C1|EDO.STOREA3~q\ & ((\Pros|CPU0|C2|C1|RegIR\(0)) # (!\Pros|CPU0|C1|P2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.STOREA3~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datad => \Pros|CPU0|C1|P2~3_combout\,
	combout => \Pros|CPU0|C1|FUT.STOREB~0_combout\);

\Pros|CPU0|C1|EDO.STOREB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.STOREB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.STOREB~q\);

\Pros|CPU0|C1|FUT.STOREA4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.STOREA4~0_combout\ = (!\Pros|CPU0|C2|C1|RegIR\(0) & (\Pros|CPU0|C1|EDO.STOREA3~q\ & \Pros|CPU0|C1|P2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(0),
	datac => \Pros|CPU0|C1|EDO.STOREA3~q\,
	datad => \Pros|CPU0|C1|P2~3_combout\,
	combout => \Pros|CPU0|C1|FUT.STOREA4~0_combout\);

\Pros|CPU0|C1|EDO.STOREA4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.STOREA4~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.STOREA4~q\);

\Pros|CPU0|C1|wr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|wr~0_combout\ = (\Pros|CPU0|C1|EDO.STOREB~q\) # (\Pros|CPU0|C1|EDO.STOREA4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.STOREB~q\,
	datab => \Pros|CPU0|C1|EDO.STOREA4~q\,
	combout => \Pros|CPU0|C1|wr~0_combout\);

\Pros|CPU0|C1|wr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|wr~1_combout\ = (\Pros|CPU0|C1|EDO.NOT_B~q\) # (\Pros|CPU0|C1|EDO.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.NOT_B~q\,
	datab => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|wr~1_combout\);

\Pros|CPU0|C1|wr\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|wr~combout\ = (\Pros|CPU0|C1|wr~1_combout\ & ((\Pros|CPU0|C1|wr~combout\))) # (!\Pros|CPU0|C1|wr~1_combout\ & (\Pros|CPU0|C1|wr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|wr~0_combout\,
	datac => \Pros|CPU0|C1|wr~combout\,
	datad => \Pros|CPU0|C1|wr~1_combout\,
	combout => \Pros|CPU0|C1|wr~combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\Pros|CPU0|C2|C2|Mux1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux1~13_combout\ = (\Pros|CPU0|C2|C2|Mux1~8_combout\) # ((\Pros|CPU0|C2|C2|Mux1~12_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~8_combout\,
	datab => \Pros|CPU0|C2|C2|Mux1~12_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux1~13_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000005A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6~portadataout\))) # 
-- (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux1~13_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux9~10_combout\);

\Pros|CPU0|C2|Mux9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux9~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux9~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (!\Pros|CPU0|C2|Mux9~10_combout\ & (\Pros|CPU0|C2|Mux9~9_combout\)))) # 
-- (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux9~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux9~10_combout\,
	combout => \Pros|CPU0|C2|Mux9~11_combout\);

\Pros|CPU0|C2|C3|cuenta[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[6]~6_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux1~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux9~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux9~11_combout\,
	datab => \Pros|CPU0|C2|Mux1~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\);

\Pros|CPU0|C2|C1|RegIR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[6]~6_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegIR\(6));

\Pros|CPU0|C1|P2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~2_combout\ = (\Pros|CPU0|C2|C1|RegIR\(7) & (!\Pros|CPU0|C2|C1|RegIR\(6) & !\Pros|CPU0|C2|C1|RegIR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(7),
	datac => \Pros|CPU0|C2|C1|RegIR\(6),
	datad => \Pros|CPU0|C2|C1|RegIR\(5),
	combout => \Pros|CPU0|C1|P2~2_combout\);

\Pros|CPU0|C1|P2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|P2~4_combout\ = (\Pros|CPU0|C1|Equal8~0_combout\ & (\Pros|CPU0|C1|P2~2_combout\ & (!\Pros|CPU0|C2|C1|RegIR\(4) & !\Pros|CPU0|C2|C1|RegIR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal8~0_combout\,
	datab => \Pros|CPU0|C1|P2~2_combout\,
	datac => \Pros|CPU0|C2|C1|RegIR\(4),
	datad => \Pros|CPU0|C2|C1|RegIR\(3),
	combout => \Pros|CPU0|C1|P2~4_combout\);

\Pros|CPU0|C1|FUT.Load_inmA1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_inmA1~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & \Pros|CPU0|C1|P2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|P2~4_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_inmA1~0_combout\);

\Pros|CPU0|C1|EDO.Load_inmA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_inmA1~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_inmA1~q\);

\Pros|CPU0|C1|EDO.Load_inmA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Load_inmA1~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_inmA2~q\);

\Pros|CPU0|C1|FUT.Load_inmB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_inmB~0_combout\ = (\Pros|CPU0|C1|EDO.Load_inmA2~q\ & ((\Pros|CPU0|C2|C1|RegIR\(0)) # (!\Pros|CPU0|C1|P2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Load_inmA2~q\,
	datab => \Pros|CPU0|C2|C1|RegIR\(0),
	datad => \Pros|CPU0|C1|P2~4_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_inmB~0_combout\);

\Pros|CPU0|C1|EDO.Load_inmB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_inmB~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_inmB~q\);

\Pros|CPU0|C1|WideOr13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr13~5_combout\ = (!\Pros|CPU0|C1|EDO.Load_inmB~q\ & !\Pros|CPU0|C1|EDO.Load_DIR_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|CPU0|C1|EDO.Load_inmB~q\,
	datad => \Pros|CPU0|C1|EDO.Load_DIR_B~q\,
	combout => \Pros|CPU0|C1|WideOr13~5_combout\);

\Pros|CPU0|C1|WideOr19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr19~3_combout\ = (\Pros|CPU0|C1|WideOr13~5_combout\ & (\Pros|CPU0|C1|PC_Load~0_combout\ & (!\Pros|CPU0|C1|EDO.Load_inmA3~q\ & !\Pros|CPU0|C1|EDO.Load_DIR_A5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr13~5_combout\,
	datab => \Pros|CPU0|C1|PC_Load~0_combout\,
	datac => \Pros|CPU0|C1|EDO.Load_inmA3~q\,
	datad => \Pros|CPU0|C1|EDO.Load_DIR_A5~q\,
	combout => \Pros|CPU0|C1|WideOr19~3_combout\);

\Pros|CPU0|C1|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr1~0_combout\ = (\Pros|CPU0|C1|WideOr19~3_combout\ & (!\Pros|CPU0|C1|EDO.STOREB~q\ & (!\Pros|CPU0|C1|EDO.JCC4~q\ & !\Pros|CPU0|C1|EDO.STOREA4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr19~3_combout\,
	datab => \Pros|CPU0|C1|EDO.STOREB~q\,
	datac => \Pros|CPU0|C1|EDO.JCC4~q\,
	datad => \Pros|CPU0|C1|EDO.STOREA4~q\,
	combout => \Pros|CPU0|C1|WideOr1~0_combout\);

\Pros|CPU0|C1|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr1~combout\ = (\Pros|CPU0|C1|WideOr1~0_combout\ & (\Pros|CPU0|C1|WideOr13~4_combout\ & (\Pros|CPU0|C1|WideOr34~0_combout\ & \Pros|CPU0|C1|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|WideOr1~0_combout\,
	datab => \Pros|CPU0|C1|WideOr13~4_combout\,
	datac => \Pros|CPU0|C1|WideOr34~0_combout\,
	datad => \Pros|CPU0|C1|WideOr1~1_combout\,
	combout => \Pros|CPU0|C1|WideOr1~combout\);

\Pros|CPU0|C1|EDO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|WideOr1~combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.IDLE~q\);

\Pros|CPU0|C1|EDO.Fetch1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|EDO.Fetch1~0_combout\ = !\Pros|CPU0|C1|EDO.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.IDLE~q\,
	combout => \Pros|CPU0|C1|EDO.Fetch1~0_combout\);

\Pros|CPU0|C1|EDO.Fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Fetch1~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Fetch1~q\);

\Pros|CPU0|C1|EDO.Fetch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Fetch1~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Fetch2~q\);

\Pros|CPU0|C1|Selector10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Selector10~6_combout\ = (!\Pros|CPU0|C1|Equal24~0_combout\ & (((\Pros|CPU0|C2|C1|RegIR\(5)) # (!\Pros|CPU0|C1|Equal7~1_combout\)) # (!\Pros|CPU0|C2|C1|RegIR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegIR\(6),
	datab => \Pros|CPU0|C2|C1|RegIR\(5),
	datac => \Pros|CPU0|C1|Equal7~1_combout\,
	datad => \Pros|CPU0|C1|Equal24~0_combout\,
	combout => \Pros|CPU0|C1|Selector10~6_combout\);

\Pros|CPU0|C1|Selector10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Selector10~3_combout\ = (!\Pros|CPU0|C1|P2~3_combout\ & (!\Pros|CPU0|C1|Equal15~0_combout\ & ((!\Pros|CPU0|C1|Equal6~3_combout\) # (!\Pros|CPU0|C1|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|Equal6~1_combout\,
	datab => \Pros|CPU0|C1|Equal6~3_combout\,
	datac => \Pros|CPU0|C1|P2~3_combout\,
	datad => \Pros|CPU0|C1|Equal15~0_combout\,
	combout => \Pros|CPU0|C1|Selector10~3_combout\);

\Pros|CPU0|C1|Selector10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Selector10~4_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (!\Pros|CPU0|C1|P2~4_combout\ & (!\Pros|CPU0|C1|P2~12_combout\ & \Pros|CPU0|C1|Selector10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|P2~4_combout\,
	datac => \Pros|CPU0|C1|P2~12_combout\,
	datad => \Pros|CPU0|C1|Selector10~3_combout\,
	combout => \Pros|CPU0|C1|Selector10~4_combout\);

\Pros|CPU0|C1|Selector10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|Selector10~5_combout\ = (\Pros|CPU0|C1|EDO.Fetch2~q\) # ((\Pros|CPU0|C1|Selector10~6_combout\ & (\Pros|CPU0|C1|Selector10~4_combout\ & !\Pros|CPU0|C1|P2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Fetch2~q\,
	datab => \Pros|CPU0|C1|Selector10~6_combout\,
	datac => \Pros|CPU0|C1|Selector10~4_combout\,
	datad => \Pros|CPU0|C1|P2~10_combout\,
	combout => \Pros|CPU0|C1|Selector10~5_combout\);

\Pros|CPU0|C1|EDO.Decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|Selector10~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Decode~q\);

\Pros|CPU0|C1|FUT.Load_DIR_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|FUT.Load_DIR_A~0_combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|P2~12_combout\ & !\Pros|CPU0|C1|P2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Decode~q\,
	datab => \Pros|CPU0|C1|P2~12_combout\,
	datad => \Pros|CPU0|C1|P2~4_combout\,
	combout => \Pros|CPU0|C1|FUT.Load_DIR_A~0_combout\);

\Pros|CPU0|C1|EDO.Load_DIR_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|FUT.Load_DIR_A~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_A~q\);

\Pros|CPU0|C1|EDO.Load_DIR_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Load_DIR_A~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_A2~q\);

\Pros|CPU0|C1|EDO.Load_DIR_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C1|EDO.Load_DIR_A2~q\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C1|EDO.Load_DIR_A3~q\);

\Pros|CPU0|C1|WideOr6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|WideOr6~2_combout\ = (\Pros|CPU0|C1|EDO.Load_DIR_A3~q\) # ((\Pros|CPU0|C1|EDO.STOREA3~q\) # (!\Pros|CPU0|C1|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|EDO.Load_DIR_A3~q\,
	datab => \Pros|CPU0|C1|EDO.STOREA3~q\,
	datad => \Pros|CPU0|C1|WideOr6~1_combout\,
	combout => \Pros|CPU0|C1|WideOr6~2_combout\);

\Pros|CPU0|C1|MAR_Load\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C1|MAR_Load~combout\ = (\Pros|CPU0|C1|EDO.Decode~q\ & ((\Pros|CPU0|C1|MAR_Load~combout\))) # (!\Pros|CPU0|C1|EDO.Decode~q\ & (\Pros|CPU0|C1|WideOr6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pros|CPU0|C1|WideOr6~2_combout\,
	datac => \Pros|CPU0|C1|MAR_Load~combout\,
	datad => \Pros|CPU0|C1|EDO.Decode~q\,
	combout => \Pros|CPU0|C1|MAR_Load~combout\);

\Pros|CPU0|C2|C1|RegMAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(0));

\p_in_08[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(7),
	o => \p_in_08[7]~input_o\);

\Pros|CPU0|C2|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_09[7]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_08[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_09[7]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_08[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~0_combout\);

\p_in_11[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(7),
	o => \p_in_11[7]~input_o\);

\Pros|CPU0|C2|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux8~0_combout\ & ((\p_in_11[7]~input_o\))) # (!\Pros|CPU0|C2|Mux8~0_combout\ & (\p_in_10[7]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_10[7]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux8~0_combout\,
	datad => \p_in_11[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~1_combout\);

\p_in_05[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(7),
	o => \p_in_05[7]~input_o\);

\p_in_06[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(7),
	o => \p_in_06[7]~input_o\);

\p_in_04[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(7),
	o => \p_in_04[7]~input_o\);

\Pros|CPU0|C2|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_06[7]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_04[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_06[7]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_04[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~2_combout\);

\p_in_07[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(7),
	o => \p_in_07[7]~input_o\);

\Pros|CPU0|C2|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux8~2_combout\ & ((\p_in_07[7]~input_o\))) # (!\Pros|CPU0|C2|Mux8~2_combout\ & (\p_in_05[7]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_05[7]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux8~2_combout\,
	datad => \p_in_07[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~3_combout\);

\p_in_01[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(7),
	o => \p_in_01[7]~input_o\);

\p_in_02[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(7),
	o => \p_in_02[7]~input_o\);

\p_in_00[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(7),
	o => \p_in_00[7]~input_o\);

\Pros|CPU0|C2|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_02[7]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_00[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_02[7]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_00[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~4_combout\);

\p_in_03[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(7),
	o => \p_in_03[7]~input_o\);

\Pros|CPU0|C2|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux8~4_combout\ & ((\p_in_03[7]~input_o\))) # (!\Pros|CPU0|C2|Mux8~4_combout\ & (\p_in_01[7]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_01[7]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux8~4_combout\,
	datad => \p_in_03[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~5_combout\);

\Pros|CPU0|C2|Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\Pros|CPU0|C2|Mux8~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- ((\Pros|CPU0|C2|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \Pros|CPU0|C2|Mux8~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \Pros|CPU0|C2|Mux8~5_combout\,
	combout => \Pros|CPU0|C2|Mux8~6_combout\);

\p_in_14[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(7),
	o => \p_in_14[7]~input_o\);

\p_in_13[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(7),
	o => \p_in_13[7]~input_o\);

\p_in_12[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(7),
	o => \p_in_12[7]~input_o\);

\Pros|CPU0|C2|Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_13[7]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_12[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_13[7]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_12[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~7_combout\);

\p_in_15[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(7),
	o => \p_in_15[7]~input_o\);

\Pros|CPU0|C2|Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux8~7_combout\ & ((\p_in_15[7]~input_o\))) # (!\Pros|CPU0|C2|Mux8~7_combout\ & (\p_in_14[7]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_14[7]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux8~7_combout\,
	datad => \p_in_15[7]~input_o\,
	combout => \Pros|CPU0|C2|Mux8~8_combout\);

\Pros|CPU0|C2|Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux8~6_combout\ & ((\Pros|CPU0|C2|Mux8~8_combout\))) # (!\Pros|CPU0|C2|Mux8~6_combout\ & (\Pros|CPU0|C2|Mux8~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux8~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux8~6_combout\,
	datad => \Pros|CPU0|C2|Mux8~8_combout\,
	combout => \Pros|CPU0|C2|Mux8~9_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\Pros|CPU0|C2|C2|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux0~12_combout\ = (\Pros|CPU0|C2|C2|Mux0~6_combout\) # ((\Pros|CPU0|C2|C2|Mux0~11_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux0~6_combout\,
	datab => \Pros|CPU0|C2|C2|Mux0~11_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux0~12_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000006F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7~portadataout\))) # 
-- (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux0~12_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux8~10_combout\);

\Pros|CPU0|C2|Mux8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux8~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux8~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (!\Pros|CPU0|C2|Mux8~10_combout\ & (\Pros|CPU0|C2|Mux8~9_combout\)))) # 
-- (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux8~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux8~10_combout\,
	combout => \Pros|CPU0|C2|Mux8~11_combout\);

\Pros|CPU0|C2|C3|cuenta[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[7]~7_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux0~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux8~11_combout\,
	datab => \Pros|CPU0|C2|Mux0~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\);

\Pros|CPU0|C2|C1|RegMAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[7]~7_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(7));

\Pros|CPU0|C2|Mux12~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~17_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(7) & (\Pros|CPU0|C1|Bus2_Sel\(1) & ((\Pros|CPU0|C2|Mux12~3_combout\) # (!\Pros|CPU0|C2|C1|RegMAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(7),
	datab => \Pros|CPU0|C1|Bus2_Sel\(1),
	datac => \Pros|CPU0|C2|Mux12~3_combout\,
	datad => \Pros|CPU0|C2|C1|RegMAR\(4),
	combout => \Pros|CPU0|C2|Mux12~17_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000034",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~15_combout\ = (\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\) # ((\Pros|CPU0|C2|C1|RegMAR\(7) & \Pros|CPU0|C1|Bus2_Sel\(1))))) # (!\Pros|CPU0|C2|Mux12~3_combout\ & 
-- (((!\Pros|CPU0|C1|Bus2_Sel\(1))) # (!\Pros|CPU0|C2|C1|RegMAR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(7),
	datab => \Pros|CPU0|C1|Bus2_Sel\(1),
	datac => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux14~15_combout\);

\Pros|CPU0|C2|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~2_combout\ = (\Pros|CPU0|C2|Mux14~15_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\) # (\Pros|CPU0|C2|C2|Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux12~3_combout\,
	datab => \Pros|CPU0|C2|Mux14~15_combout\,
	datac => \Pros|CPU0|C2|C2|Mux6~9_combout\,
	combout => \Pros|CPU0|C2|Mux14~2_combout\);

\p_in_06[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(1),
	o => \p_in_06[1]~input_o\);

\p_in_05[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(1),
	o => \p_in_05[1]~input_o\);

\p_in_04[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(1),
	o => \p_in_04[1]~input_o\);

\Pros|CPU0|C2|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_05[1]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_04[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_05[1]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_04[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~3_combout\);

\p_in_07[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(1),
	o => \p_in_07[1]~input_o\);

\Pros|CPU0|C2|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux14~3_combout\ & ((\p_in_07[1]~input_o\))) # (!\Pros|CPU0|C2|Mux14~3_combout\ & (\p_in_06[1]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_06[1]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux14~3_combout\,
	datad => \p_in_07[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~4_combout\);

\p_in_02[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(1),
	o => \p_in_02[1]~input_o\);

\p_in_01[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(1),
	o => \p_in_01[1]~input_o\);

\p_in_00[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(1),
	o => \p_in_00[1]~input_o\);

\Pros|CPU0|C2|Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_01[1]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_00[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_01[1]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_00[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~5_combout\);

\p_in_03[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(1),
	o => \p_in_03[1]~input_o\);

\Pros|CPU0|C2|Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux14~5_combout\ & ((\p_in_03[1]~input_o\))) # (!\Pros|CPU0|C2|Mux14~5_combout\ & (\p_in_02[1]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_02[1]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux14~5_combout\,
	datad => \p_in_03[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~6_combout\);

\p_in_09[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(1),
	o => \p_in_09[1]~input_o\);

\p_in_10[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(1),
	o => \p_in_10[1]~input_o\);

\p_in_08[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(1),
	o => \p_in_08[1]~input_o\);

\Pros|CPU0|C2|Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_10[1]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_08[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_10[1]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_08[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~7_combout\);

\p_in_11[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(1),
	o => \p_in_11[1]~input_o\);

\Pros|CPU0|C2|Mux14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux14~7_combout\ & ((\p_in_11[1]~input_o\))) # (!\Pros|CPU0|C2|Mux14~7_combout\ & (\p_in_09[1]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_09[1]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux14~7_combout\,
	datad => \p_in_11[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~8_combout\);

\p_in_13[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(1),
	o => \p_in_13[1]~input_o\);

\p_in_14[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(1),
	o => \p_in_14[1]~input_o\);

\p_in_12[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(1),
	o => \p_in_12[1]~input_o\);

\Pros|CPU0|C2|Mux14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_14[1]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_12[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_14[1]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_12[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~9_combout\);

\p_in_15[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(1),
	o => \p_in_15[1]~input_o\);

\Pros|CPU0|C2|Mux14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~10_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux14~9_combout\ & ((\p_in_15[1]~input_o\))) # (!\Pros|CPU0|C2|Mux14~9_combout\ & (\p_in_13[1]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_13[1]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux14~9_combout\,
	datad => \p_in_15[1]~input_o\,
	combout => \Pros|CPU0|C2|Mux14~10_combout\);

\Pros|CPU0|C2|Mux14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~11_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|Mux14~10_combout\) # (!\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & (\Pros|CPU0|C2|Mux14~8_combout\ & (\Pros|CPU0|C2|C1|RegMAR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \Pros|CPU0|C2|Mux14~8_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \Pros|CPU0|C2|Mux14~10_combout\,
	combout => \Pros|CPU0|C2|Mux14~11_combout\);

\Pros|CPU0|C2|Mux14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~12_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|Mux14~11_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux14~11_combout\ & (\Pros|CPU0|C2|Mux14~4_combout\)) # (!\Pros|CPU0|C2|Mux14~11_combout\ & 
-- ((\Pros|CPU0|C2|Mux14~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux14~4_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux14~6_combout\,
	datad => \Pros|CPU0|C2|Mux14~11_combout\,
	combout => \Pros|CPU0|C2|Mux14~12_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\Pros|CPU0|C2|Mux14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~13_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\)) # (!\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|CPU0|C2|Mux14~12_combout\))))) # 
-- (!\Pros|CPU0|C2|Mux12~2_combout\ & (\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datab => \Pros|CPU0|C2|Mux12~2_combout\,
	datac => \Pros|CPU0|C2|Mux14~12_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux14~13_combout\);

\Pros|CPU0|C2|Mux14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux14~14_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux14~2_combout\ & ((\Pros|CPU0|C2|Mux14~13_combout\))) # (!\Pros|CPU0|C2|Mux14~2_combout\ & (\Pros|CPU0|C2|Mux14~12_combout\)))) # (!\Pros|CPU0|C2|Mux12~17_combout\ & 
-- (\Pros|CPU0|C2|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux12~17_combout\,
	datab => \Pros|CPU0|C2|Mux14~2_combout\,
	datac => \Pros|CPU0|C2|Mux14~12_combout\,
	datad => \Pros|CPU0|C2|Mux14~13_combout\,
	combout => \Pros|CPU0|C2|Mux14~14_combout\);

\Pros|CPU0|C2|C3|cuenta[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[1]~1_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux6~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux14~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux14~14_combout\,
	datab => \Pros|CPU0|C2|Mux6~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\);

\Pros|CPU0|C2|C1|RegMAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(1));

\p_in_09[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(3),
	o => \p_in_09[3]~input_o\);

\p_in_08[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(3),
	o => \p_in_08[3]~input_o\);

\Pros|CPU0|C2|Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_09[3]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_08[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_09[3]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_08[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~5_combout\);

\p_in_11[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(3),
	o => \p_in_11[3]~input_o\);

\Pros|CPU0|C2|Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux12~5_combout\ & ((\p_in_11[3]~input_o\))) # (!\Pros|CPU0|C2|Mux12~5_combout\ & (\p_in_10[3]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_10[3]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux12~5_combout\,
	datad => \p_in_11[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~6_combout\);

\p_in_05[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(3),
	o => \p_in_05[3]~input_o\);

\p_in_06[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(3),
	o => \p_in_06[3]~input_o\);

\p_in_04[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(3),
	o => \p_in_04[3]~input_o\);

\Pros|CPU0|C2|Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_06[3]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_04[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_06[3]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_04[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~7_combout\);

\p_in_07[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(3),
	o => \p_in_07[3]~input_o\);

\Pros|CPU0|C2|Mux12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux12~7_combout\ & ((\p_in_07[3]~input_o\))) # (!\Pros|CPU0|C2|Mux12~7_combout\ & (\p_in_05[3]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_05[3]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux12~7_combout\,
	datad => \p_in_07[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~8_combout\);

\p_in_01[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(3),
	o => \p_in_01[3]~input_o\);

\p_in_02[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(3),
	o => \p_in_02[3]~input_o\);

\p_in_00[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(3),
	o => \p_in_00[3]~input_o\);

\Pros|CPU0|C2|Mux12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\p_in_02[3]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\p_in_00[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \p_in_02[3]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \p_in_00[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~9_combout\);

\p_in_03[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(3),
	o => \p_in_03[3]~input_o\);

\Pros|CPU0|C2|Mux12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~10_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux12~9_combout\ & ((\p_in_03[3]~input_o\))) # (!\Pros|CPU0|C2|Mux12~9_combout\ & (\p_in_01[3]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux12~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_01[3]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux12~9_combout\,
	datad => \p_in_03[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~10_combout\);

\Pros|CPU0|C2|Mux12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~11_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\Pros|CPU0|C2|Mux12~8_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- ((\Pros|CPU0|C2|Mux12~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \Pros|CPU0|C2|Mux12~8_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \Pros|CPU0|C2|Mux12~10_combout\,
	combout => \Pros|CPU0|C2|Mux12~11_combout\);

\p_in_14[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(3),
	o => \p_in_14[3]~input_o\);

\p_in_13[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(3),
	o => \p_in_13[3]~input_o\);

\p_in_12[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(3),
	o => \p_in_12[3]~input_o\);

\Pros|CPU0|C2|Mux12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~12_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\p_in_13[3]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\p_in_12[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \p_in_13[3]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \p_in_12[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~12_combout\);

\p_in_15[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(3),
	o => \p_in_15[3]~input_o\);

\Pros|CPU0|C2|Mux12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~13_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux12~12_combout\ & ((\p_in_15[3]~input_o\))) # (!\Pros|CPU0|C2|Mux12~12_combout\ & (\p_in_14[3]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_14[3]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux12~12_combout\,
	datad => \p_in_15[3]~input_o\,
	combout => \Pros|CPU0|C2|Mux12~13_combout\);

\Pros|CPU0|C2|Mux12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~14_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux12~11_combout\ & ((\Pros|CPU0|C2|Mux12~13_combout\))) # (!\Pros|CPU0|C2|Mux12~11_combout\ & (\Pros|CPU0|C2|Mux12~6_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux12~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux12~6_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux12~11_combout\,
	datad => \Pros|CPU0|C2|Mux12~13_combout\,
	combout => \Pros|CPU0|C2|Mux12~14_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~15_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3~portadataout\))) 
-- # (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux4~5_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux12~15_combout\);

\Pros|CPU0|C2|Mux12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux12~16_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux12~15_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (!\Pros|CPU0|C2|Mux12~15_combout\ & 
-- (\Pros|CPU0|C2|Mux12~14_combout\)))) # (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux12~14_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux12~15_combout\,
	combout => \Pros|CPU0|C2|Mux12~16_combout\);

\Pros|CPU0|C2|C3|cuenta[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[3]~3_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux4~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux12~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux12~16_combout\,
	datab => \Pros|CPU0|C2|Mux4~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\);

\Pros|CPU0|C2|C1|RegMAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[3]~3_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(3));

\p_in_02[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(2),
	o => \p_in_02[2]~input_o\);

\Pros|CPU0|C2|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_10[2]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_02[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_10[2]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_02[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~0_combout\);

\p_in_14[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(2),
	o => \p_in_14[2]~input_o\);

\Pros|CPU0|C2|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux13~0_combout\ & ((\p_in_14[2]~input_o\))) # (!\Pros|CPU0|C2|Mux13~0_combout\ & (\p_in_06[2]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_06[2]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux13~0_combout\,
	datad => \p_in_14[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~1_combout\);

\p_in_09[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(2),
	o => \p_in_09[2]~input_o\);

\p_in_05[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_05(2),
	o => \p_in_05[2]~input_o\);

\p_in_01[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(2),
	o => \p_in_01[2]~input_o\);

\Pros|CPU0|C2|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_05[2]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_01[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_05[2]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_01[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~2_combout\);

\p_in_13[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(2),
	o => \p_in_13[2]~input_o\);

\Pros|CPU0|C2|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux13~2_combout\ & ((\p_in_13[2]~input_o\))) # (!\Pros|CPU0|C2|Mux13~2_combout\ & (\p_in_09[2]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_09[2]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux13~2_combout\,
	datad => \p_in_13[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~3_combout\);

\p_in_08[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(2),
	o => \p_in_08[2]~input_o\);

\p_in_04[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(2),
	o => \p_in_04[2]~input_o\);

\p_in_00[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(2),
	o => \p_in_00[2]~input_o\);

\Pros|CPU0|C2|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_04[2]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_00[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_04[2]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_00[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~4_combout\);

\p_in_12[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(2),
	o => \p_in_12[2]~input_o\);

\Pros|CPU0|C2|Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux13~4_combout\ & ((\p_in_12[2]~input_o\))) # (!\Pros|CPU0|C2|Mux13~4_combout\ & (\p_in_08[2]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_08[2]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux13~4_combout\,
	datad => \p_in_12[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~5_combout\);

\Pros|CPU0|C2|Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & (((\Pros|CPU0|C2|C1|RegMAR\(0))))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|C1|RegMAR\(0) & (\Pros|CPU0|C2|Mux13~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- ((\Pros|CPU0|C2|Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(1),
	datab => \Pros|CPU0|C2|Mux13~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(0),
	datad => \Pros|CPU0|C2|Mux13~5_combout\,
	combout => \Pros|CPU0|C2|Mux13~6_combout\);

\p_in_07[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(2),
	o => \p_in_07[2]~input_o\);

\p_in_11[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(2),
	o => \p_in_11[2]~input_o\);

\p_in_03[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(2),
	o => \p_in_03[2]~input_o\);

\Pros|CPU0|C2|Mux13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_11[2]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_03[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_11[2]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_03[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~7_combout\);

\p_in_15[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(2),
	o => \p_in_15[2]~input_o\);

\Pros|CPU0|C2|Mux13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux13~7_combout\ & ((\p_in_15[2]~input_o\))) # (!\Pros|CPU0|C2|Mux13~7_combout\ & (\p_in_07[2]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_07[2]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux13~7_combout\,
	datad => \p_in_15[2]~input_o\,
	combout => \Pros|CPU0|C2|Mux13~8_combout\);

\Pros|CPU0|C2|Mux13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(1) & ((\Pros|CPU0|C2|Mux13~6_combout\ & ((\Pros|CPU0|C2|Mux13~8_combout\))) # (!\Pros|CPU0|C2|Mux13~6_combout\ & (\Pros|CPU0|C2|Mux13~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- (((\Pros|CPU0|C2|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux13~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(1),
	datac => \Pros|CPU0|C2|Mux13~6_combout\,
	datad => \Pros|CPU0|C2|Mux13~8_combout\,
	combout => \Pros|CPU0|C2|Mux13~9_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\Pros|CPU0|C2|C2|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C2|Mux5~5_combout\ = (\Pros|CPU0|C2|C2|Mux5~0_combout\) # ((\Pros|CPU0|C2|C2|Mux5~4_combout\ & !\Pros|CPU0|C1|ALU_Select\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux5~0_combout\,
	datab => \Pros|CPU0|C2|C2|Mux5~4_combout\,
	datad => \Pros|CPU0|C1|ALU_Select\(4),
	combout => \Pros|CPU0|C2|C2|Mux5~5_combout\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000034",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2~portadataout\))) 
-- # (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux5~5_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux13~10_combout\);

\Pros|CPU0|C2|Mux13~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux13~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux13~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (!\Pros|CPU0|C2|Mux13~10_combout\ & (\Pros|CPU0|C2|Mux13~9_combout\)))) 
-- # (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux13~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux13~10_combout\,
	combout => \Pros|CPU0|C2|Mux13~11_combout\);

\Pros|CPU0|C2|C3|cuenta[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[2]~2_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux5~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux13~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux13~11_combout\,
	datab => \Pros|CPU0|C2|Mux5~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\);

\Pros|CPU0|C2|C1|RegMAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[2]~2_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegMAR\(2));

\p_in_09[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_09(0),
	o => \p_in_09[0]~input_o\);

\p_in_01[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_01(0),
	o => \p_in_01[0]~input_o\);

\Pros|CPU0|C2|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~0_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_09[0]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_01[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_09[0]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_01[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~0_combout\);

\p_in_13[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_13(0),
	o => \p_in_13[0]~input_o\);

\Pros|CPU0|C2|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~1_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux15~0_combout\ & ((\p_in_13[0]~input_o\))) # (!\Pros|CPU0|C2|Mux15~0_combout\ & (\p_in_05[0]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_05[0]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux15~0_combout\,
	datad => \p_in_13[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~1_combout\);

\p_in_10[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_10(0),
	o => \p_in_10[0]~input_o\);

\p_in_06[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_06(0),
	o => \p_in_06[0]~input_o\);

\p_in_02[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_02(0),
	o => \p_in_02[0]~input_o\);

\Pros|CPU0|C2|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~2_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_06[0]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_02[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_06[0]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_02[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~2_combout\);

\p_in_14[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_14(0),
	o => \p_in_14[0]~input_o\);

\Pros|CPU0|C2|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~3_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux15~2_combout\ & ((\p_in_14[0]~input_o\))) # (!\Pros|CPU0|C2|Mux15~2_combout\ & (\p_in_10[0]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_10[0]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux15~2_combout\,
	datad => \p_in_14[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~3_combout\);

\p_in_04[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_04(0),
	o => \p_in_04[0]~input_o\);

\p_in_08[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_08(0),
	o => \p_in_08[0]~input_o\);

\p_in_00[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_00(0),
	o => \p_in_00[0]~input_o\);

\Pros|CPU0|C2|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~4_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & (((\Pros|CPU0|C2|C1|RegMAR\(3))))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|C1|RegMAR\(3) & (\p_in_08[0]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\p_in_00[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(2),
	datab => \p_in_08[0]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(3),
	datad => \p_in_00[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~4_combout\);

\p_in_12[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_12(0),
	o => \p_in_12[0]~input_o\);

\Pros|CPU0|C2|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~5_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(2) & ((\Pros|CPU0|C2|Mux15~4_combout\ & ((\p_in_12[0]~input_o\))) # (!\Pros|CPU0|C2|Mux15~4_combout\ & (\p_in_04[0]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & 
-- (((\Pros|CPU0|C2|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_04[0]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|Mux15~4_combout\,
	datad => \p_in_12[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~5_combout\);

\Pros|CPU0|C2|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~6_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & (((\Pros|CPU0|C2|C1|RegMAR\(1))))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|C1|RegMAR\(1) & (\Pros|CPU0|C2|Mux15~3_combout\)) # (!\Pros|CPU0|C2|C1|RegMAR\(1) & 
-- ((\Pros|CPU0|C2|Mux15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(0),
	datab => \Pros|CPU0|C2|Mux15~3_combout\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \Pros|CPU0|C2|Mux15~5_combout\,
	combout => \Pros|CPU0|C2|Mux15~6_combout\);

\p_in_11[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_11(0),
	o => \p_in_11[0]~input_o\);

\p_in_07[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_07(0),
	o => \p_in_07[0]~input_o\);

\p_in_03[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_03(0),
	o => \p_in_03[0]~input_o\);

\Pros|CPU0|C2|Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~7_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & (((\Pros|CPU0|C2|C1|RegMAR\(2))))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|C1|RegMAR\(2) & (\p_in_07[0]~input_o\)) # (!\Pros|CPU0|C2|C1|RegMAR\(2) & ((\p_in_03[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \p_in_07[0]~input_o\,
	datac => \Pros|CPU0|C2|C1|RegMAR\(2),
	datad => \p_in_03[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~7_combout\);

\p_in_15[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in_15(0),
	o => \p_in_15[0]~input_o\);

\Pros|CPU0|C2|Mux15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~8_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(3) & ((\Pros|CPU0|C2|Mux15~7_combout\ & ((\p_in_15[0]~input_o\))) # (!\Pros|CPU0|C2|Mux15~7_combout\ & (\p_in_11[0]~input_o\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(3) & 
-- (((\Pros|CPU0|C2|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in_11[0]~input_o\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(3),
	datac => \Pros|CPU0|C2|Mux15~7_combout\,
	datad => \p_in_15[0]~input_o\,
	combout => \Pros|CPU0|C2|Mux15~8_combout\);

\Pros|CPU0|C2|Mux15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~9_combout\ = (\Pros|CPU0|C2|C1|RegMAR\(0) & ((\Pros|CPU0|C2|Mux15~6_combout\ & ((\Pros|CPU0|C2|Mux15~8_combout\))) # (!\Pros|CPU0|C2|Mux15~6_combout\ & (\Pros|CPU0|C2|Mux15~1_combout\)))) # (!\Pros|CPU0|C2|C1|RegMAR\(0) & 
-- (((\Pros|CPU0|C2|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux15~1_combout\,
	datab => \Pros|CPU0|C2|C1|RegMAR\(0),
	datac => \Pros|CPU0|C2|Mux15~6_combout\,
	datad => \Pros|CPU0|C2|Mux15~8_combout\,
	combout => \Pros|CPU0|C2|Mux15~9_combout\);

\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_datos_b0539313.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_datos:mem_dato|altsyncram:RAM_rtl_0|altsyncram_euh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 95,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 95,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Pros|CPU0|C1|wr~combout\,
	portbre => VCC,
	clk0 => \DivFrec|QFF~q\,
	clk1 => \DivFrec|QFF~q\,
	ena0 => \Pros|CPU0|C1|wr~combout\,
	ena1 => \Pros|CPU0|C1|ALT_INV_wr~combout\,
	portadatain => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Fibonacci.ram0_mem_programa_f34e33f6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Procesador:Pros|memoria:MEM0|mem_programa:mem_prog|altsyncram:ROM_rtl_0|altsyncram_2v61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \DivFrec|QFF~q\,
	portaaddr => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\Pros|CPU0|C2|Mux15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~10_combout\ = (\Pros|CPU0|C2|Mux12~2_combout\ & (((\Pros|CPU0|C2|Mux12~3_combout\)))) # (!\Pros|CPU0|C2|Mux12~2_combout\ & ((\Pros|CPU0|C2|Mux12~3_combout\ & ((\Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\))) 
-- # (!\Pros|CPU0|C2|Mux12~3_combout\ & (\Pros|CPU0|C2|C2|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C2|Mux7~7_combout\,
	datab => \Pros|MEM0|mem_prog|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \Pros|CPU0|C2|Mux12~2_combout\,
	datad => \Pros|CPU0|C2|Mux12~3_combout\,
	combout => \Pros|CPU0|C2|Mux15~10_combout\);

\Pros|CPU0|C2|Mux15~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux15~11_combout\ = (\Pros|CPU0|C2|Mux12~17_combout\ & ((\Pros|CPU0|C2|Mux15~10_combout\ & ((\Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\Pros|CPU0|C2|Mux15~10_combout\ & (\Pros|CPU0|C2|Mux15~9_combout\)))) 
-- # (!\Pros|CPU0|C2|Mux12~17_combout\ & (((\Pros|CPU0|C2|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux15~9_combout\,
	datab => \Pros|MEM0|mem_dato|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \Pros|CPU0|C2|Mux12~17_combout\,
	datad => \Pros|CPU0|C2|Mux15~10_combout\,
	combout => \Pros|CPU0|C2|Mux15~11_combout\);

\Pros|CPU0|C2|C3|cuenta[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|C3|cuenta[0]~0_combout\ = (\Pros|CPU0|C2|Mux12~4_combout\ & ((\Pros|CPU0|C2|Mux7~1_combout\))) # (!\Pros|CPU0|C2|Mux12~4_combout\ & (\Pros|CPU0|C2|Mux15~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux15~11_combout\,
	datab => \Pros|CPU0|C2|Mux7~1_combout\,
	datad => \Pros|CPU0|C2|Mux12~4_combout\,
	combout => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\);

\Pros|CPU0|C2|C1|RegA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|C3|cuenta[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|CPU0|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|CPU0|C2|C1|RegA\(0));

\Pros|CPU0|C2|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux7~0_combout\ = (!\Pros|CPU0|C1|Bus1_Sel\(1) & ((\Pros|CPU0|C1|Bus1_Sel\(0) & (\Pros|CPU0|C2|C1|RegA\(0))) # (!\Pros|CPU0|C1|Bus1_Sel\(0) & ((\Pros|CPU0|C2|C3|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegA\(0),
	datab => \Pros|CPU0|C2|C3|cuenta\(0),
	datac => \Pros|CPU0|C1|Bus1_Sel\(0),
	datad => \Pros|CPU0|C1|Bus1_Sel\(1),
	combout => \Pros|CPU0|C2|Mux7~0_combout\);

\Pros|CPU0|C2|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|CPU0|C2|Mux7~1_combout\ = (\Pros|CPU0|C2|Mux7~0_combout\) # ((\Pros|CPU0|C1|Bus1_Sel\(1) & \Pros|CPU0|C2|C1|RegB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|Mux7~0_combout\,
	datab => \Pros|CPU0|C1|Bus1_Sel\(1),
	datac => \Pros|CPU0|C2|C1|RegB\(0),
	combout => \Pros|CPU0|C2|Mux7~1_combout\);

\Pros|MEM0|puertos|RAM[0][7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|puertos|RAM[0][7]~0_combout\ = (!\Pros|CPU0|C2|C1|RegMAR\(3) & (!\Pros|CPU0|C2|C1|RegMAR\(2) & (!\Pros|CPU0|C2|C1|RegMAR\(1) & !\Pros|CPU0|C2|C1|RegMAR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(3),
	datab => \Pros|CPU0|C2|C1|RegMAR\(2),
	datac => \Pros|CPU0|C2|C1|RegMAR\(1),
	datad => \Pros|CPU0|C2|C1|RegMAR\(0),
	combout => \Pros|MEM0|puertos|RAM[0][7]~0_combout\);

\Pros|MEM0|puertos|RAM[0][7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|puertos|RAM[0][7]~1_combout\ = (((!\Pros|CPU0|C2|C1|RegMAR\(5)) # (!\Pros|CPU0|C2|C1|RegMAR\(7))) # (!\Pros|CPU0|C2|C1|RegMAR\(6))) # (!\Pros|CPU0|C2|C1|RegMAR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C2|C1|RegMAR\(4),
	datab => \Pros|CPU0|C2|C1|RegMAR\(6),
	datac => \Pros|CPU0|C2|C1|RegMAR\(7),
	datad => \Pros|CPU0|C2|C1|RegMAR\(5),
	combout => \Pros|MEM0|puertos|RAM[0][7]~1_combout\);

\Pros|MEM0|puertos|RAM[0][7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pros|MEM0|puertos|RAM[0][7]~2_combout\ = (\Pros|CPU0|C1|wr~combout\ & ((\Pros|MEM0|puertos|RAM[0][7]~0_combout\) # (\Pros|MEM0|puertos|RAM[0][7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|CPU0|C1|wr~combout\,
	datab => \Pros|MEM0|puertos|RAM[0][7]~0_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][7]~1_combout\,
	combout => \Pros|MEM0|puertos|RAM[0][7]~2_combout\);

\Pros|MEM0|puertos|RAM[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux7~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][0]~q\);

\Pros|MEM0|puertos|RAM[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux6~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][1]~q\);

\Pros|MEM0|puertos|RAM[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux5~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][2]~q\);

\Pros|MEM0|puertos|RAM[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux4~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][3]~q\);

\Coder|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~0_combout\ = (\Pros|MEM0|puertos|RAM[0][1]~q\ & (((\Pros|MEM0|puertos|RAM[0][2]~q\) # (\Pros|MEM0|puertos|RAM[0][3]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][1]~q\ & (\Pros|MEM0|puertos|RAM[0][0]~q\ $ ((\Pros|MEM0|puertos|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux13~0_combout\);

\Pros|MEM0|puertos|RAM[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux2~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][5]~q\);

\Pros|MEM0|puertos|RAM[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux3~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][4]~q\);

\Coder|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~1_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & (\Pros|MEM0|puertos|RAM[0][1]~q\ & (\Pros|MEM0|puertos|RAM[0][2]~q\ & !\Pros|MEM0|puertos|RAM[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux13~1_combout\);

\Coder|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~2_combout\ = (\Pros|MEM0|puertos|RAM[0][5]~q\ & (((!\Coder|Mux13~1_combout\) # (!\Pros|MEM0|puertos|RAM[0][4]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][5]~q\ & ((\Coder|Mux13~0_combout\) # ((\Pros|MEM0|puertos|RAM[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux13~0_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datad => \Coder|Mux13~1_combout\,
	combout => \Coder|Mux13~2_combout\);

\Pros|MEM0|puertos|RAM[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux1~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][6]~q\);

\Coder|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~3_combout\ = (\Pros|MEM0|puertos|RAM[0][3]~q\ & (\Pros|MEM0|puertos|RAM[0][4]~q\ & (!\Pros|MEM0|puertos|RAM[0][1]~q\ & !\Pros|MEM0|puertos|RAM[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][3]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][2]~q\,
	combout => \Coder|Mux13~3_combout\);

\Coder|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~4_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & \Coder|Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Coder|Mux13~3_combout\,
	combout => \Coder|Mux13~4_combout\);

\Pros|MEM0|puertos|RAM[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFrec|QFF~q\,
	d => \Pros|CPU0|C2|Mux0~1_combout\,
	clrn => \RST~input_o\,
	ena => \Pros|MEM0|puertos|RAM[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pros|MEM0|puertos|RAM[0][7]~q\);

\Coder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux0~0_combout\ = (!\Pros|MEM0|puertos|RAM[0][7]~q\ & (((\Coder|Mux13~4_combout\ & !\Pros|MEM0|puertos|RAM[0][5]~q\)) # (!\Pros|MEM0|puertos|RAM[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux13~4_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][7]~q\,
	combout => \Coder|Mux0~0_combout\);

\Coder|Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~5_combout\ = ((\Coder|Mux13~2_combout\ & !\Pros|MEM0|puertos|RAM[0][6]~q\)) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux13~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux13~5_combout\);

\Coder|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~0_combout\ = (\Pros|MEM0|puertos|RAM[0][3]~q\ & ((\Pros|MEM0|puertos|RAM[0][1]~q\) # (\Pros|MEM0|puertos|RAM[0][0]~q\ $ (\Pros|MEM0|puertos|RAM[0][2]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][3]~q\ & (((\Pros|MEM0|puertos|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux12~0_combout\);

\Coder|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~1_combout\ = (\Coder|Mux12~0_combout\ & (!\Pros|MEM0|puertos|RAM[0][5]~q\ & !\Pros|MEM0|puertos|RAM[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux12~0_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux12~1_combout\);

\Coder|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~2_combout\ = (\Pros|MEM0|puertos|RAM[0][1]~q\ & (!\Pros|MEM0|puertos|RAM[0][0]~q\ & (!\Pros|MEM0|puertos|RAM[0][2]~q\ & !\Pros|MEM0|puertos|RAM[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux12~2_combout\);

\Coder|Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux13~6_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & (\Pros|MEM0|puertos|RAM[0][2]~q\ & !\Pros|MEM0|puertos|RAM[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux13~6_combout\);

\Coder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux2~0_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & ((\Pros|MEM0|puertos|RAM[0][1]~q\) # (!\Coder|Mux13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datad => \Coder|Mux13~6_combout\,
	combout => \Coder|Mux2~0_combout\);

\Coder|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~3_combout\ = (!\Coder|Mux2~0_combout\ & (((\Coder|Mux12~2_combout\ & !\Pros|MEM0|puertos|RAM[0][4]~q\)) # (!\Pros|MEM0|puertos|RAM[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux12~2_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Coder|Mux2~0_combout\,
	combout => \Coder|Mux12~3_combout\);

\Coder|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~4_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux12~1_combout\) # (!\Coder|Mux12~3_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux12~1_combout\,
	datab => \Coder|Mux12~3_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux12~4_combout\);

\Coder|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux11~0_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][2]~q\ & (\Pros|MEM0|puertos|RAM[0][1]~q\)) # (!\Pros|MEM0|puertos|RAM[0][2]~q\ & ((\Pros|MEM0|puertos|RAM[0][3]~q\))))) # (!\Pros|MEM0|puertos|RAM[0][0]~q\ & 
-- ((\Pros|MEM0|puertos|RAM[0][1]~q\) # ((\Pros|MEM0|puertos|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux11~0_combout\);

\Coder|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux11~1_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & (((\Pros|MEM0|puertos|RAM[0][5]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][4]~q\ & ((\Pros|MEM0|puertos|RAM[0][5]~q\ & (!\Coder|Mux12~2_combout\)) # (!\Pros|MEM0|puertos|RAM[0][5]~q\ & 
-- ((\Coder|Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datab => \Coder|Mux12~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Coder|Mux11~0_combout\,
	combout => \Coder|Mux11~1_combout\);

\Coder|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux11~2_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & ((\Pros|MEM0|puertos|RAM[0][1]~q\ $ (\Coder|Mux11~1_combout\)) # (!\Coder|Mux13~6_combout\))) # (!\Pros|MEM0|puertos|RAM[0][4]~q\ & (((\Coder|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux13~6_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Coder|Mux11~1_combout\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux11~2_combout\);

\Coder|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux11~3_combout\ = ((\Coder|Mux11~2_combout\ & !\Pros|MEM0|puertos|RAM[0][6]~q\)) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux11~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux11~3_combout\);

\Coder|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux9~0_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\) # ((\Pros|MEM0|puertos|RAM[0][2]~q\) # ((\Pros|MEM0|puertos|RAM[0][1]~q\ & \Pros|MEM0|puertos|RAM[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux9~0_combout\);

\Coder|Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~5_combout\ = (!\Pros|MEM0|puertos|RAM[0][5]~q\ & !\Pros|MEM0|puertos|RAM[0][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux12~5_combout\);

\Coder|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux9~1_combout\ = (\Pros|MEM0|puertos|RAM[0][6]~q\) # ((\Pros|MEM0|puertos|RAM[0][7]~q\) # ((\Coder|Mux9~0_combout\) # (!\Coder|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][7]~q\,
	datac => \Coder|Mux9~0_combout\,
	datad => \Coder|Mux12~5_combout\,
	combout => \Coder|Mux9~1_combout\);

\Coder|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~0_combout\ = (\Pros|MEM0|puertos|RAM[0][5]~q\) # ((\Pros|MEM0|puertos|RAM[0][0]~q\) # ((\Pros|MEM0|puertos|RAM[0][1]~q\) # (\Pros|MEM0|puertos|RAM[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][2]~q\,
	combout => \Coder|Mux8~0_combout\);

\Coder|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~1_combout\ = (\Pros|MEM0|puertos|RAM[0][3]~q\ & (\Coder|Mux8~0_combout\ & !\Pros|MEM0|puertos|RAM[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][3]~q\,
	datab => \Coder|Mux8~0_combout\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux8~1_combout\);

\Coder|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~2_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][1]~q\) # ((\Pros|MEM0|puertos|RAM[0][5]~q\) # (!\Pros|MEM0|puertos|RAM[0][2]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][2]~q\) # 
-- (\Pros|MEM0|puertos|RAM[0][1]~q\ $ (\Pros|MEM0|puertos|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][5]~q\,
	combout => \Coder|Mux8~2_combout\);

\Coder|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~3_combout\ = (\Coder|Mux8~2_combout\ & (!\Pros|MEM0|puertos|RAM[0][3]~q\ & !\Pros|MEM0|puertos|RAM[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux8~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][3]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux8~3_combout\);

\Coder|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~4_combout\ = (\Coder|Mux8~3_combout\) # ((\Pros|MEM0|puertos|RAM[0][4]~q\ & ((!\Coder|Mux13~1_combout\) # (!\Pros|MEM0|puertos|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux8~3_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Coder|Mux13~1_combout\,
	combout => \Coder|Mux8~4_combout\);

\Coder|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux8~5_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux8~1_combout\) # (\Coder|Mux8~4_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux8~1_combout\,
	datab => \Coder|Mux8~4_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux8~5_combout\);

\Coder|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux7~0_combout\ = (\Pros|MEM0|puertos|RAM[0][1]~q\ & (((!\Pros|MEM0|puertos|RAM[0][2]~q\ & !\Pros|MEM0|puertos|RAM[0][3]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][1]~q\ & ((\Pros|MEM0|puertos|RAM[0][0]~q\ & (\Pros|MEM0|puertos|RAM[0][2]~q\)) # 
-- (!\Pros|MEM0|puertos|RAM[0][0]~q\ & (!\Pros|MEM0|puertos|RAM[0][2]~q\ & \Pros|MEM0|puertos|RAM[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux7~0_combout\);

\Coder|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux7~1_combout\ = (!\Pros|MEM0|puertos|RAM[0][5]~q\ & ((\Pros|MEM0|puertos|RAM[0][4]~q\) # (!\Coder|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datac => \Coder|Mux7~0_combout\,
	datad => \Pros|MEM0|puertos|RAM[0][5]~q\,
	combout => \Coder|Mux7~1_combout\);

\Coder|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux7~2_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & (\Coder|Mux13~1_combout\)) # (!\Pros|MEM0|puertos|RAM[0][4]~q\ & (((\Coder|Mux12~2_combout\) # (!\Pros|MEM0|puertos|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux13~1_combout\,
	datab => \Coder|Mux12~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux7~2_combout\);

\Coder|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux7~3_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux7~1_combout\) # (!\Coder|Mux7~2_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux7~1_combout\,
	datab => \Coder|Mux7~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux7~3_combout\);

\Coder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux6~0_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][5]~q\) # ((\Pros|MEM0|puertos|RAM[0][1]~q\ & \Pros|MEM0|puertos|RAM[0][2]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][2]~q\) # 
-- ((!\Pros|MEM0|puertos|RAM[0][1]~q\ & \Pros|MEM0|puertos|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][5]~q\,
	combout => \Coder|Mux6~0_combout\);

\Coder|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux6~1_combout\ = (\Pros|MEM0|puertos|RAM[0][0]~q\ & (\Pros|MEM0|puertos|RAM[0][2]~q\ & (\Pros|MEM0|puertos|RAM[0][1]~q\ $ (!\Pros|MEM0|puertos|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][5]~q\,
	combout => \Coder|Mux6~1_combout\);

\Coder|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux6~2_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & ((\Pros|MEM0|puertos|RAM[0][3]~q\) # ((!\Coder|Mux6~1_combout\)))) # (!\Pros|MEM0|puertos|RAM[0][4]~q\ & (!\Pros|MEM0|puertos|RAM[0][3]~q\ & (\Coder|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][3]~q\,
	datac => \Coder|Mux6~0_combout\,
	datad => \Coder|Mux6~1_combout\,
	combout => \Coder|Mux6~2_combout\);

\Coder|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux6~3_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux8~1_combout\) # (\Coder|Mux6~2_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux8~1_combout\,
	datab => \Coder|Mux6~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux6~3_combout\);

\Coder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux5~0_combout\ = (\Pros|MEM0|puertos|RAM[0][2]~q\ & (((\Pros|MEM0|puertos|RAM[0][1]~q\)) # (!\Pros|MEM0|puertos|RAM[0][0]~q\))) # (!\Pros|MEM0|puertos|RAM[0][2]~q\ & (\Pros|MEM0|puertos|RAM[0][3]~q\ & ((\Pros|MEM0|puertos|RAM[0][0]~q\) # 
-- (\Pros|MEM0|puertos|RAM[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux5~0_combout\);

\Coder|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux5~1_combout\ = (\Coder|Mux5~0_combout\ & (!\Pros|MEM0|puertos|RAM[0][5]~q\ & !\Pros|MEM0|puertos|RAM[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux5~0_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux5~1_combout\);

\Coder|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux5~2_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux5~1_combout\) # (!\Coder|Mux12~3_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux5~1_combout\,
	datab => \Coder|Mux12~3_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux5~2_combout\);

\Coder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux4~0_combout\ = (!\Pros|MEM0|puertos|RAM[0][5]~q\ & ((\Pros|MEM0|puertos|RAM[0][4]~q\) # (\Coder|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datab => \Coder|Mux5~0_combout\,
	datad => \Pros|MEM0|puertos|RAM[0][5]~q\,
	combout => \Coder|Mux4~0_combout\);

\Coder|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux4~1_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Coder|Mux4~0_combout\) # (!\Coder|Mux7~2_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux4~0_combout\,
	datab => \Coder|Mux7~2_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux4~1_combout\);

\Coder|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux2~1_combout\ = (\Pros|MEM0|puertos|RAM[0][1]~q\ & (((\Pros|MEM0|puertos|RAM[0][2]~q\) # (\Pros|MEM0|puertos|RAM[0][3]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][1]~q\ & ((\Pros|MEM0|puertos|RAM[0][0]~q\ & ((\Pros|MEM0|puertos|RAM[0][3]~q\))) # 
-- (!\Pros|MEM0|puertos|RAM[0][0]~q\ & (\Pros|MEM0|puertos|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][2]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][3]~q\,
	combout => \Coder|Mux2~1_combout\);

\Coder|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux2~2_combout\ = (\Pros|MEM0|puertos|RAM[0][5]~q\) # ((\Pros|MEM0|puertos|RAM[0][7]~q\) # ((\Coder|Mux2~1_combout\ & !\Pros|MEM0|puertos|RAM[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datab => \Pros|MEM0|puertos|RAM[0][7]~q\,
	datac => \Coder|Mux2~1_combout\,
	datad => \Pros|MEM0|puertos|RAM[0][4]~q\,
	combout => \Coder|Mux2~2_combout\);

\Coder|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux2~3_combout\ = (\Coder|Mux2~2_combout\) # ((\Pros|MEM0|puertos|RAM[0][6]~q\ & ((!\Coder|Mux13~4_combout\))) # (!\Pros|MEM0|puertos|RAM[0][6]~q\ & (\Coder|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux2~2_combout\,
	datab => \Coder|Mux2~0_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux13~4_combout\,
	combout => \Coder|Mux2~3_combout\);

\Coder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux1~0_combout\ = (\Pros|MEM0|puertos|RAM[0][5]~q\ & (((!\Coder|Mux13~1_combout\) # (!\Pros|MEM0|puertos|RAM[0][4]~q\)))) # (!\Pros|MEM0|puertos|RAM[0][5]~q\ & ((\Coder|Mux2~1_combout\) # ((\Pros|MEM0|puertos|RAM[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux2~1_combout\,
	datab => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datad => \Coder|Mux13~1_combout\,
	combout => \Coder|Mux1~0_combout\);

\Coder|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux1~1_combout\ = ((\Coder|Mux1~0_combout\ & !\Pros|MEM0|puertos|RAM[0][6]~q\)) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coder|Mux1~0_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux1~1_combout\);

\Coder|Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux12~6_combout\ = (\Pros|MEM0|puertos|RAM[0][1]~q\ & (!\Pros|MEM0|puertos|RAM[0][0]~q\ & !\Pros|MEM0|puertos|RAM[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][1]~q\,
	datac => \Pros|MEM0|puertos|RAM[0][0]~q\,
	datad => \Pros|MEM0|puertos|RAM[0][2]~q\,
	combout => \Coder|Mux12~6_combout\);

\Coder|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux0~1_combout\ = (\Pros|MEM0|puertos|RAM[0][4]~q\ & (((!\Coder|Mux6~1_combout\)))) # (!\Pros|MEM0|puertos|RAM[0][4]~q\ & (((!\Coder|Mux12~6_combout\)) # (!\Pros|MEM0|puertos|RAM[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][5]~q\,
	datab => \Coder|Mux12~6_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][4]~q\,
	datad => \Coder|Mux6~1_combout\,
	combout => \Coder|Mux0~1_combout\);

\Coder|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Coder|Mux0~2_combout\ = ((!\Pros|MEM0|puertos|RAM[0][6]~q\ & ((\Pros|MEM0|puertos|RAM[0][3]~q\) # (\Coder|Mux0~1_combout\)))) # (!\Coder|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pros|MEM0|puertos|RAM[0][3]~q\,
	datab => \Coder|Mux0~1_combout\,
	datac => \Pros|MEM0|puertos|RAM[0][6]~q\,
	datad => \Coder|Mux0~0_combout\,
	combout => \Coder|Mux0~2_combout\);

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(4) <= \OUTPUT[4]~output_o\;

ww_OUTPUT(5) <= \OUTPUT[5]~output_o\;

ww_OUTPUT(6) <= \OUTPUT[6]~output_o\;

ww_OUTPUT(7) <= \OUTPUT[7]~output_o\;

ww_OUTPUT(8) <= \OUTPUT[8]~output_o\;

ww_OUTPUT(9) <= \OUTPUT[9]~output_o\;

ww_OUTPUT(10) <= \OUTPUT[10]~output_o\;

ww_OUTPUT(11) <= \OUTPUT[11]~output_o\;

ww_OUTPUT(12) <= \OUTPUT[12]~output_o\;

ww_OUTPUT(13) <= \OUTPUT[13]~output_o\;
END structure;


