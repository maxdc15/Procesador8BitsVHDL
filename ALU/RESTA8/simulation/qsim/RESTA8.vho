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

-- DATE "05/16/2024 17:58:22"

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

ENTITY 	RESTA8 IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Bin : IN std_logic;
	Diff : OUT std_logic_vector(7 DOWNTO 0);
	Bout : OUT std_logic;
	OverFlow : OUT std_logic
	);
END RESTA8;

ARCHITECTURE structure OF RESTA8 IS
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
SIGNAL ww_Bin : std_logic;
SIGNAL ww_Diff : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bout : std_logic;
SIGNAL ww_OverFlow : std_logic;
SIGNAL \Diff[0]~output_o\ : std_logic;
SIGNAL \Diff[1]~output_o\ : std_logic;
SIGNAL \Diff[2]~output_o\ : std_logic;
SIGNAL \Diff[3]~output_o\ : std_logic;
SIGNAL \Diff[4]~output_o\ : std_logic;
SIGNAL \Diff[5]~output_o\ : std_logic;
SIGNAL \Diff[6]~output_o\ : std_logic;
SIGNAL \Diff[7]~output_o\ : std_logic;
SIGNAL \Bout~output_o\ : std_logic;
SIGNAL \OverFlow~output_o\ : std_logic;
SIGNAL \Bin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \FS0|HS1|Diff~combout\ : std_logic;
SIGNAL \FS0|Bout~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \FS1|HS1|Diff~combout\ : std_logic;
SIGNAL \FS1|Bout~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \FS2|HS1|Diff~combout\ : std_logic;
SIGNAL \FS2|Bout~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \FS3|HS1|Diff~combout\ : std_logic;
SIGNAL \FS3|Bout~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \FS4|HS1|Diff~combout\ : std_logic;
SIGNAL \FS4|Bout~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \FS5|HS1|Diff~combout\ : std_logic;
SIGNAL \FS5|Bout~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \FS6|HS1|Diff~combout\ : std_logic;
SIGNAL \FS6|Bout~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \FS7|HS1|Diff~combout\ : std_logic;
SIGNAL \FS7|Bout~combout\ : std_logic;
SIGNAL \OverFlow~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Bin <= Bin;
Diff <= ww_Diff;
Bout <= ww_Bout;
OverFlow <= ww_OverFlow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Diff[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS0|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[0]~output_o\);

\Diff[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS1|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[1]~output_o\);

\Diff[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS2|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[2]~output_o\);

\Diff[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS3|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[3]~output_o\);

\Diff[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS4|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[4]~output_o\);

\Diff[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS5|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[5]~output_o\);

\Diff[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS6|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[6]~output_o\);

\Diff[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS7|HS1|Diff~combout\,
	devoe => ww_devoe,
	o => \Diff[7]~output_o\);

\Bout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS7|Bout~combout\,
	devoe => ww_devoe,
	o => \Bout~output_o\);

\OverFlow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OverFlow~0_combout\,
	devoe => ww_devoe,
	o => \OverFlow~output_o\);

\Bin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bin,
	o => \Bin~input_o\);

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

\FS0|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS0|HS1|Diff~combout\ = \Bin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \FS0|HS1|Diff~combout\);

\FS0|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS0|Bout~combout\ = (\Bin~input_o\ & ((\B[0]~input_o\) # (!\A[0]~input_o\))) # (!\Bin~input_o\ & (\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \FS0|Bout~combout\);

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

\FS1|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS1|HS1|Diff~combout\ = \FS0|Bout~combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS0|Bout~combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \FS1|HS1|Diff~combout\);

\FS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS1|Bout~combout\ = (\FS0|Bout~combout\ & ((\B[1]~input_o\) # (!\A[1]~input_o\))) # (!\FS0|Bout~combout\ & (\B[1]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS0|Bout~combout\,
	datab => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \FS1|Bout~combout\);

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

\FS2|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS2|HS1|Diff~combout\ = \FS1|Bout~combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS1|Bout~combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \FS2|HS1|Diff~combout\);

\FS2|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS2|Bout~combout\ = (\FS1|Bout~combout\ & ((\B[2]~input_o\) # (!\A[2]~input_o\))) # (!\FS1|Bout~combout\ & (\B[2]~input_o\ & !\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS1|Bout~combout\,
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \FS2|Bout~combout\);

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

\FS3|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS3|HS1|Diff~combout\ = \FS2|Bout~combout\ $ (\A[3]~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS2|Bout~combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \FS3|HS1|Diff~combout\);

\FS3|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS3|Bout~combout\ = (\FS2|Bout~combout\ & ((\B[3]~input_o\) # (!\A[3]~input_o\))) # (!\FS2|Bout~combout\ & (\B[3]~input_o\ & !\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS2|Bout~combout\,
	datab => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \FS3|Bout~combout\);

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

\FS4|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS4|HS1|Diff~combout\ = \FS3|Bout~combout\ $ (\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS3|Bout~combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \FS4|HS1|Diff~combout\);

\FS4|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS4|Bout~combout\ = (\FS3|Bout~combout\ & ((\B[4]~input_o\) # (!\A[4]~input_o\))) # (!\FS3|Bout~combout\ & (\B[4]~input_o\ & !\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS3|Bout~combout\,
	datab => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \FS4|Bout~combout\);

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

\FS5|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS5|HS1|Diff~combout\ = \FS4|Bout~combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS4|Bout~combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \FS5|HS1|Diff~combout\);

\FS5|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS5|Bout~combout\ = (\FS4|Bout~combout\ & ((\B[5]~input_o\) # (!\A[5]~input_o\))) # (!\FS4|Bout~combout\ & (\B[5]~input_o\ & !\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS4|Bout~combout\,
	datab => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \FS5|Bout~combout\);

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

\FS6|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS6|HS1|Diff~combout\ = \FS5|Bout~combout\ $ (\A[6]~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS5|Bout~combout\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \FS6|HS1|Diff~combout\);

\FS6|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS6|Bout~combout\ = (\FS5|Bout~combout\ & ((\B[6]~input_o\) # (!\A[6]~input_o\))) # (!\FS5|Bout~combout\ & (\B[6]~input_o\ & !\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS5|Bout~combout\,
	datab => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \FS6|Bout~combout\);

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

\FS7|HS1|Diff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS7|HS1|Diff~combout\ = \FS6|Bout~combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS6|Bout~combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \FS7|HS1|Diff~combout\);

\FS7|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FS7|Bout~combout\ = (\FS6|Bout~combout\ & ((\B[7]~input_o\) # (!\A[7]~input_o\))) # (!\FS6|Bout~combout\ & (\B[7]~input_o\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS6|Bout~combout\,
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \FS7|Bout~combout\);

\OverFlow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OverFlow~0_combout\ = (\FS6|Bout~combout\ & (\A[7]~input_o\ & !\B[7]~input_o\)) # (!\FS6|Bout~combout\ & (!\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FS6|Bout~combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \OverFlow~0_combout\);

ww_Diff(0) <= \Diff[0]~output_o\;

ww_Diff(1) <= \Diff[1]~output_o\;

ww_Diff(2) <= \Diff[2]~output_o\;

ww_Diff(3) <= \Diff[3]~output_o\;

ww_Diff(4) <= \Diff[4]~output_o\;

ww_Diff(5) <= \Diff[5]~output_o\;

ww_Diff(6) <= \Diff[6]~output_o\;

ww_Diff(7) <= \Diff[7]~output_o\;

ww_Bout <= \Bout~output_o\;

ww_OverFlow <= \OverFlow~output_o\;
END structure;


