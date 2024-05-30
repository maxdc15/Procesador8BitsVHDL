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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/29/2024 09:29:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Procesador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Procesador_vhd_vec_tst IS
END Procesador_vhd_vec_tst;
ARCHITECTURE Procesador_arch OF Procesador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL p_in_00 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_01 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_02 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_03 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_04 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_05 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_06 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_07 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_08 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_09 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_in_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_00 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_01 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_02 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_03 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_04 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_05 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_06 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_07 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_08 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_09 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_out_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT Procesador
	PORT (
	CLK : IN STD_LOGIC;
	p_in_00 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_01 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_02 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_03 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_04 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_05 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_06 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_07 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_08 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_09 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_10 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_12 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_13 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_14 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_in_15 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_00 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_01 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_02 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_03 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_04 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_05 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_06 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_07 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_08 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_09 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_10 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_11 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_12 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_13 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_14 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	p_out_15 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Procesador
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	p_in_00 => p_in_00,
	p_in_01 => p_in_01,
	p_in_02 => p_in_02,
	p_in_03 => p_in_03,
	p_in_04 => p_in_04,
	p_in_05 => p_in_05,
	p_in_06 => p_in_06,
	p_in_07 => p_in_07,
	p_in_08 => p_in_08,
	p_in_09 => p_in_09,
	p_in_10 => p_in_10,
	p_in_11 => p_in_11,
	p_in_12 => p_in_12,
	p_in_13 => p_in_13,
	p_in_14 => p_in_14,
	p_in_15 => p_in_15,
	p_out_00 => p_out_00,
	p_out_01 => p_out_01,
	p_out_02 => p_out_02,
	p_out_03 => p_out_03,
	p_out_04 => p_out_04,
	p_out_05 => p_out_05,
	p_out_06 => p_out_06,
	p_out_07 => p_out_07,
	p_out_08 => p_out_08,
	p_out_09 => p_out_09,
	p_out_10 => p_out_10,
	p_out_11 => p_out_11,
	p_out_12 => p_out_12,
	p_out_13 => p_out_13,
	p_out_14 => p_out_14,
	p_out_15 => p_out_15,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 250 ps;
	CLK <= '1';
	WAIT FOR 250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
-- p_in_00[7]
t_prcs_p_in_00_7: PROCESS
BEGIN
	p_in_00(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_7;
-- p_in_00[6]
t_prcs_p_in_00_6: PROCESS
BEGIN
	p_in_00(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_6;
-- p_in_00[5]
t_prcs_p_in_00_5: PROCESS
BEGIN
	p_in_00(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_5;
-- p_in_00[4]
t_prcs_p_in_00_4: PROCESS
BEGIN
	p_in_00(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_4;
-- p_in_00[3]
t_prcs_p_in_00_3: PROCESS
BEGIN
	p_in_00(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_3;
-- p_in_00[2]
t_prcs_p_in_00_2: PROCESS
BEGIN
	p_in_00(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_2;
-- p_in_00[1]
t_prcs_p_in_00_1: PROCESS
BEGIN
	p_in_00(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_1;
-- p_in_00[0]
t_prcs_p_in_00_0: PROCESS
BEGIN
	p_in_00(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_00_0;
-- p_in_01[7]
t_prcs_p_in_01_7: PROCESS
BEGIN
	p_in_01(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_7;
-- p_in_01[6]
t_prcs_p_in_01_6: PROCESS
BEGIN
	p_in_01(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_6;
-- p_in_01[5]
t_prcs_p_in_01_5: PROCESS
BEGIN
	p_in_01(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_5;
-- p_in_01[4]
t_prcs_p_in_01_4: PROCESS
BEGIN
	p_in_01(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_4;
-- p_in_01[3]
t_prcs_p_in_01_3: PROCESS
BEGIN
	p_in_01(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_3;
-- p_in_01[2]
t_prcs_p_in_01_2: PROCESS
BEGIN
	p_in_01(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_2;
-- p_in_01[1]
t_prcs_p_in_01_1: PROCESS
BEGIN
	p_in_01(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_1;
-- p_in_01[0]
t_prcs_p_in_01_0: PROCESS
BEGIN
	p_in_01(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_01_0;
-- p_in_02[7]
t_prcs_p_in_02_7: PROCESS
BEGIN
	p_in_02(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_7;
-- p_in_02[6]
t_prcs_p_in_02_6: PROCESS
BEGIN
	p_in_02(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_6;
-- p_in_02[5]
t_prcs_p_in_02_5: PROCESS
BEGIN
	p_in_02(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_5;
-- p_in_02[4]
t_prcs_p_in_02_4: PROCESS
BEGIN
	p_in_02(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_4;
-- p_in_02[3]
t_prcs_p_in_02_3: PROCESS
BEGIN
	p_in_02(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_3;
-- p_in_02[2]
t_prcs_p_in_02_2: PROCESS
BEGIN
	p_in_02(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_2;
-- p_in_02[1]
t_prcs_p_in_02_1: PROCESS
BEGIN
	p_in_02(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_1;
-- p_in_02[0]
t_prcs_p_in_02_0: PROCESS
BEGIN
	p_in_02(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_02_0;
-- p_in_03[7]
t_prcs_p_in_03_7: PROCESS
BEGIN
	p_in_03(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_7;
-- p_in_03[6]
t_prcs_p_in_03_6: PROCESS
BEGIN
	p_in_03(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_6;
-- p_in_03[5]
t_prcs_p_in_03_5: PROCESS
BEGIN
	p_in_03(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_5;
-- p_in_03[4]
t_prcs_p_in_03_4: PROCESS
BEGIN
	p_in_03(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_4;
-- p_in_03[3]
t_prcs_p_in_03_3: PROCESS
BEGIN
	p_in_03(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_3;
-- p_in_03[2]
t_prcs_p_in_03_2: PROCESS
BEGIN
	p_in_03(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_2;
-- p_in_03[1]
t_prcs_p_in_03_1: PROCESS
BEGIN
	p_in_03(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_1;
-- p_in_03[0]
t_prcs_p_in_03_0: PROCESS
BEGIN
	p_in_03(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_03_0;
-- p_in_04[7]
t_prcs_p_in_04_7: PROCESS
BEGIN
	p_in_04(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_7;
-- p_in_04[6]
t_prcs_p_in_04_6: PROCESS
BEGIN
	p_in_04(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_6;
-- p_in_04[5]
t_prcs_p_in_04_5: PROCESS
BEGIN
	p_in_04(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_5;
-- p_in_04[4]
t_prcs_p_in_04_4: PROCESS
BEGIN
	p_in_04(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_4;
-- p_in_04[3]
t_prcs_p_in_04_3: PROCESS
BEGIN
	p_in_04(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_3;
-- p_in_04[2]
t_prcs_p_in_04_2: PROCESS
BEGIN
	p_in_04(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_2;
-- p_in_04[1]
t_prcs_p_in_04_1: PROCESS
BEGIN
	p_in_04(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_1;
-- p_in_04[0]
t_prcs_p_in_04_0: PROCESS
BEGIN
	p_in_04(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_04_0;
-- p_in_05[7]
t_prcs_p_in_05_7: PROCESS
BEGIN
	p_in_05(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_7;
-- p_in_05[6]
t_prcs_p_in_05_6: PROCESS
BEGIN
	p_in_05(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_6;
-- p_in_05[5]
t_prcs_p_in_05_5: PROCESS
BEGIN
	p_in_05(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_5;
-- p_in_05[4]
t_prcs_p_in_05_4: PROCESS
BEGIN
	p_in_05(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_4;
-- p_in_05[3]
t_prcs_p_in_05_3: PROCESS
BEGIN
	p_in_05(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_3;
-- p_in_05[2]
t_prcs_p_in_05_2: PROCESS
BEGIN
	p_in_05(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_2;
-- p_in_05[1]
t_prcs_p_in_05_1: PROCESS
BEGIN
	p_in_05(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_1;
-- p_in_05[0]
t_prcs_p_in_05_0: PROCESS
BEGIN
	p_in_05(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_05_0;
-- p_in_06[7]
t_prcs_p_in_06_7: PROCESS
BEGIN
	p_in_06(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_7;
-- p_in_06[6]
t_prcs_p_in_06_6: PROCESS
BEGIN
	p_in_06(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_6;
-- p_in_06[5]
t_prcs_p_in_06_5: PROCESS
BEGIN
	p_in_06(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_5;
-- p_in_06[4]
t_prcs_p_in_06_4: PROCESS
BEGIN
	p_in_06(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_4;
-- p_in_06[3]
t_prcs_p_in_06_3: PROCESS
BEGIN
	p_in_06(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_3;
-- p_in_06[2]
t_prcs_p_in_06_2: PROCESS
BEGIN
	p_in_06(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_2;
-- p_in_06[1]
t_prcs_p_in_06_1: PROCESS
BEGIN
	p_in_06(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_1;
-- p_in_06[0]
t_prcs_p_in_06_0: PROCESS
BEGIN
	p_in_06(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_06_0;
-- p_in_07[7]
t_prcs_p_in_07_7: PROCESS
BEGIN
	p_in_07(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_7;
-- p_in_07[6]
t_prcs_p_in_07_6: PROCESS
BEGIN
	p_in_07(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_6;
-- p_in_07[5]
t_prcs_p_in_07_5: PROCESS
BEGIN
	p_in_07(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_5;
-- p_in_07[4]
t_prcs_p_in_07_4: PROCESS
BEGIN
	p_in_07(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_4;
-- p_in_07[3]
t_prcs_p_in_07_3: PROCESS
BEGIN
	p_in_07(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_3;
-- p_in_07[2]
t_prcs_p_in_07_2: PROCESS
BEGIN
	p_in_07(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_2;
-- p_in_07[1]
t_prcs_p_in_07_1: PROCESS
BEGIN
	p_in_07(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_1;
-- p_in_07[0]
t_prcs_p_in_07_0: PROCESS
BEGIN
	p_in_07(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_07_0;
-- p_in_08[7]
t_prcs_p_in_08_7: PROCESS
BEGIN
	p_in_08(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_7;
-- p_in_08[6]
t_prcs_p_in_08_6: PROCESS
BEGIN
	p_in_08(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_6;
-- p_in_08[5]
t_prcs_p_in_08_5: PROCESS
BEGIN
	p_in_08(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_5;
-- p_in_08[4]
t_prcs_p_in_08_4: PROCESS
BEGIN
	p_in_08(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_4;
-- p_in_08[3]
t_prcs_p_in_08_3: PROCESS
BEGIN
	p_in_08(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_3;
-- p_in_08[2]
t_prcs_p_in_08_2: PROCESS
BEGIN
	p_in_08(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_2;
-- p_in_08[1]
t_prcs_p_in_08_1: PROCESS
BEGIN
	p_in_08(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_1;
-- p_in_08[0]
t_prcs_p_in_08_0: PROCESS
BEGIN
	p_in_08(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_08_0;
-- p_in_09[7]
t_prcs_p_in_09_7: PROCESS
BEGIN
	p_in_09(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_7;
-- p_in_09[6]
t_prcs_p_in_09_6: PROCESS
BEGIN
	p_in_09(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_6;
-- p_in_09[5]
t_prcs_p_in_09_5: PROCESS
BEGIN
	p_in_09(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_5;
-- p_in_09[4]
t_prcs_p_in_09_4: PROCESS
BEGIN
	p_in_09(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_4;
-- p_in_09[3]
t_prcs_p_in_09_3: PROCESS
BEGIN
	p_in_09(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_3;
-- p_in_09[2]
t_prcs_p_in_09_2: PROCESS
BEGIN
	p_in_09(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_2;
-- p_in_09[1]
t_prcs_p_in_09_1: PROCESS
BEGIN
	p_in_09(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_1;
-- p_in_09[0]
t_prcs_p_in_09_0: PROCESS
BEGIN
	p_in_09(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_09_0;
-- p_in_10[7]
t_prcs_p_in_10_7: PROCESS
BEGIN
	p_in_10(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_7;
-- p_in_10[6]
t_prcs_p_in_10_6: PROCESS
BEGIN
	p_in_10(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_6;
-- p_in_10[5]
t_prcs_p_in_10_5: PROCESS
BEGIN
	p_in_10(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_5;
-- p_in_10[4]
t_prcs_p_in_10_4: PROCESS
BEGIN
	p_in_10(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_4;
-- p_in_10[3]
t_prcs_p_in_10_3: PROCESS
BEGIN
	p_in_10(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_3;
-- p_in_10[2]
t_prcs_p_in_10_2: PROCESS
BEGIN
	p_in_10(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_2;
-- p_in_10[1]
t_prcs_p_in_10_1: PROCESS
BEGIN
	p_in_10(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_1;
-- p_in_10[0]
t_prcs_p_in_10_0: PROCESS
BEGIN
	p_in_10(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_10_0;
-- p_in_11[7]
t_prcs_p_in_11_7: PROCESS
BEGIN
	p_in_11(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_7;
-- p_in_11[6]
t_prcs_p_in_11_6: PROCESS
BEGIN
	p_in_11(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_6;
-- p_in_11[5]
t_prcs_p_in_11_5: PROCESS
BEGIN
	p_in_11(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_5;
-- p_in_11[4]
t_prcs_p_in_11_4: PROCESS
BEGIN
	p_in_11(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_4;
-- p_in_11[3]
t_prcs_p_in_11_3: PROCESS
BEGIN
	p_in_11(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_3;
-- p_in_11[2]
t_prcs_p_in_11_2: PROCESS
BEGIN
	p_in_11(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_2;
-- p_in_11[1]
t_prcs_p_in_11_1: PROCESS
BEGIN
	p_in_11(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_1;
-- p_in_11[0]
t_prcs_p_in_11_0: PROCESS
BEGIN
	p_in_11(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_11_0;
-- p_in_12[7]
t_prcs_p_in_12_7: PROCESS
BEGIN
	p_in_12(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_7;
-- p_in_12[6]
t_prcs_p_in_12_6: PROCESS
BEGIN
	p_in_12(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_6;
-- p_in_12[5]
t_prcs_p_in_12_5: PROCESS
BEGIN
	p_in_12(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_5;
-- p_in_12[4]
t_prcs_p_in_12_4: PROCESS
BEGIN
	p_in_12(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_4;
-- p_in_12[3]
t_prcs_p_in_12_3: PROCESS
BEGIN
	p_in_12(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_3;
-- p_in_12[2]
t_prcs_p_in_12_2: PROCESS
BEGIN
	p_in_12(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_2;
-- p_in_12[1]
t_prcs_p_in_12_1: PROCESS
BEGIN
	p_in_12(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_1;
-- p_in_12[0]
t_prcs_p_in_12_0: PROCESS
BEGIN
	p_in_12(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_12_0;
-- p_in_13[7]
t_prcs_p_in_13_7: PROCESS
BEGIN
	p_in_13(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_7;
-- p_in_13[6]
t_prcs_p_in_13_6: PROCESS
BEGIN
	p_in_13(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_6;
-- p_in_13[5]
t_prcs_p_in_13_5: PROCESS
BEGIN
	p_in_13(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_5;
-- p_in_13[4]
t_prcs_p_in_13_4: PROCESS
BEGIN
	p_in_13(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_4;
-- p_in_13[3]
t_prcs_p_in_13_3: PROCESS
BEGIN
	p_in_13(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_3;
-- p_in_13[2]
t_prcs_p_in_13_2: PROCESS
BEGIN
	p_in_13(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_2;
-- p_in_13[1]
t_prcs_p_in_13_1: PROCESS
BEGIN
	p_in_13(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_1;
-- p_in_13[0]
t_prcs_p_in_13_0: PROCESS
BEGIN
	p_in_13(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_13_0;
-- p_in_14[7]
t_prcs_p_in_14_7: PROCESS
BEGIN
	p_in_14(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_7;
-- p_in_14[6]
t_prcs_p_in_14_6: PROCESS
BEGIN
	p_in_14(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_6;
-- p_in_14[5]
t_prcs_p_in_14_5: PROCESS
BEGIN
	p_in_14(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_5;
-- p_in_14[4]
t_prcs_p_in_14_4: PROCESS
BEGIN
	p_in_14(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_4;
-- p_in_14[3]
t_prcs_p_in_14_3: PROCESS
BEGIN
	p_in_14(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_3;
-- p_in_14[2]
t_prcs_p_in_14_2: PROCESS
BEGIN
	p_in_14(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_2;
-- p_in_14[1]
t_prcs_p_in_14_1: PROCESS
BEGIN
	p_in_14(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_1;
-- p_in_14[0]
t_prcs_p_in_14_0: PROCESS
BEGIN
	p_in_14(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_14_0;
-- p_in_15[7]
t_prcs_p_in_15_7: PROCESS
BEGIN
	p_in_15(7) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_7;
-- p_in_15[6]
t_prcs_p_in_15_6: PROCESS
BEGIN
	p_in_15(6) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_6;
-- p_in_15[5]
t_prcs_p_in_15_5: PROCESS
BEGIN
	p_in_15(5) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_5;
-- p_in_15[4]
t_prcs_p_in_15_4: PROCESS
BEGIN
	p_in_15(4) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_4;
-- p_in_15[3]
t_prcs_p_in_15_3: PROCESS
BEGIN
	p_in_15(3) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_3;
-- p_in_15[2]
t_prcs_p_in_15_2: PROCESS
BEGIN
	p_in_15(2) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_2;
-- p_in_15[1]
t_prcs_p_in_15_1: PROCESS
BEGIN
	p_in_15(1) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_1;
-- p_in_15[0]
t_prcs_p_in_15_0: PROCESS
BEGIN
	p_in_15(0) <= '0';
WAIT;
END PROCESS t_prcs_p_in_15_0;
END Procesador_arch;
