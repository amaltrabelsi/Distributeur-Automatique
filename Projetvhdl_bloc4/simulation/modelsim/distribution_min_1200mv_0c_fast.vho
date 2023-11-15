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

-- DATE "11/05/2023 18:40:45"

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

ENTITY 	distribution IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	p1 : IN std_logic;
	p2 : IN std_logic;
	p3 : IN std_logic;
	p4 : IN std_logic;
	distribuer : IN std_logic;
	d1 : OUT std_logic;
	d2 : OUT std_logic;
	d3 : OUT std_logic;
	d4 : OUT std_logic;
	fin : OUT std_logic
	);
END distribution;

-- Design Ports Information
-- d1	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distribuer	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p4	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF distribution IS
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
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_p3 : std_logic;
SIGNAL ww_p4 : std_logic;
SIGNAL ww_distribuer : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \etat_futur.terminer~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \fin~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \p2~input_o\ : std_logic;
SIGNAL \p3~input_o\ : std_logic;
SIGNAL \p1~input_o\ : std_logic;
SIGNAL \etat_futur.DP4~0_combout\ : std_logic;
SIGNAL \p4~input_o\ : std_logic;
SIGNAL \distribuer~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \etat_futur.terminer_139~combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \etat_present.terminer~q\ : std_logic;
SIGNAL \etat_futur.debut_208~combout\ : std_logic;
SIGNAL \etat_present.debut~0_combout\ : std_logic;
SIGNAL \etat_present.debut~q\ : std_logic;
SIGNAL \etat_futur.terminer~0_combout\ : std_logic;
SIGNAL \etat_futur.terminer~0clkctrl_outclk\ : std_logic;
SIGNAL \etat_futur.DP1_191~combout\ : std_logic;
SIGNAL \etat_present.DP1~q\ : std_logic;
SIGNAL \etat_futur.DP2~0_combout\ : std_logic;
SIGNAL \etat_futur.DP2_178~combout\ : std_logic;
SIGNAL \etat_present.DP2~q\ : std_logic;
SIGNAL \etat_futur.DP3~0_combout\ : std_logic;
SIGNAL \etat_futur.DP3_165~combout\ : std_logic;
SIGNAL \etat_present.DP3~q\ : std_logic;
SIGNAL \etat_futur.DP4_152~combout\ : std_logic;
SIGNAL \etat_present.DP4~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_p1 <= p1;
ww_p2 <= p2;
ww_p3 <= p3;
ww_p4 <= p4;
ww_distribuer <= distribuer;
d1 <= ww_d1;
d2 <= ww_d2;
d3 <= ww_d3;
d4 <= ww_d4;
fin <= ww_fin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\etat_futur.terminer~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \etat_futur.terminer~0_combout\);

\Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~0_combout\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X33_Y12_N9
\d1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_present.DP1~q\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\d2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_present.DP2~q\,
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\d3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_present.DP3~q\,
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\d4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_present.DP4~q\,
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_present.terminer~q\,
	devoe => ww_devoe,
	o => \fin~output_o\);

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

-- Location: LCCOMB_X15_Y1_N12
\WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\etat_present.terminer~q\) # (!\etat_present.debut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_present.debut~q\,
	datab => \etat_present.terminer~q\,
	combout => \WideOr0~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\p2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2,
	o => \p2~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\p3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p3,
	o => \p3~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\p1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1,
	o => \p1~input_o\);

-- Location: LCCOMB_X15_Y1_N8
\etat_futur.DP4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP4~0_combout\ = (!\p2~input_o\ & (!\p3~input_o\ & !\p1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~input_o\,
	datab => \p3~input_o\,
	datac => \p1~input_o\,
	combout => \etat_futur.DP4~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\p4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p4,
	o => \p4~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\distribuer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distribuer,
	o => \distribuer~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\etat_present.debut~q\) # ((\distribuer~input_o\ & ((\p4~input_o\) # (!\etat_futur.DP4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_futur.DP4~0_combout\,
	datab => \p4~input_o\,
	datac => \distribuer~input_o\,
	datad => \etat_present.debut~q\,
	combout => \Selector0~0_combout\);

-- Location: CLKCTRL_G16
\Selector0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N14
\etat_futur.terminer_139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.terminer_139~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & (!\WideOr0~0_combout\)) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & ((\etat_futur.terminer_139~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \etat_futur.terminer_139~combout\,
	combout => \etat_futur.terminer_139~combout\);

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

-- Location: FF_X15_Y1_N15
\etat_present.terminer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_futur.terminer_139~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.terminer~q\);

-- Location: LCCOMB_X15_Y1_N28
\etat_futur.debut_208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.debut_208~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & (\etat_present.terminer~q\)) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & ((\etat_futur.debut_208~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat_present.terminer~q\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \etat_futur.debut_208~combout\,
	combout => \etat_futur.debut_208~combout\);

-- Location: LCCOMB_X15_Y1_N6
\etat_present.debut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_present.debut~0_combout\ = !\etat_futur.debut_208~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \etat_futur.debut_208~combout\,
	combout => \etat_present.debut~0_combout\);

-- Location: FF_X15_Y1_N7
\etat_present.debut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \etat_present.debut~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.debut~q\);

-- Location: LCCOMB_X15_Y1_N24
\etat_futur.terminer~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.terminer~0_combout\ = (\distribuer~input_o\ & ((\p4~input_o\) # (!\etat_futur.DP4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p4~input_o\,
	datac => \etat_futur.DP4~0_combout\,
	datad => \distribuer~input_o\,
	combout => \etat_futur.terminer~0_combout\);

-- Location: CLKCTRL_G18
\etat_futur.terminer~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \etat_futur.terminer~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \etat_futur.terminer~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N4
\etat_futur.DP1_191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP1_191~combout\ = (!\etat_present.debut~q\ & ((GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & (\p1~input_o\)) # (!GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & ((\etat_futur.DP1_191~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_present.debut~q\,
	datab => \p1~input_o\,
	datac => \etat_futur.DP1_191~combout\,
	datad => \etat_futur.terminer~0clkctrl_outclk\,
	combout => \etat_futur.DP1_191~combout\);

-- Location: FF_X15_Y1_N5
\etat_present.DP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_futur.DP1_191~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.DP1~q\);

-- Location: LCCOMB_X15_Y1_N18
\etat_futur.DP2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP2~0_combout\ = (!\p1~input_o\ & \p2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1~input_o\,
	datac => \p2~input_o\,
	combout => \etat_futur.DP2~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\etat_futur.DP2_178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP2_178~combout\ = (!\etat_present.debut~q\ & ((GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & ((\etat_futur.DP2~0_combout\))) # (!GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & (\etat_futur.DP2_178~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_futur.DP2_178~combout\,
	datab => \etat_futur.DP2~0_combout\,
	datac => \etat_present.debut~q\,
	datad => \etat_futur.terminer~0clkctrl_outclk\,
	combout => \etat_futur.DP2_178~combout\);

-- Location: FF_X15_Y1_N23
\etat_present.DP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_futur.DP2_178~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.DP2~q\);

-- Location: LCCOMB_X15_Y1_N10
\etat_futur.DP3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP3~0_combout\ = (!\p2~input_o\ & (\p3~input_o\ & !\p1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~input_o\,
	datab => \p3~input_o\,
	datac => \p1~input_o\,
	combout => \etat_futur.DP3~0_combout\);

-- Location: LCCOMB_X15_Y1_N30
\etat_futur.DP3_165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP3_165~combout\ = (!\etat_present.debut~q\ & ((GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & (\etat_futur.DP3~0_combout\)) # (!GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & ((\etat_futur.DP3_165~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_futur.DP3~0_combout\,
	datab => \etat_present.debut~q\,
	datac => \etat_futur.DP3_165~combout\,
	datad => \etat_futur.terminer~0clkctrl_outclk\,
	combout => \etat_futur.DP3_165~combout\);

-- Location: FF_X15_Y1_N31
\etat_present.DP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_futur.DP3_165~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.DP3~q\);

-- Location: LCCOMB_X15_Y1_N16
\etat_futur.DP4_152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \etat_futur.DP4_152~combout\ = (!\etat_present.debut~q\ & ((GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & (\etat_futur.DP4~0_combout\)) # (!GLOBAL(\etat_futur.terminer~0clkctrl_outclk\) & ((\etat_futur.DP4_152~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_futur.DP4~0_combout\,
	datab => \etat_futur.DP4_152~combout\,
	datac => \etat_present.debut~q\,
	datad => \etat_futur.terminer~0clkctrl_outclk\,
	combout => \etat_futur.DP4_152~combout\);

-- Location: FF_X15_Y1_N17
\etat_present.DP4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_futur.DP4_152~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat_present.DP4~q\);

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;

ww_d3 <= \d3~output_o\;

ww_d4 <= \d4~output_o\;

ww_fin <= \fin~output_o\;
END structure;


