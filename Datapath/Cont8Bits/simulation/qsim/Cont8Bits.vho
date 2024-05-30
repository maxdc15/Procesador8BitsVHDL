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

-- DATE "05/17/2024 08:07:23"

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

ENTITY 	Cont8Bits IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	Z : OUT std_logic_vector(7 DOWNTO 0)
	);
END Cont8Bits;

ARCHITECTURE structure OF Cont8Bits IS
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
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \I1|Sum~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \I2|Sum~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \I3|Sum~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \I3|Cout~combout\ : std_logic;
SIGNAL \I4|Sum~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \I5|Sum~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \I6|Sum~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \I6|Cout~combout\ : std_logic;
SIGNAL \I7|Sum~combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;

BEGIN

ww_A <= A;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;

\Z[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[0]~input_o\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

\Z[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

\Z[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

\Z[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I3|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

\Z[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

\Z[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

\Z[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I6|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

\Z[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I7|Sum~combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

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

\I1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Sum~combout\ = \A[0]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I1|Sum~combout\);

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

\I2|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|Sum~combout\ = \A[2]~input_o\ $ (((\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I2|Sum~combout\);

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

\I3|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Sum~combout\ = \A[3]~input_o\ $ (((\A[0]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \I3|Sum~combout\);

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

\I3|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Cout~combout\ = (\A[0]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \I3|Cout~combout\);

\I4|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Sum~combout\ = \A[4]~input_o\ $ (\I3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \I3|Cout~combout\,
	combout => \I4|Sum~combout\);

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

\I5|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Sum~combout\ = \A[5]~input_o\ $ (((\A[4]~input_o\ & \I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \I3|Cout~combout\,
	combout => \I5|Sum~combout\);

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

\I6|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I6|Sum~combout\ = \A[6]~input_o\ $ (((\A[4]~input_o\ & (\I3|Cout~combout\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[4]~input_o\,
	datac => \I3|Cout~combout\,
	datad => \A[5]~input_o\,
	combout => \I6|Sum~combout\);

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

\I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I6|Cout~combout\ = (\A[4]~input_o\ & (\I3|Cout~combout\ & (\A[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \I3|Cout~combout\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \I6|Cout~combout\);

\I7|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I7|Sum~combout\ = \A[7]~input_o\ $ (\I6|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \I6|Cout~combout\,
	combout => \I7|Sum~combout\);

ww_Z(0) <= \Z[0]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(7) <= \Z[7]~output_o\;
END structure;


