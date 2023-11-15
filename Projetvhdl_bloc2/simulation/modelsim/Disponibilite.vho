-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/30/2023 10:36:44"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Disponibilite IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	charger : IN std_logic;
	C_dispo : IN std_logic_vector(11 DOWNTO 0);
	M_dispo : IN std_logic_vector(11 DOWNTO 0);
	dispo : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END Disponibilite;

-- Design Ports Information
-- dispo[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[9]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[10]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[11]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[5]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[8]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[11]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- charger	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[9]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[10]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Disponibilite IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_charger : std_logic;
SIGNAL ww_C_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_M_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dispo[0]~output_o\ : std_logic;
SIGNAL \dispo[1]~output_o\ : std_logic;
SIGNAL \dispo[2]~output_o\ : std_logic;
SIGNAL \dispo[3]~output_o\ : std_logic;
SIGNAL \dispo[4]~output_o\ : std_logic;
SIGNAL \dispo[5]~output_o\ : std_logic;
SIGNAL \dispo[6]~output_o\ : std_logic;
SIGNAL \dispo[7]~output_o\ : std_logic;
SIGNAL \dispo[8]~output_o\ : std_logic;
SIGNAL \dispo[9]~output_o\ : std_logic;
SIGNAL \dispo[10]~output_o\ : std_logic;
SIGNAL \dispo[11]~output_o\ : std_logic;
SIGNAL \M_dispo[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \dispo[0]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \charger~input_o\ : std_logic;
SIGNAL \C_dispo[0]~input_o\ : std_logic;
SIGNAL \dispo[0]~3_combout\ : std_logic;
SIGNAL \dispo[0]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[0]~2_combout\ : std_logic;
SIGNAL \M_dispo[1]~input_o\ : std_logic;
SIGNAL \C_dispo[1]~input_o\ : std_logic;
SIGNAL \dispo[1]~5_combout\ : std_logic;
SIGNAL \dispo[1]~7_combout\ : std_logic;
SIGNAL \dispo[1]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[1]~6_combout\ : std_logic;
SIGNAL \M_dispo[2]~input_o\ : std_logic;
SIGNAL \C_dispo[2]~input_o\ : std_logic;
SIGNAL \dispo[2]~9_combout\ : std_logic;
SIGNAL \dispo[2]~11_combout\ : std_logic;
SIGNAL \dispo[2]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[2]~10_combout\ : std_logic;
SIGNAL \M_dispo[3]~input_o\ : std_logic;
SIGNAL \dispo[3]~13_combout\ : std_logic;
SIGNAL \C_dispo[3]~input_o\ : std_logic;
SIGNAL \dispo[3]~15_combout\ : std_logic;
SIGNAL \dispo[3]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[3]~14_combout\ : std_logic;
SIGNAL \M_dispo[4]~input_o\ : std_logic;
SIGNAL \C_dispo[4]~input_o\ : std_logic;
SIGNAL \dispo[4]~17_combout\ : std_logic;
SIGNAL \dispo[4]~19_combout\ : std_logic;
SIGNAL \dispo[4]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[4]~18_combout\ : std_logic;
SIGNAL \M_dispo[5]~input_o\ : std_logic;
SIGNAL \C_dispo[5]~input_o\ : std_logic;
SIGNAL \dispo[5]~21_combout\ : std_logic;
SIGNAL \dispo[5]~23_combout\ : std_logic;
SIGNAL \dispo[5]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[5]~22_combout\ : std_logic;
SIGNAL \M_dispo[6]~input_o\ : std_logic;
SIGNAL \C_dispo[6]~input_o\ : std_logic;
SIGNAL \dispo[6]~25_combout\ : std_logic;
SIGNAL \dispo[6]~27_combout\ : std_logic;
SIGNAL \dispo[6]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[6]~26_combout\ : std_logic;
SIGNAL \M_dispo[7]~input_o\ : std_logic;
SIGNAL \dispo[7]~29_combout\ : std_logic;
SIGNAL \C_dispo[7]~input_o\ : std_logic;
SIGNAL \dispo[7]~31_combout\ : std_logic;
SIGNAL \dispo[7]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[7]~30_combout\ : std_logic;
SIGNAL \M_dispo[8]~input_o\ : std_logic;
SIGNAL \dispo[8]~33_combout\ : std_logic;
SIGNAL \C_dispo[8]~input_o\ : std_logic;
SIGNAL \dispo[8]~35_combout\ : std_logic;
SIGNAL \dispo[8]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[8]~34_combout\ : std_logic;
SIGNAL \M_dispo[9]~input_o\ : std_logic;
SIGNAL \dispo[9]~37_combout\ : std_logic;
SIGNAL \C_dispo[9]~input_o\ : std_logic;
SIGNAL \dispo[9]~39_combout\ : std_logic;
SIGNAL \dispo[9]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[9]~38_combout\ : std_logic;
SIGNAL \M_dispo[10]~input_o\ : std_logic;
SIGNAL \C_dispo[10]~input_o\ : std_logic;
SIGNAL \dispo[10]~41_combout\ : std_logic;
SIGNAL \dispo[10]~43_combout\ : std_logic;
SIGNAL \dispo[10]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[10]~42_combout\ : std_logic;
SIGNAL \M_dispo[11]~input_o\ : std_logic;
SIGNAL \dispo[11]~45_combout\ : std_logic;
SIGNAL \C_dispo[11]~input_o\ : std_logic;
SIGNAL \dispo[11]~47_combout\ : std_logic;
SIGNAL \dispo[11]~reg0_emulated_q\ : std_logic;
SIGNAL \dispo[11]~46_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_charger <= charger;
ww_C_dispo <= C_dispo;
ww_M_dispo <= M_dispo;
dispo <= ww_dispo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X24_Y0_N9
\dispo[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[0]~2_combout\,
	devoe => ww_devoe,
	o => \dispo[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dispo[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[1]~6_combout\,
	devoe => ww_devoe,
	o => \dispo[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\dispo[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[2]~10_combout\,
	devoe => ww_devoe,
	o => \dispo[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dispo[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[3]~14_combout\,
	devoe => ww_devoe,
	o => \dispo[3]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\dispo[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[4]~18_combout\,
	devoe => ww_devoe,
	o => \dispo[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dispo[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[5]~22_combout\,
	devoe => ww_devoe,
	o => \dispo[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dispo[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[6]~26_combout\,
	devoe => ww_devoe,
	o => \dispo[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dispo[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[7]~30_combout\,
	devoe => ww_devoe,
	o => \dispo[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\dispo[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[8]~34_combout\,
	devoe => ww_devoe,
	o => \dispo[8]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\dispo[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[9]~38_combout\,
	devoe => ww_devoe,
	o => \dispo[9]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\dispo[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[10]~42_combout\,
	devoe => ww_devoe,
	o => \dispo[10]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\dispo[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispo[11]~46_combout\,
	devoe => ww_devoe,
	o => \dispo[11]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\M_dispo[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(0),
	o => \M_dispo[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y1_N24
\dispo[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[0]~1_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[0]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~input_o\,
	datab => \dispo[0]~1_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[0]~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N1
\charger~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_charger,
	o => \charger~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\C_dispo[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(0),
	o => \C_dispo[0]~input_o\);

-- Location: LCCOMB_X25_Y1_N8
\dispo[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[0]~3_combout\ = \dispo[0]~1_combout\ $ (((\charger~input_o\ & ((\C_dispo[0]~input_o\))) # (!\charger~input_o\ & (\M_dispo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[0]~input_o\,
	datac => \C_dispo[0]~input_o\,
	datad => \dispo[0]~1_combout\,
	combout => \dispo[0]~3_combout\);

-- Location: FF_X25_Y1_N9
\dispo[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[0]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[0]~reg0_emulated_q\);

-- Location: LCCOMB_X25_Y1_N6
\dispo[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[0]~2_combout\ = (\rst~input_o\ & (\M_dispo[0]~input_o\)) # (!\rst~input_o\ & ((\dispo[0]~1_combout\ $ (\dispo[0]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~input_o\,
	datab => \dispo[0]~1_combout\,
	datac => \rst~input_o\,
	datad => \dispo[0]~reg0_emulated_q\,
	combout => \dispo[0]~2_combout\);

-- Location: IOIBUF_X33_Y15_N8
\M_dispo[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(1),
	o => \M_dispo[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\C_dispo[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(1),
	o => \C_dispo[1]~input_o\);

-- Location: LCCOMB_X32_Y15_N16
\dispo[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[1]~5_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[1]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[1]~input_o\,
	datab => \dispo[1]~5_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[1]~5_combout\);

-- Location: LCCOMB_X32_Y15_N24
\dispo[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[1]~7_combout\ = \dispo[1]~5_combout\ $ (((\charger~input_o\ & ((\C_dispo[1]~input_o\))) # (!\charger~input_o\ & (\M_dispo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[1]~input_o\,
	datab => \C_dispo[1]~input_o\,
	datac => \charger~input_o\,
	datad => \dispo[1]~5_combout\,
	combout => \dispo[1]~7_combout\);

-- Location: FF_X32_Y15_N25
\dispo[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[1]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[1]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y15_N14
\dispo[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[1]~6_combout\ = (\rst~input_o\ & (((\M_dispo[1]~input_o\)))) # (!\rst~input_o\ & (\dispo[1]~reg0_emulated_q\ $ ((\dispo[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[1]~reg0_emulated_q\,
	datac => \dispo[1]~5_combout\,
	datad => \M_dispo[1]~input_o\,
	combout => \dispo[1]~6_combout\);

-- Location: IOIBUF_X33_Y24_N8
\M_dispo[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(2),
	o => \M_dispo[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\C_dispo[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(2),
	o => \C_dispo[2]~input_o\);

-- Location: LCCOMB_X32_Y15_N10
\dispo[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[2]~9_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[2]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[2]~input_o\,
	datac => \dispo[2]~9_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[2]~9_combout\);

-- Location: LCCOMB_X32_Y15_N28
\dispo[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[2]~11_combout\ = \dispo[2]~9_combout\ $ (((\charger~input_o\ & ((\C_dispo[2]~input_o\))) # (!\charger~input_o\ & (\M_dispo[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[2]~input_o\,
	datac => \C_dispo[2]~input_o\,
	datad => \dispo[2]~9_combout\,
	combout => \dispo[2]~11_combout\);

-- Location: FF_X32_Y15_N29
\dispo[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[2]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[2]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y15_N26
\dispo[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[2]~10_combout\ = (\rst~input_o\ & (((\M_dispo[2]~input_o\)))) # (!\rst~input_o\ & (\dispo[2]~reg0_emulated_q\ $ ((\dispo[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[2]~reg0_emulated_q\,
	datac => \dispo[2]~9_combout\,
	datad => \M_dispo[2]~input_o\,
	combout => \dispo[2]~10_combout\);

-- Location: IOIBUF_X33_Y27_N8
\M_dispo[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(3),
	o => \M_dispo[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N12
\dispo[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[3]~13_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[3]~input_o\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[3]~13_combout\,
	datab => \M_dispo[3]~input_o\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[3]~13_combout\);

-- Location: IOIBUF_X33_Y15_N1
\C_dispo[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(3),
	o => \C_dispo[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N20
\dispo[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[3]~15_combout\ = \dispo[3]~13_combout\ $ (((\charger~input_o\ & ((\C_dispo[3]~input_o\))) # (!\charger~input_o\ & (\M_dispo[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[3]~input_o\,
	datac => \C_dispo[3]~input_o\,
	datad => \dispo[3]~13_combout\,
	combout => \dispo[3]~15_combout\);

-- Location: FF_X32_Y15_N21
\dispo[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[3]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[3]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y15_N30
\dispo[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[3]~14_combout\ = (\rst~input_o\ & (((\M_dispo[3]~input_o\)))) # (!\rst~input_o\ & (\dispo[3]~13_combout\ $ ((\dispo[3]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[3]~13_combout\,
	datab => \dispo[3]~reg0_emulated_q\,
	datac => \rst~input_o\,
	datad => \M_dispo[3]~input_o\,
	combout => \dispo[3]~14_combout\);

-- Location: IOIBUF_X33_Y11_N1
\M_dispo[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(4),
	o => \M_dispo[4]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\C_dispo[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(4),
	o => \C_dispo[4]~input_o\);

-- Location: LCCOMB_X32_Y15_N18
\dispo[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[4]~17_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[4]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[4]~input_o\,
	datab => \dispo[4]~17_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[4]~17_combout\);

-- Location: LCCOMB_X32_Y15_N4
\dispo[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[4]~19_combout\ = \dispo[4]~17_combout\ $ (((\charger~input_o\ & ((\C_dispo[4]~input_o\))) # (!\charger~input_o\ & (\M_dispo[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[4]~input_o\,
	datab => \C_dispo[4]~input_o\,
	datac => \charger~input_o\,
	datad => \dispo[4]~17_combout\,
	combout => \dispo[4]~19_combout\);

-- Location: FF_X32_Y15_N5
\dispo[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[4]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y15_N22
\dispo[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[4]~18_combout\ = (\rst~input_o\ & (((\M_dispo[4]~input_o\)))) # (!\rst~input_o\ & (\dispo[4]~reg0_emulated_q\ $ ((\dispo[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[4]~reg0_emulated_q\,
	datac => \dispo[4]~17_combout\,
	datad => \M_dispo[4]~input_o\,
	combout => \dispo[4]~18_combout\);

-- Location: IOIBUF_X31_Y0_N8
\M_dispo[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(5),
	o => \M_dispo[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\C_dispo[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(5),
	o => \C_dispo[5]~input_o\);

-- Location: LCCOMB_X25_Y1_N18
\dispo[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[5]~21_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[5]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[5]~input_o\,
	datac => \dispo[5]~21_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[5]~21_combout\);

-- Location: LCCOMB_X25_Y1_N4
\dispo[5]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[5]~23_combout\ = \dispo[5]~21_combout\ $ (((\charger~input_o\ & ((\C_dispo[5]~input_o\))) # (!\charger~input_o\ & (\M_dispo[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[5]~input_o\,
	datac => \C_dispo[5]~input_o\,
	datad => \dispo[5]~21_combout\,
	combout => \dispo[5]~23_combout\);

-- Location: FF_X25_Y1_N5
\dispo[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[5]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[5]~reg0_emulated_q\);

-- Location: LCCOMB_X25_Y1_N30
\dispo[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[5]~22_combout\ = (\rst~input_o\ & (((\M_dispo[5]~input_o\)))) # (!\rst~input_o\ & (\dispo[5]~reg0_emulated_q\ $ ((\dispo[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[5]~reg0_emulated_q\,
	datac => \dispo[5]~21_combout\,
	datad => \M_dispo[5]~input_o\,
	combout => \dispo[5]~22_combout\);

-- Location: IOIBUF_X29_Y0_N8
\M_dispo[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(6),
	o => \M_dispo[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\C_dispo[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(6),
	o => \C_dispo[6]~input_o\);

-- Location: LCCOMB_X25_Y1_N12
\dispo[6]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[6]~25_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[6]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[6]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[6]~input_o\,
	datac => \dispo[6]~25_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[6]~25_combout\);

-- Location: LCCOMB_X25_Y1_N28
\dispo[6]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[6]~27_combout\ = \dispo[6]~25_combout\ $ (((\charger~input_o\ & ((\C_dispo[6]~input_o\))) # (!\charger~input_o\ & (\M_dispo[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[6]~input_o\,
	datac => \C_dispo[6]~input_o\,
	datad => \dispo[6]~25_combout\,
	combout => \dispo[6]~27_combout\);

-- Location: FF_X25_Y1_N29
\dispo[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[6]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[6]~reg0_emulated_q\);

-- Location: LCCOMB_X25_Y1_N22
\dispo[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[6]~26_combout\ = (\rst~input_o\ & (((\M_dispo[6]~input_o\)))) # (!\rst~input_o\ & (\dispo[6]~reg0_emulated_q\ $ ((\dispo[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[6]~reg0_emulated_q\,
	datac => \dispo[6]~25_combout\,
	datad => \M_dispo[6]~input_o\,
	combout => \dispo[6]~26_combout\);

-- Location: IOIBUF_X22_Y0_N8
\M_dispo[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(7),
	o => \M_dispo[7]~input_o\);

-- Location: LCCOMB_X25_Y1_N2
\dispo[7]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[7]~29_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[7]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[7]~input_o\,
	datac => \dispo[7]~29_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[7]~29_combout\);

-- Location: IOIBUF_X14_Y0_N8
\C_dispo[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(7),
	o => \C_dispo[7]~input_o\);

-- Location: LCCOMB_X25_Y1_N16
\dispo[7]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[7]~31_combout\ = \dispo[7]~29_combout\ $ (((\charger~input_o\ & (\C_dispo[7]~input_o\)) # (!\charger~input_o\ & ((\M_dispo[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \C_dispo[7]~input_o\,
	datac => \M_dispo[7]~input_o\,
	datad => \dispo[7]~29_combout\,
	combout => \dispo[7]~31_combout\);

-- Location: FF_X25_Y1_N17
\dispo[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[7]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[7]~reg0_emulated_q\);

-- Location: LCCOMB_X25_Y1_N26
\dispo[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[7]~30_combout\ = (\rst~input_o\ & (((\M_dispo[7]~input_o\)))) # (!\rst~input_o\ & (\dispo[7]~29_combout\ $ (((\dispo[7]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[7]~29_combout\,
	datab => \rst~input_o\,
	datac => \M_dispo[7]~input_o\,
	datad => \dispo[7]~reg0_emulated_q\,
	combout => \dispo[7]~30_combout\);

-- Location: IOIBUF_X31_Y0_N1
\M_dispo[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(8),
	o => \M_dispo[8]~input_o\);

-- Location: LCCOMB_X25_Y1_N0
\dispo[8]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[8]~33_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[8]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[8]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[8]~input_o\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \dispo[8]~33_combout\,
	combout => \dispo[8]~33_combout\);

-- Location: IOIBUF_X22_Y0_N1
\C_dispo[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(8),
	o => \C_dispo[8]~input_o\);

-- Location: LCCOMB_X25_Y1_N20
\dispo[8]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[8]~35_combout\ = \dispo[8]~33_combout\ $ (((\charger~input_o\ & ((\C_dispo[8]~input_o\))) # (!\charger~input_o\ & (\M_dispo[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \M_dispo[8]~input_o\,
	datac => \C_dispo[8]~input_o\,
	datad => \dispo[8]~33_combout\,
	combout => \dispo[8]~35_combout\);

-- Location: FF_X25_Y1_N21
\dispo[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[8]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[8]~reg0_emulated_q\);

-- Location: LCCOMB_X25_Y1_N10
\dispo[8]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[8]~34_combout\ = (\rst~input_o\ & (((\M_dispo[8]~input_o\)))) # (!\rst~input_o\ & (\dispo[8]~33_combout\ $ ((\dispo[8]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[8]~33_combout\,
	datac => \dispo[8]~reg0_emulated_q\,
	datad => \M_dispo[8]~input_o\,
	combout => \dispo[8]~34_combout\);

-- Location: IOIBUF_X33_Y16_N22
\M_dispo[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(9),
	o => \M_dispo[9]~input_o\);

-- Location: LCCOMB_X32_Y14_N16
\dispo[9]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[9]~37_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[9]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[9]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[9]~input_o\,
	datac => \dispo[9]~37_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[9]~37_combout\);

-- Location: IOIBUF_X33_Y10_N8
\C_dispo[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(9),
	o => \C_dispo[9]~input_o\);

-- Location: LCCOMB_X32_Y14_N24
\dispo[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[9]~39_combout\ = \dispo[9]~37_combout\ $ (((\charger~input_o\ & (\C_dispo[9]~input_o\)) # (!\charger~input_o\ & ((\M_dispo[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[9]~input_o\,
	datab => \charger~input_o\,
	datac => \M_dispo[9]~input_o\,
	datad => \dispo[9]~37_combout\,
	combout => \dispo[9]~39_combout\);

-- Location: FF_X32_Y14_N25
\dispo[9]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[9]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[9]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y14_N18
\dispo[9]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[9]~38_combout\ = (\rst~input_o\ & (((\M_dispo[9]~input_o\)))) # (!\rst~input_o\ & (\dispo[9]~37_combout\ $ (((\dispo[9]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[9]~37_combout\,
	datab => \rst~input_o\,
	datac => \M_dispo[9]~input_o\,
	datad => \dispo[9]~reg0_emulated_q\,
	combout => \dispo[9]~38_combout\);

-- Location: IOIBUF_X33_Y16_N15
\M_dispo[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(10),
	o => \M_dispo[10]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\C_dispo[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(10),
	o => \C_dispo[10]~input_o\);

-- Location: LCCOMB_X32_Y14_N10
\dispo[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[10]~41_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[10]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[10]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[10]~input_o\,
	datac => \dispo[10]~41_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[10]~41_combout\);

-- Location: LCCOMB_X32_Y14_N28
\dispo[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[10]~43_combout\ = \dispo[10]~41_combout\ $ (((\charger~input_o\ & (\C_dispo[10]~input_o\)) # (!\charger~input_o\ & ((\M_dispo[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[10]~input_o\,
	datab => \charger~input_o\,
	datac => \M_dispo[10]~input_o\,
	datad => \dispo[10]~41_combout\,
	combout => \dispo[10]~43_combout\);

-- Location: FF_X32_Y14_N29
\dispo[10]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[10]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[10]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y14_N14
\dispo[10]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[10]~42_combout\ = (\rst~input_o\ & (\M_dispo[10]~input_o\)) # (!\rst~input_o\ & ((\dispo[10]~reg0_emulated_q\ $ (\dispo[10]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[10]~input_o\,
	datab => \dispo[10]~reg0_emulated_q\,
	datac => \dispo[10]~41_combout\,
	datad => \rst~input_o\,
	combout => \dispo[10]~42_combout\);

-- Location: IOIBUF_X33_Y10_N1
\M_dispo[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_dispo(11),
	o => \M_dispo[11]~input_o\);

-- Location: LCCOMB_X32_Y14_N0
\dispo[11]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[11]~45_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[11]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[11]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[11]~input_o\,
	datac => \dispo[11]~45_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \dispo[11]~45_combout\);

-- Location: IOIBUF_X33_Y14_N8
\C_dispo[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(11),
	o => \C_dispo[11]~input_o\);

-- Location: LCCOMB_X32_Y14_N8
\dispo[11]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[11]~47_combout\ = \dispo[11]~45_combout\ $ (((\charger~input_o\ & (\C_dispo[11]~input_o\)) # (!\charger~input_o\ & ((\M_dispo[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[11]~input_o\,
	datab => \charger~input_o\,
	datac => \M_dispo[11]~input_o\,
	datad => \dispo[11]~45_combout\,
	combout => \dispo[11]~47_combout\);

-- Location: FF_X32_Y14_N9
\dispo[11]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dispo[11]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispo[11]~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y14_N26
\dispo[11]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dispo[11]~46_combout\ = (\rst~input_o\ & (((\M_dispo[11]~input_o\)))) # (!\rst~input_o\ & (\dispo[11]~45_combout\ $ (((\dispo[11]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[11]~45_combout\,
	datab => \rst~input_o\,
	datac => \M_dispo[11]~input_o\,
	datad => \dispo[11]~reg0_emulated_q\,
	combout => \dispo[11]~46_combout\);

ww_dispo(0) <= \dispo[0]~output_o\;

ww_dispo(1) <= \dispo[1]~output_o\;

ww_dispo(2) <= \dispo[2]~output_o\;

ww_dispo(3) <= \dispo[3]~output_o\;

ww_dispo(4) <= \dispo[4]~output_o\;

ww_dispo(5) <= \dispo[5]~output_o\;

ww_dispo(6) <= \dispo[6]~output_o\;

ww_dispo(7) <= \dispo[7]~output_o\;

ww_dispo(8) <= \dispo[8]~output_o\;

ww_dispo(9) <= \dispo[9]~output_o\;

ww_dispo(10) <= \dispo[10]~output_o\;

ww_dispo(11) <= \dispo[11]~output_o\;
END structure;


