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

-- DATE "11/05/2023 17:05:13"

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

ENTITY 	DistributionAutoProduit IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	clavier : IN std_logic_vector(3 DOWNTO 0);
	valide : IN std_logic;
	annuler : IN std_logic;
	request : OUT std_logic;
	p1 : OUT std_logic;
	p2 : OUT std_logic;
	p3 : OUT std_logic;
	p4 : OUT std_logic
	);
END DistributionAutoProduit;

-- Design Ports Information
-- request	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p4	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valide	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- annuler	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DistributionAutoProduit IS
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
SIGNAL ww_clavier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valide : std_logic;
SIGNAL ww_annuler : std_logic;
SIGNAL ww_request : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_p3 : std_logic;
SIGNAL ww_p4 : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \request~output_o\ : std_logic;
SIGNAL \p1~output_o\ : std_logic;
SIGNAL \p2~output_o\ : std_logic;
SIGNAL \p3~output_o\ : std_logic;
SIGNAL \p4~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \valide~input_o\ : std_logic;
SIGNAL \annuler~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \request~reg0_q\ : std_logic;
SIGNAL \clavier[0]~input_o\ : std_logic;
SIGNAL \clavier[3]~input_o\ : std_logic;
SIGNAL \clavier[2]~input_o\ : std_logic;
SIGNAL \clavier[1]~input_o\ : std_logic;
SIGNAL \p4~0_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \p1~reg0_q\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \p2~0_combout\ : std_logic;
SIGNAL \p2~reg0_q\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \p3~reg0_q\ : std_logic;
SIGNAL \p4~1_combout\ : std_logic;
SIGNAL \p4~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_clavier <= clavier;
ww_valide <= valide;
ww_annuler <= annuler;
request <= ww_request;
p1 <= ww_p1;
p2 <= ww_p2;
p3 <= ww_p3;
p4 <= ww_p4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X20_Y0_N2
\request~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \request~reg0_q\,
	devoe => ww_devoe,
	o => \request~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\p1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1~reg0_q\,
	devoe => ww_devoe,
	o => \p1~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\p2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p2~reg0_q\,
	devoe => ww_devoe,
	o => \p2~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\p3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p3~reg0_q\,
	devoe => ww_devoe,
	o => \p3~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\p4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p4~reg0_q\,
	devoe => ww_devoe,
	o => \p4~output_o\);

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

-- Location: IOIBUF_X22_Y0_N1
\valide~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valide,
	o => \valide~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\annuler~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_annuler,
	o => \annuler~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\valide~input_o\ & !\annuler~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valide~input_o\,
	datad => \annuler~input_o\,
	combout => \process_0~0_combout\);

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

-- Location: FF_X15_Y1_N17
\request~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \request~reg0_q\);

-- Location: IOIBUF_X12_Y0_N1
\clavier[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(0),
	o => \clavier[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\clavier[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(3),
	o => \clavier[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\clavier[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(2),
	o => \clavier[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\clavier[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(1),
	o => \clavier[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N2
\p4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p4~0_combout\ = (!\clavier[2]~input_o\ & (!\clavier[1]~input_o\ & (\valide~input_o\ & !\annuler~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[2]~input_o\,
	datab => \clavier[1]~input_o\,
	datac => \valide~input_o\,
	datad => \annuler~input_o\,
	combout => \p4~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\p1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\clavier[0]~input_o\ & (!\clavier[3]~input_o\ & \p4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[0]~input_o\,
	datab => \clavier[3]~input_o\,
	datad => \p4~0_combout\,
	combout => \p1~0_combout\);

-- Location: FF_X15_Y1_N19
\p1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1~reg0_q\);

-- Location: LCCOMB_X15_Y1_N12
\p3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p3~0_combout\ = (\valide~input_o\ & (!\clavier[3]~input_o\ & (!\clavier[0]~input_o\ & !\annuler~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valide~input_o\,
	datab => \clavier[3]~input_o\,
	datac => \clavier[0]~input_o\,
	datad => \annuler~input_o\,
	combout => \p3~0_combout\);

-- Location: LCCOMB_X15_Y1_N4
\p2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p2~0_combout\ = (\p3~0_combout\ & (!\clavier[2]~input_o\ & \clavier[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~0_combout\,
	datab => \clavier[2]~input_o\,
	datad => \clavier[1]~input_o\,
	combout => \p2~0_combout\);

-- Location: FF_X15_Y1_N5
\p2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2~reg0_q\);

-- Location: LCCOMB_X15_Y1_N6
\p3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\p3~0_combout\ & (\clavier[2]~input_o\ & !\clavier[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~0_combout\,
	datab => \clavier[2]~input_o\,
	datad => \clavier[1]~input_o\,
	combout => \p3~1_combout\);

-- Location: FF_X15_Y1_N7
\p3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p3~reg0_q\);

-- Location: LCCOMB_X15_Y1_N24
\p4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p4~1_combout\ = (!\clavier[0]~input_o\ & (\clavier[3]~input_o\ & \p4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[0]~input_o\,
	datab => \clavier[3]~input_o\,
	datad => \p4~0_combout\,
	combout => \p4~1_combout\);

-- Location: FF_X15_Y1_N25
\p4~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p4~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p4~reg0_q\);

ww_request <= \request~output_o\;

ww_p1 <= \p1~output_o\;

ww_p2 <= \p2~output_o\;

ww_p3 <= \p3~output_o\;

ww_p4 <= \p4~output_o\;
END structure;


