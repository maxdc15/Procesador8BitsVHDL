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

-- DATE "05/27/2024 10:15:03"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU8BITS IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic_vector(7 DOWNTO 0);
	Flags : OUT std_logic_vector(3 DOWNTO 0);
	Res_ALU : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU8BITS;

ARCHITECTURE structure OF ALU8BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Flags : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Res_ALU : std_logic_vector(7 DOWNTO 0);
SIGNAL \Flags[0]~output_o\ : std_logic;
SIGNAL \Flags[1]~output_o\ : std_logic;
SIGNAL \Flags[2]~output_o\ : std_logic;
SIGNAL \Flags[3]~output_o\ : std_logic;
SIGNAL \Res_ALU[0]~output_o\ : std_logic;
SIGNAL \Res_ALU[1]~output_o\ : std_logic;
SIGNAL \Res_ALU[2]~output_o\ : std_logic;
SIGNAL \Res_ALU[3]~output_o\ : std_logic;
SIGNAL \Res_ALU[4]~output_o\ : std_logic;
SIGNAL \Res_ALU[5]~output_o\ : std_logic;
SIGNAL \Res_ALU[6]~output_o\ : std_logic;
SIGNAL \Res_ALU[7]~output_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \I0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA4|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA5|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA6|Cout~0_combout\ : std_logic;
SIGNAL \I0|FA7|Cout~0_combout\ : std_logic;
SIGNAL \Sel[2]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \Sel[6]~input_o\ : std_logic;
SIGNAL \Sel[5]~input_o\ : std_logic;
SIGNAL \Sel[7]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Sel[3]~input_o\ : std_logic;
SIGNAL \Sel[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \I3|FA3|HA1|Cout~combout\ : std_logic;
SIGNAL \I3|FA6|HA1|Cout~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Flags[0]$latch~0_combout\ : std_logic;
SIGNAL \I2|FA3|HA1|Cout~combout\ : std_logic;
SIGNAL \I2|FA6|HA1|Cout~0_combout\ : std_logic;
SIGNAL \Flags[0]$latch~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Flags[0]$latch~2_combout\ : std_logic;
SIGNAL \I4|FS3|HS1|Bout~combout\ : std_logic;
SIGNAL \I4|FS6|HS1|Bout~combout\ : std_logic;
SIGNAL \Flags[1]~0_combout\ : std_logic;
SIGNAL \I5|FS3|HS1|Bout~combout\ : std_logic;
SIGNAL \I5|FS6|HS1|Bout~combout\ : std_logic;
SIGNAL \Flags[1]~1_combout\ : std_logic;
SIGNAL \Flags[1]~2_combout\ : std_logic;
SIGNAL \Flags[1]~3_combout\ : std_logic;
SIGNAL \Flags[1]~4_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \I1|FS5|HS0|Bout~combout\ : std_logic;
SIGNAL \I1|FS1|Bout~combout\ : std_logic;
SIGNAL \I1|FS2|Bout~combout\ : std_logic;
SIGNAL \I1|FS3|Bout~combout\ : std_logic;
SIGNAL \I1|FS5|HS0|Diff~0_combout\ : std_logic;
SIGNAL \I1|FS5|HS1|Bout~combout\ : std_logic;
SIGNAL \I1|FS6|Bout~combout\ : std_logic;
SIGNAL \I1|FS7|Bout~combout\ : std_logic;
SIGNAL \Flags[1]~5_combout\ : std_logic;
SIGNAL \Flags[1]~6_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Flags[3]~7_combout\ : std_logic;
SIGNAL \Flags[1]$latch~combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \I1|FS7|HS1|Diff~0_combout\ : std_logic;
SIGNAL \I1|FS7|HS0|Diff~0_combout\ : std_logic;
SIGNAL \I0|FA7|HA1|Sum~combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \I5|FS6|HS1|Diff~combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \I2|FA6|HA1|Sum~combout\ : std_logic;
SIGNAL \I3|FA6|HA1|Sum~combout\ : std_logic;
SIGNAL \I1|FS6|HS0|Diff~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \I4|FS6|HS1|Diff~combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \I1|FS6|HS1|Diff~0_combout\ : std_logic;
SIGNAL \I0|FA6|HA1|Sum~combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \I1|FS5|HS1|Diff~combout\ : std_logic;
SIGNAL \I0|FA5|HA1|Sum~combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Flags~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \I5|FS3|HS1|Diff~combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Flags~9_combout\ : std_logic;
SIGNAL \Flags~10_combout\ : std_logic;
SIGNAL \Flags[3]~11_combout\ : std_logic;
SIGNAL \Flags[3]~12_combout\ : std_logic;
SIGNAL \Flags[3]~13_combout\ : std_logic;
SIGNAL \Negativo~0_combout\ : std_logic;
SIGNAL \Flags[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Flags~10_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Sel <= Sel;
Flags <= ww_Flags;
Res_ALU <= ww_Res_ALU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Flags~10_combout\ <= NOT \Flags~10_combout\;

\Flags[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[0]$latch~2_combout\,
	devoe => ww_devoe,
	o => \Flags[0]~output_o\);

\Flags[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Flags[1]~output_o\);

\Flags[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Flags~10_combout\,
	devoe => ww_devoe,
	o => \Flags[2]~output_o\);

\Flags[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Flags[3]~output_o\);

\Res_ALU[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[0]~output_o\);

\Res_ALU[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[1]~output_o\);

\Res_ALU[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[2]~output_o\);

\Res_ALU[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~11_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[3]~output_o\);

\Res_ALU[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~11_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[4]~output_o\);

\Res_ALU[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~9_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[5]~output_o\);

\Res_ALU[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~8_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[6]~output_o\);

\Res_ALU[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~13_combout\,
	devoe => ww_devoe,
	o => \Res_ALU[7]~output_o\);

\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\I0|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I0|FA1|Cout~0_combout\);

\I0|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA2|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\I0|FA1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \I0|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \I0|FA1|Cout~0_combout\,
	combout => \I0|FA2|Cout~0_combout\);

\I0|FA3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA3|Cout~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\I0|FA2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \I0|FA2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \I0|FA2|Cout~0_combout\,
	combout => \I0|FA3|Cout~0_combout\);

\I0|FA4|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA4|Cout~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\I0|FA3|Cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \I0|FA3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \I0|FA3|Cout~0_combout\,
	combout => \I0|FA4|Cout~0_combout\);

\I0|FA5|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA5|Cout~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\I0|FA4|Cout~0_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \I0|FA4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \I0|FA4|Cout~0_combout\,
	combout => \I0|FA5|Cout~0_combout\);

\I0|FA6|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA6|Cout~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\I0|FA5|Cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \I0|FA5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \I0|FA5|Cout~0_combout\,
	combout => \I0|FA6|Cout~0_combout\);

\I0|FA7|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA7|Cout~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\I0|FA6|Cout~0_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \I0|FA6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \I0|FA6|Cout~0_combout\,
	combout => \I0|FA7|Cout~0_combout\);

\Sel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(2),
	o => \Sel[2]~input_o\);

\Sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

\Sel[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(6),
	o => \Sel[6]~input_o\);

\Sel[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(5),
	o => \Sel[5]~input_o\);

\Sel[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(7),
	o => \Sel[7]~input_o\);

\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Sel[5]~input_o\ & !\Sel[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sel[5]~input_o\,
	datad => \Sel[7]~input_o\,
	combout => \Equal6~0_combout\);

\Sel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(3),
	o => \Sel[3]~input_o\);

\Sel[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(4),
	o => \Sel[4]~input_o\);

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Sel[6]~input_o\ & (\Equal6~0_combout\ & (!\Sel[3]~input_o\ & !\Sel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[6]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \Sel[3]~input_o\,
	datad => \Sel[4]~input_o\,
	combout => \Equal0~0_combout\);

\Sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Sel[2]~input_o\ & (\Sel[1]~input_o\ & (\Equal0~0_combout\ & !\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Sel[0]~input_o\,
	combout => \Equal1~0_combout\);

\I3|FA3|HA1|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|FA3|HA1|Cout~combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I3|FA3|HA1|Cout~combout\);

\I3|FA6|HA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|FA6|HA1|Cout~0_combout\ = (\B[6]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \I3|FA3|HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \I3|FA3|HA1|Cout~combout\,
	combout => \I3|FA6|HA1|Cout~0_combout\);

\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Sel[0]~input_o\ & (\Sel[2]~input_o\ & (\Equal0~0_combout\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Equal3~0_combout\);

\Flags[0]$latch~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[0]$latch~0_combout\ = (\B[7]~input_o\ & (\Equal1~0_combout\ & (\I3|FA6|HA1|Cout~0_combout\ & !\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \I3|FA6|HA1|Cout~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Flags[0]$latch~0_combout\);

\I2|FA3|HA1|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|FA3|HA1|Cout~combout\ = (\A[3]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I2|FA3|HA1|Cout~combout\);

\I2|FA6|HA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|FA6|HA1|Cout~0_combout\ = (\A[6]~input_o\ & (\A[5]~input_o\ & (\A[4]~input_o\ & \I2|FA3|HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \I2|FA3|HA1|Cout~combout\,
	combout => \I2|FA6|HA1|Cout~0_combout\);

\Flags[0]$latch~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[0]$latch~1_combout\ = (\Flags[0]$latch~0_combout\) # ((\A[7]~input_o\ & (\Equal3~0_combout\ & \I2|FA6|HA1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[0]$latch~0_combout\,
	datab => \A[7]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \I2|FA6|HA1|Cout~0_combout\,
	combout => \Flags[0]$latch~1_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\Sel[0]~input_o\ & (!\Sel[2]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[2]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Equal0~1_combout\);

\Flags[0]$latch~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[0]$latch~2_combout\ = (\Equal0~1_combout\ & (\I0|FA7|Cout~0_combout\)) # (!\Equal0~1_combout\ & ((\Flags[0]$latch~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|FA7|Cout~0_combout\,
	datab => \Flags[0]$latch~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \Flags[0]$latch~2_combout\);

\I4|FS3|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|FS3|HS1|Bout~combout\ = (\A[3]~input_o\) # ((\A[2]~input_o\) # ((\A[0]~input_o\) # (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I4|FS3|HS1|Bout~combout\);

\I4|FS6|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|FS6|HS1|Bout~combout\ = (\A[6]~input_o\) # ((\A[5]~input_o\) # ((\A[4]~input_o\) # (\I4|FS3|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \I4|FS3|HS1|Bout~combout\,
	combout => \I4|FS6|HS1|Bout~combout\);

\Flags[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~0_combout\ = (\Sel[1]~input_o\ & (\Equal0~0_combout\ & (\Sel[0]~input_o\ & \Sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \Sel[2]~input_o\,
	combout => \Flags[1]~0_combout\);

\I5|FS3|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|FS3|HS1|Bout~combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I5|FS3|HS1|Bout~combout\);

\I5|FS6|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|FS6|HS1|Bout~combout\ = (\B[6]~input_o\) # ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\I5|FS3|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \I5|FS3|HS1|Bout~combout\,
	combout => \I5|FS6|HS1|Bout~combout\);

\Flags[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~1_combout\ = (!\I5|FS6|HS1|Bout~combout\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I5|FS6|HS1|Bout~combout\,
	datac => \B[7]~input_o\,
	combout => \Flags[1]~1_combout\);

\Flags[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~2_combout\ = (\Flags[1]~0_combout\ & (!\I4|FS6|HS1|Bout~combout\ & (\A[7]~input_o\))) # (!\Flags[1]~0_combout\ & (((\Flags[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|FS6|HS1|Bout~combout\,
	datab => \Flags[1]~0_combout\,
	datac => \A[7]~input_o\,
	datad => \Flags[1]~1_combout\,
	combout => \Flags[1]~2_combout\);

\Flags[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~3_combout\ = (\Equal1~0_combout\ & (((\I3|FA6|HA1|Cout~0_combout\ & !\B[7]~input_o\)))) # (!\Equal1~0_combout\ & (\Flags[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[1]~2_combout\,
	datab => \I3|FA6|HA1|Cout~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \B[7]~input_o\,
	combout => \Flags[1]~3_combout\);

\Flags[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~4_combout\ = (\Equal3~0_combout\ & (((\I2|FA6|HA1|Cout~0_combout\ & !\A[7]~input_o\)))) # (!\Equal3~0_combout\ & (\Flags[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[1]~3_combout\,
	datab => \I2|FA6|HA1|Cout~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \A[7]~input_o\,
	combout => \Flags[1]~4_combout\);

\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Sel[0]~input_o\ & (\Equal0~0_combout\ & (!\Sel[2]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Equal4~0_combout\);

\I1|FS5|HS0|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS5|HS0|Bout~combout\ = (\B[5]~input_o\ & !\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \I1|FS5|HS0|Bout~combout\);

\I1|FS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS1|Bout~combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\A[0]~input_o\)) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I1|FS1|Bout~combout\);

\I1|FS2|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS2|Bout~combout\ = (\B[2]~input_o\ & ((\I1|FS1|Bout~combout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (\I1|FS1|Bout~combout\ & !\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \I1|FS1|Bout~combout\,
	datad => \A[2]~input_o\,
	combout => \I1|FS2|Bout~combout\);

\I1|FS3|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS3|Bout~combout\ = (\B[3]~input_o\ & ((\I1|FS2|Bout~combout\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (\I1|FS2|Bout~combout\ & !\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \I1|FS2|Bout~combout\,
	datad => \A[3]~input_o\,
	combout => \I1|FS3|Bout~combout\);

\I1|FS5|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS5|HS0|Diff~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \I1|FS5|HS0|Diff~0_combout\);

\I1|FS5|HS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS5|HS1|Bout~combout\ = (!\I1|FS5|HS0|Diff~0_combout\ & ((\B[4]~input_o\ & ((\I1|FS3|Bout~combout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (\I1|FS3|Bout~combout\ & !\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \I1|FS3|Bout~combout\,
	datac => \A[4]~input_o\,
	datad => \I1|FS5|HS0|Diff~0_combout\,
	combout => \I1|FS5|HS1|Bout~combout\);

\I1|FS6|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS6|Bout~combout\ = (\B[6]~input_o\ & ((\I1|FS5|HS0|Bout~combout\) # ((\I1|FS5|HS1|Bout~combout\) # (!\A[6]~input_o\)))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & ((\I1|FS5|HS0|Bout~combout\) # (\I1|FS5|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \I1|FS5|HS0|Bout~combout\,
	datac => \I1|FS5|HS1|Bout~combout\,
	datad => \A[6]~input_o\,
	combout => \I1|FS6|Bout~combout\);

\I1|FS7|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS7|Bout~combout\ = (\B[7]~input_o\ & ((\I1|FS6|Bout~combout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\I1|FS6|Bout~combout\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \I1|FS6|Bout~combout\,
	datad => \A[7]~input_o\,
	combout => \I1|FS7|Bout~combout\);

\Flags[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~5_combout\ = (\Equal4~0_combout\ & ((\I1|FS6|Bout~combout\ $ (\I1|FS7|Bout~combout\)))) # (!\Equal4~0_combout\ & (\Flags[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[1]~4_combout\,
	datab => \Equal4~0_combout\,
	datac => \I1|FS6|Bout~combout\,
	datad => \I1|FS7|Bout~combout\,
	combout => \Flags[1]~5_combout\);

\Flags[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]~6_combout\ = (\Equal0~1_combout\ & ((\I0|FA6|Cout~0_combout\ $ (\I0|FA7|Cout~0_combout\)))) # (!\Equal0~1_combout\ & (\Flags[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[1]~5_combout\,
	datab => \Equal0~1_combout\,
	datac => \I0|FA6|Cout~0_combout\,
	datad => \I0|FA7|Cout~0_combout\,
	combout => \Flags[1]~6_combout\);

\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Sel[6]~input_o\ & (!\Sel[4]~input_o\ & (!\Sel[5]~input_o\ & !\Sel[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[6]~input_o\,
	datab => \Sel[4]~input_o\,
	datac => \Sel[5]~input_o\,
	datad => \Sel[7]~input_o\,
	combout => \Equal6~1_combout\);

\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\Sel[3]~input_o\ & (!\Sel[0]~input_o\ & (!\Sel[2]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[3]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[2]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Equal6~2_combout\);

\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\Sel[0]~input_o\ & (\Sel[2]~input_o\ & (\Sel[1]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[2]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal5~0_combout\);

\Flags[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[3]~7_combout\ = (!\Equal4~0_combout\ & (!\Equal5~0_combout\ & ((!\Equal6~2_combout\) # (!\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \Equal6~2_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \Flags[3]~7_combout\);

\Flags[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[1]$latch~combout\ = (\Flags[1]~6_combout\ & ((\Equal0~1_combout\) # ((\Equal3~0_combout\) # (!\Flags[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[1]~6_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Flags[3]~7_combout\,
	combout => \Flags[1]$latch~combout\);

\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\A[0]~input_o\ & (\Sel[2]~input_o\ $ (((\Sel[0]~input_o\) # (\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\B[0]~input_o\ & (\Sel[0]~input_o\)) # (!\B[0]~input_o\ & ((\Sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Sel[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Sel[1]~input_o\ & (\Mux7~2_combout\ & !\Sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux7~2_combout\,
	datad => \Sel[3]~input_o\,
	combout => \Mux7~3_combout\);

\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\Sel[4]~input_o\ & ((\Mux7~3_combout\) # ((\Equal6~2_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Equal6~2_combout\,
	datac => \B[0]~input_o\,
	datad => \Sel[4]~input_o\,
	combout => \Mux7~4_combout\);

\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Sel[0]~input_o\ & (\Sel[4]~input_o\ $ (((\Sel[2]~input_o\) # (\B[0]~input_o\))))) # (!\Sel[0]~input_o\ & ((\Sel[4]~input_o\ & (!\Sel[2]~input_o\)) # (!\Sel[4]~input_o\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[4]~input_o\,
	datac => \Sel[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux7~7_combout\);

\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & (((\Sel[0]~input_o\ & \Sel[4]~input_o\)) # (!\A[0]~input_o\))) # (!\Mux7~7_combout\ & (((!\Sel[4]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Mux7~7_combout\,
	datac => \Sel[4]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux7~8_combout\);

\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\) # ((\Mux7~8_combout\ & (!\Sel[1]~input_o\ & !\Sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux7~8_combout\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[3]~input_o\,
	combout => \Mux7~5_combout\);

\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (!\Sel[5]~input_o\ & (!\Sel[7]~input_o\ & (\Sel[6]~input_o\ & \Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[5]~input_o\,
	datab => \Sel[7]~input_o\,
	datac => \Sel[6]~input_o\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Sel[6]~input_o\ & (\Equal6~2_combout\ & !\Sel[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[6]~input_o\,
	datab => \Equal6~2_combout\,
	datad => \Sel[4]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Equal6~0_combout\ & (\Mux0~0_combout\ & (\B[7]~input_o\ $ (!\I5|FS6|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \B[7]~input_o\,
	datad => \I5|FS6|HS1|Bout~combout\,
	combout => \Mux0~1_combout\);

\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = \A[7]~input_o\ $ (((\B[7]~input_o\ & !\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \Sel[0]~input_o\,
	combout => \Mux0~2_combout\);

\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (\Mux0~2_combout\ $ (((\I2|FA6|HA1|Cout~0_combout\ & \Sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|FA6|HA1|Cout~0_combout\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & ((\A[7]~input_o\ $ (\I4|FS6|HS1|Bout~combout\)))) # (!\Mux0~3_combout\ & (\I3|FA6|HA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|FA6|HA1|Cout~0_combout\,
	datab => \A[7]~input_o\,
	datac => \I4|FS6|HS1|Bout~combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Sel[1]~input_o\ & (\Mux0~4_combout\ $ (((\B[7]~input_o\) # (\Mux0~3_combout\))))) # (!\Sel[1]~input_o\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Sel[4]~input_o\ & (\Sel[0]~input_o\)) # (!\Sel[4]~input_o\ & ((\Sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[2]~input_o\,
	datad => \Sel[4]~input_o\,
	combout => \Mux0~6_combout\);

\I1|FS7|HS1|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS7|HS1|Diff~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\I1|FS6|Bout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \I1|FS6|Bout~combout\,
	combout => \I1|FS7|HS1|Diff~0_combout\);

\I1|FS7|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS7|HS0|Diff~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \I1|FS7|HS0|Diff~0_combout\);

\I0|FA7|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA7|HA1|Sum~combout\ = \I1|FS7|HS0|Diff~0_combout\ $ (((\A[6]~input_o\ & ((\B[6]~input_o\) # (\I0|FA5|Cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \I0|FA5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \I0|FA5|Cout~0_combout\,
	datad => \I1|FS7|HS0|Diff~0_combout\,
	combout => \I0|FA7|HA1|Sum~combout\);

\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\I1|FS7|HS1|Diff~0_combout\)) # (!\Sel[0]~input_o\ & ((\I0|FA7|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \I1|FS7|HS1|Diff~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \I0|FA7|HA1|Sum~combout\,
	combout => \Mux0~7_combout\);

\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\B[7]~input_o\ & ((\Mux0~7_combout\) # ((\A[7]~input_o\ & \Sel[1]~input_o\)))) # (!\B[7]~input_o\ & (\Mux0~7_combout\ & ((\A[7]~input_o\) # (!\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Mux0~7_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux0~8_combout\);

\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[7]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[7]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux0~8_combout\,
	combout => \Mux0~9_combout\);

\Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Mux0~6_combout\ & ((\Mux0~9_combout\ & ((!\B[7]~input_o\))) # (!\Mux0~9_combout\ & (\Mux0~5_combout\)))) # (!\Mux0~6_combout\ & (((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux0~9_combout\,
	datad => \B[7]~input_o\,
	combout => \Mux0~10_combout\);

\Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (!\Sel[3]~input_o\ & (((!\Sel[2]~input_o\ & !\Sel[1]~input_o\)) # (!\Sel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Sel[3]~input_o\,
	combout => \Mux0~11_combout\);

\Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Sel[6]~input_o\ & \Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[6]~input_o\,
	datab => \Mux0~11_combout\,
	combout => \Mux0~12_combout\);

\Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\Mux0~1_combout\) # ((\Equal6~0_combout\ & (\Mux0~10_combout\ & \Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Equal6~0_combout\,
	datac => \Mux0~10_combout\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

\I5|FS6|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|FS6|HS1|Diff~combout\ = \B[6]~input_o\ $ (((\B[5]~input_o\) # ((\B[4]~input_o\) # (\I5|FS3|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \I5|FS3|HS1|Bout~combout\,
	datad => \B[6]~input_o\,
	combout => \I5|FS6|HS1|Diff~combout\);

\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (!\Sel[5]~input_o\ & (!\Sel[7]~input_o\ & (\Mux0~0_combout\ & !\I5|FS6|HS1|Diff~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[5]~input_o\,
	datab => \Sel[7]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \I5|FS6|HS1|Diff~combout\,
	combout => \Mux1~9_combout\);

\I2|FA6|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|FA6|HA1|Sum~combout\ = \A[6]~input_o\ $ (((\A[5]~input_o\ & (\A[4]~input_o\ & \I2|FA3|HA1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \I2|FA3|HA1|Cout~combout\,
	combout => \I2|FA6|HA1|Sum~combout\);

\I3|FA6|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|FA6|HA1|Sum~combout\ = \B[6]~input_o\ $ (((\B[5]~input_o\ & (\B[4]~input_o\ & \I3|FA3|HA1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \I3|FA3|HA1|Cout~combout\,
	combout => \I3|FA6|HA1|Sum~combout\);

\I1|FS6|HS0|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS6|HS0|Diff~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \I1|FS6|HS0|Diff~0_combout\);

\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\I3|FA6|HA1|Sum~combout\)) # (!\Sel[1]~input_o\ & ((\I1|FS6|HS0|Diff~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \I3|FA6|HA1|Sum~combout\,
	datac => \Sel[1]~input_o\,
	datad => \I1|FS6|HS0|Diff~0_combout\,
	combout => \Mux1~2_combout\);

\I4|FS6|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|FS6|HS1|Diff~combout\ = \A[6]~input_o\ $ (((\A[5]~input_o\) # ((\A[4]~input_o\) # (\I4|FS3|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \I4|FS3|HS1|Bout~combout\,
	datad => \A[6]~input_o\,
	combout => \I4|FS6|HS1|Diff~combout\);

\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Sel[0]~input_o\ & ((\Mux1~2_combout\ & ((!\I4|FS6|HS1|Diff~combout\))) # (!\Mux1~2_combout\ & (\I2|FA6|HA1|Sum~combout\)))) # (!\Sel[0]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|FA6|HA1|Sum~combout\,
	datab => \Sel[0]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \I4|FS6|HS1|Diff~combout\,
	combout => \Mux1~3_combout\);

\I1|FS6|HS1|Diff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS6|HS1|Diff~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\I1|FS5|HS0|Bout~combout\) # (\I1|FS5|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \I1|FS5|HS0|Bout~combout\,
	datad => \I1|FS5|HS1|Bout~combout\,
	combout => \I1|FS6|HS1|Diff~0_combout\);

\I0|FA6|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA6|HA1|Sum~combout\ = \I1|FS6|HS0|Diff~0_combout\ $ (((\A[5]~input_o\ & ((\B[5]~input_o\) # (\I0|FA4|Cout~0_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \I0|FA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \I0|FA4|Cout~0_combout\,
	datad => \I1|FS6|HS0|Diff~0_combout\,
	combout => \I0|FA6|HA1|Sum~combout\);

\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\I1|FS6|HS1|Diff~0_combout\)) # (!\Sel[0]~input_o\ & ((\I0|FA6|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \I1|FS6|HS1|Diff~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \I0|FA6|HA1|Sum~combout\,
	combout => \Mux1~4_combout\);

\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\B[6]~input_o\ & ((\Mux1~4_combout\) # ((\A[6]~input_o\ & \Sel[1]~input_o\)))) # (!\B[6]~input_o\ & (\Mux1~4_combout\ & ((\A[6]~input_o\) # (!\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Mux1~4_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux1~5_combout\);

\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[6]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[6]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux0~6_combout\ & ((\Mux1~6_combout\ & ((!\B[6]~input_o\))) # (!\Mux1~6_combout\ & (\Mux1~3_combout\)))) # (!\Mux0~6_combout\ & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux1~6_combout\,
	datad => \B[6]~input_o\,
	combout => \Mux1~7_combout\);

\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~9_combout\) # ((\Equal6~0_combout\ & (\Mux0~12_combout\ & \Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Equal6~0_combout\,
	datac => \Mux0~12_combout\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~0_combout\ & (\B[5]~input_o\ $ (((!\B[4]~input_o\ & !\I5|FS3|HS1|Bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \I5|FS3|HS1|Bout~combout\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\A[4]~input_o\ & ((\I2|FA3|HA1|Cout~combout\) # ((\Sel[1]~input_o\)))) # (!\A[4]~input_o\ & (((\Sel[1]~input_o\ & \I4|FS3|HS1|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \I2|FA3|HA1|Cout~combout\,
	datac => \Sel[1]~input_o\,
	datad => \I4|FS3|HS1|Bout~combout\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = \B[5]~input_o\ $ (((\B[4]~input_o\ & \I3|FA3|HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \I3|FA3|HA1|Cout~combout\,
	combout => \Mux2~2_combout\);

\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\Mux2~2_combout\))) # (!\Sel[1]~input_o\ & (\I1|FS5|HS0|Diff~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \I1|FS5|HS0|Diff~0_combout\,
	datac => \Mux2~2_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux2~3_combout\);

\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \Mux2~3_combout\ $ (((\Sel[0]~input_o\ & (\A[5]~input_o\ $ (\Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux2~1_combout\,
	datac => \Sel[0]~input_o\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

\I1|FS5|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|FS5|HS1|Diff~combout\ = \I1|FS5|HS0|Diff~0_combout\ $ (((\A[4]~input_o\ & (\B[4]~input_o\ & \I1|FS3|Bout~combout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (\I1|FS3|Bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \I1|FS3|Bout~combout\,
	datad => \I1|FS5|HS0|Diff~0_combout\,
	combout => \I1|FS5|HS1|Diff~combout\);

\I0|FA5|HA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|FA5|HA1|Sum~combout\ = \I1|FS5|HS0|Diff~0_combout\ $ (((\A[4]~input_o\ & ((\B[4]~input_o\) # (\I0|FA3|Cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \I0|FA3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \I0|FA3|Cout~0_combout\,
	datad => \I1|FS5|HS0|Diff~0_combout\,
	combout => \I0|FA5|HA1|Sum~combout\);

\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\I1|FS5|HS1|Diff~combout\)) # (!\Sel[0]~input_o\ & ((\I0|FA5|HA1|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \I1|FS5|HS1|Diff~combout\,
	datac => \Sel[0]~input_o\,
	datad => \I0|FA5|HA1|Sum~combout\,
	combout => \Mux2~5_combout\);

\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\B[5]~input_o\ & ((\Mux2~5_combout\) # ((\A[5]~input_o\ & \Sel[1]~input_o\)))) # (!\B[5]~input_o\ & (\Mux2~5_combout\ & ((\A[5]~input_o\) # (!\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Mux2~5_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux2~6_combout\);

\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[5]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[5]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux0~6_combout\ & ((\Mux2~7_combout\ & ((!\B[5]~input_o\))) # (!\Mux2~7_combout\ & (\Mux2~4_combout\)))) # (!\Mux0~6_combout\ & (((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux2~7_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux2~8_combout\);

\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Equal6~0_combout\ & ((\Mux2~0_combout\) # ((\Mux0~12_combout\ & \Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux0~12_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

\Flags~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags~8_combout\ = (\Mux1~8_combout\) # (\Mux2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \Mux2~9_combout\,
	combout => \Flags~8_combout\);

\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux0~0_combout\ & (\B[4]~input_o\ $ (!\I5|FS3|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \I5|FS3|HS1|Bout~combout\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = \B[4]~input_o\ $ (((\A[4]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Sel[1]~input_o\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (\Mux3~1_combout\ $ (((\I3|FA3|HA1|Cout~combout\ & \Sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|FA3|HA1|Cout~combout\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\I4|FS3|HS1|Bout~combout\))) # (!\Mux3~2_combout\ & (\I2|FA3|HA1|Cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|FA3|HA1|Cout~combout\,
	datab => \I4|FS3|HS1|Bout~combout\,
	datac => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = \Mux3~2_combout\ $ (((\Sel[0]~input_o\ & (\A[4]~input_o\ $ (\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Mux3~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Sel[0]~input_o\ & (\I1|FS2|Bout~combout\)) # (!\Sel[0]~input_o\ & ((\I0|FA2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|FS2|Bout~combout\,
	datab => \I0|FA2|Cout~0_combout\,
	datac => \Sel[0]~input_o\,
	combout => \Mux3~5_combout\);

\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = \Sel[0]~input_o\ $ (((\A[3]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	combout => \Mux3~6_combout\);

\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\B[3]~input_o\ & ((\Mux3~6_combout\) # ((\Mux3~5_combout\ & !\Sel[1]~input_o\)))) # (!\B[3]~input_o\ & (\Mux3~6_combout\ & ((\Mux3~5_combout\) # (\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux3~5_combout\,
	datac => \Sel[1]~input_o\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Sel[1]~input_o\ & ((\A[4]~input_o\ & ((\B[4]~input_o\) # (\Mux3~7_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \Mux3~7_combout\)))) # (!\Sel[1]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\ $ (\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[4]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[4]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

\Mux3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux0~6_combout\ & ((\Mux3~9_combout\ & ((!\B[4]~input_o\))) # (!\Mux3~9_combout\ & (\Mux3~4_combout\)))) # (!\Mux0~6_combout\ & (((\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux3~9_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux3~10_combout\);

\Mux3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Equal6~0_combout\ & ((\Mux3~0_combout\) # ((\Mux0~12_combout\ & \Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux0~12_combout\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~11_combout\);

\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\A[2]~input_o\ & ((\Sel[1]~input_o\) # ((\A[0]~input_o\ & \A[1]~input_o\)))) # (!\A[2]~input_o\ & (\Sel[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\B[2]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (!\A[3]~input_o\)) # (!\Sel[0]~input_o\ & ((\Mux4~1_combout\))))) # (!\Sel[1]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux4~2_combout\);

\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = \Mux4~2_combout\ $ (((\Sel[0]~input_o\ & ((\Mux4~0_combout\))) # (!\Sel[0]~input_o\ & (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Sel[0]~input_o\ & (\I1|FS1|Bout~combout\)) # (!\Sel[0]~input_o\ & ((\I0|FA1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|FS1|Bout~combout\,
	datab => \I0|FA1|Cout~0_combout\,
	datac => \Sel[0]~input_o\,
	combout => \Mux4~4_combout\);

\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = \Sel[0]~input_o\ $ (((\A[2]~input_o\ & !\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	combout => \Mux4~5_combout\);

\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\B[2]~input_o\ & ((\Mux4~5_combout\) # ((\Mux4~4_combout\ & !\Sel[1]~input_o\)))) # (!\B[2]~input_o\ & (\Mux4~5_combout\ & ((\Mux4~4_combout\) # (\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \Sel[1]~input_o\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Sel[1]~input_o\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\Mux4~6_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \Mux4~6_combout\)))) # (!\Sel[1]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[3]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[3]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux0~6_combout\ & ((\Mux4~8_combout\ & ((!\B[3]~input_o\))) # (!\Mux4~8_combout\ & (\Mux4~3_combout\)))) # (!\Mux0~6_combout\ & (((\Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux4~8_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux4~9_combout\);

\Mux4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Sel[6]~input_o\ & (\Mux0~11_combout\ & \Mux4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[6]~input_o\,
	datab => \Mux0~11_combout\,
	datac => \Mux4~9_combout\,
	combout => \Mux4~10_combout\);

\I5|FS3|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|FS3|HS1|Diff~combout\ = \B[3]~input_o\ $ (((\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \I5|FS3|HS1|Diff~combout\);

\Mux4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Equal6~0_combout\ & ((\Mux4~10_combout\) # ((\Mux0~0_combout\ & !\I5|FS3|HS1|Diff~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux4~10_combout\,
	datac => \Mux0~0_combout\,
	datad => \I5|FS3|HS1|Diff~combout\,
	combout => \Mux4~11_combout\);

\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~0_combout\ & (\B[2]~input_o\ $ (((!\B[0]~input_o\ & !\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Sel[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\))) # (!\Sel[1]~input_o\ & (((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Mux5~1_combout\);

\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = \A[2]~input_o\ $ (((\A[1]~input_o\ & (\A[0]~input_o\ & !\Sel[1]~input_o\)) # (!\A[1]~input_o\ & (!\A[0]~input_o\ & \Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux5~7_combout\);

\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Sel[0]~input_o\ & (((\Mux5~7_combout\)))) # (!\Sel[0]~input_o\ & (\Mux5~1_combout\ $ (((\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~7_combout\,
	datac => \B[2]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux5~8_combout\);

\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\I1|FS1|Bout~combout\))) # (!\Sel[0]~input_o\ & (\I0|FA1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \I0|FA1|Cout~0_combout\,
	datac => \I1|FS1|Bout~combout\,
	datad => \Sel[0]~input_o\,
	combout => \Mux5~5_combout\);

\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Sel[1]~input_o\ & ((\Mux5~5_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Mux5~5_combout\ & (\A[2]~input_o\ & \B[2]~input_o\)))) # (!\Sel[1]~input_o\ & (\Mux5~5_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux5~5_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux5~6_combout\);

\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[2]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[2]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~2_combout\);

\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux0~6_combout\ & ((\Mux5~2_combout\ & ((!\B[2]~input_o\))) # (!\Mux5~2_combout\ & (\Mux5~8_combout\)))) # (!\Mux0~6_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux5~2_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux5~3_combout\);

\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Equal6~0_combout\ & ((\Mux5~0_combout\) # ((\Mux0~12_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux0~12_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~0_combout\ & (\B[0]~input_o\ $ (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (!\A[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[0]~input_o\))))) # (!\Sel[1]~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = \Mux6~1_combout\ $ (((\Sel[0]~input_o\ & (\A[0]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ $ (\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux6~6_combout\);

\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Sel[1]~input_o\ & ((\Mux6~6_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\Mux6~6_combout\ & (\A[1]~input_o\ & \B[1]~input_o\)))) # (!\Sel[1]~input_o\ & (\Mux6~6_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux6~6_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux6~7_combout\);

\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux0~6_combout\ & (((\Sel[4]~input_o\)))) # (!\Mux0~6_combout\ & ((\Sel[4]~input_o\ & (!\A[1]~input_o\)) # (!\Sel[4]~input_o\ & ((\Mux6~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \A[1]~input_o\,
	datac => \Sel[4]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~3_combout\);

\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux0~6_combout\ & ((\Mux6~3_combout\ & ((!\B[1]~input_o\))) # (!\Mux6~3_combout\ & (\Mux6~2_combout\)))) # (!\Mux0~6_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux6~3_combout\,
	datad => \B[1]~input_o\,
	combout => \Mux6~4_combout\);

\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Equal6~0_combout\ & ((\Mux6~0_combout\) # ((\Mux0~12_combout\ & \Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux0~12_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

\Flags~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags~9_combout\ = (\Mux3~11_combout\) # ((\Mux4~11_combout\) # ((\Mux5~4_combout\) # (\Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~11_combout\,
	datab => \Mux4~11_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux6~5_combout\,
	combout => \Flags~9_combout\);

\Flags~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags~10_combout\ = (\Mux7~6_combout\) # ((\Mux0~13_combout\) # ((\Flags~8_combout\) # (\Flags~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux0~13_combout\,
	datac => \Flags~8_combout\,
	datad => \Flags~9_combout\,
	combout => \Flags~10_combout\);

\Flags[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[3]~11_combout\ = (!\A[7]~input_o\ & !\I4|FS6|HS1|Bout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \I4|FS6|HS1|Bout~combout\,
	combout => \Flags[3]~11_combout\);

\Flags[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[3]~12_combout\ = (\Equal5~0_combout\ & (((\Flags[3]~11_combout\)))) # (!\Equal5~0_combout\ & (!\B[7]~input_o\ & (!\I5|FS6|HS1|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \I5|FS6|HS1|Bout~combout\,
	datad => \Flags[3]~11_combout\,
	combout => \Flags[3]~12_combout\);

\Flags[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[3]~13_combout\ = (\Equal4~0_combout\ & (\I1|FS7|Bout~combout\)) # (!\Equal4~0_combout\ & ((\Flags[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|FS7|Bout~combout\,
	datab => \Flags[3]~12_combout\,
	datad => \Equal4~0_combout\,
	combout => \Flags[3]~13_combout\);

\Negativo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Negativo~0_combout\ = (\Equal0~0_combout\ & (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\) # (\Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[2]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Negativo~0_combout\);

\Flags[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Flags[3]$latch~combout\ = (\Negativo~0_combout\ & ((\Flags[3]~7_combout\ & ((\Flags[3]$latch~combout\))) # (!\Flags[3]~7_combout\ & (\Flags[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags[3]~13_combout\,
	datab => \Flags[3]$latch~combout\,
	datac => \Flags[3]~7_combout\,
	datad => \Negativo~0_combout\,
	combout => \Flags[3]$latch~combout\);

ww_Flags(0) <= \Flags[0]~output_o\;

ww_Flags(1) <= \Flags[1]~output_o\;

ww_Flags(2) <= \Flags[2]~output_o\;

ww_Flags(3) <= \Flags[3]~output_o\;

ww_Res_ALU(0) <= \Res_ALU[0]~output_o\;

ww_Res_ALU(1) <= \Res_ALU[1]~output_o\;

ww_Res_ALU(2) <= \Res_ALU[2]~output_o\;

ww_Res_ALU(3) <= \Res_ALU[3]~output_o\;

ww_Res_ALU(4) <= \Res_ALU[4]~output_o\;

ww_Res_ALU(5) <= \Res_ALU[5]~output_o\;

ww_Res_ALU(6) <= \Res_ALU[6]~output_o\;

ww_Res_ALU(7) <= \Res_ALU[7]~output_o\;
END structure;


