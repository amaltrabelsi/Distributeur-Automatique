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

-- DATE "11/05/2023 18:06:12"

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

ENTITY 	gestion IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	p1 : IN std_logic;
	p2 : IN std_logic;
	p3 : IN std_logic;
	p4 : IN std_logic;
	request : IN std_logic;
	dispo : IN std_logic_vector(11 DOWNTO 0);
	M_dispo : OUT std_logic_vector(11 DOWNTO 0);
	alarme_repture_stock : OUT std_logic;
	distribuer : OUT std_logic
	);
END gestion;

-- Design Ports Information
-- M_dispo[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[6]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[10]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_dispo[11]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarme_repture_stock	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distribuer	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[7]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[10]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispo[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p4	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p3	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- request	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion IS
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
SIGNAL ww_request : std_logic;
SIGNAL ww_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_M_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_alarme_repture_stock : std_logic;
SIGNAL ww_distribuer : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M_dispo[0]~output_o\ : std_logic;
SIGNAL \M_dispo[1]~output_o\ : std_logic;
SIGNAL \M_dispo[2]~output_o\ : std_logic;
SIGNAL \M_dispo[3]~output_o\ : std_logic;
SIGNAL \M_dispo[4]~output_o\ : std_logic;
SIGNAL \M_dispo[5]~output_o\ : std_logic;
SIGNAL \M_dispo[6]~output_o\ : std_logic;
SIGNAL \M_dispo[7]~output_o\ : std_logic;
SIGNAL \M_dispo[8]~output_o\ : std_logic;
SIGNAL \M_dispo[9]~output_o\ : std_logic;
SIGNAL \M_dispo[10]~output_o\ : std_logic;
SIGNAL \M_dispo[11]~output_o\ : std_logic;
SIGNAL \alarme_repture_stock~output_o\ : std_logic;
SIGNAL \distribuer~output_o\ : std_logic;
SIGNAL \dispo[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dispo[6]~input_o\ : std_logic;
SIGNAL \dispo[7]~input_o\ : std_logic;
SIGNAL \dispo[8]~input_o\ : std_logic;
SIGNAL \M_dispo[0]~49_combout\ : std_logic;
SIGNAL \p3~input_o\ : std_logic;
SIGNAL \p4~input_o\ : std_logic;
SIGNAL \dispo[11]~input_o\ : std_logic;
SIGNAL \dispo[9]~input_o\ : std_logic;
SIGNAL \dispo[10]~input_o\ : std_logic;
SIGNAL \M_dispo[0]~48_combout\ : std_logic;
SIGNAL \M_dispo[3]~50_combout\ : std_logic;
SIGNAL \dispo[3]~input_o\ : std_logic;
SIGNAL \dispo[4]~input_o\ : std_logic;
SIGNAL \dispo[5]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \p2~input_o\ : std_logic;
SIGNAL \M_dispo[0]~51_combout\ : std_logic;
SIGNAL \dispo[1]~input_o\ : std_logic;
SIGNAL \dispo[2]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \M_dispo[0]~1_combout\ : std_logic;
SIGNAL \M_dispo[0]~3_combout\ : std_logic;
SIGNAL \request~input_o\ : std_logic;
SIGNAL \M_dispo[0]~52_combout\ : std_logic;
SIGNAL \p1~input_o\ : std_logic;
SIGNAL \M_dispo[0]~53_combout\ : std_logic;
SIGNAL \M_dispo[0]~54_combout\ : std_logic;
SIGNAL \M_dispo[0]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[0]~2_combout\ : std_logic;
SIGNAL \M_dispo[1]~5_combout\ : std_logic;
SIGNAL \M_dispo[0]~55_combout\ : std_logic;
SIGNAL \M_dispo[1]~7_combout\ : std_logic;
SIGNAL \M_dispo[1]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[1]~6_combout\ : std_logic;
SIGNAL \M_dispo[2]~9_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \M_dispo[2]~11_combout\ : std_logic;
SIGNAL \M_dispo[2]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[2]~10_combout\ : std_logic;
SIGNAL \M_dispo~56_combout\ : std_logic;
SIGNAL \M_dispo[3]~13_combout\ : std_logic;
SIGNAL \M_dispo[3]~15_combout\ : std_logic;
SIGNAL \M_dispo[3]~57_combout\ : std_logic;
SIGNAL \M_dispo[3]~58_combout\ : std_logic;
SIGNAL \M_dispo[3]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[3]~14_combout\ : std_logic;
SIGNAL \M_dispo[3]~59_combout\ : std_logic;
SIGNAL \M_dispo[4]~17_combout\ : std_logic;
SIGNAL \M_dispo[4]~19_combout\ : std_logic;
SIGNAL \M_dispo[4]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[4]~18_combout\ : std_logic;
SIGNAL \M_dispo[5]~21_combout\ : std_logic;
SIGNAL \M_dispo[5]~23_combout\ : std_logic;
SIGNAL \M_dispo[5]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[5]~22_combout\ : std_logic;
SIGNAL \M_dispo[6]~25_combout\ : std_logic;
SIGNAL \M_dispo[6]~60_combout\ : std_logic;
SIGNAL \M_dispo[6]~27_combout\ : std_logic;
SIGNAL \M_dispo[6]~61_combout\ : std_logic;
SIGNAL \M_dispo[6]~62_combout\ : std_logic;
SIGNAL \M_dispo[6]~63_combout\ : std_logic;
SIGNAL \M_dispo[6]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[6]~26_combout\ : std_logic;
SIGNAL \M_dispo[7]~29_combout\ : std_logic;
SIGNAL \M_dispo[7]~31_combout\ : std_logic;
SIGNAL \M_dispo[7]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[7]~30_combout\ : std_logic;
SIGNAL \M_dispo[8]~33_combout\ : std_logic;
SIGNAL \M_dispo[0]~64_combout\ : std_logic;
SIGNAL \M_dispo[8]~35_combout\ : std_logic;
SIGNAL \M_dispo[8]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[8]~34_combout\ : std_logic;
SIGNAL \M_dispo[9]~37_combout\ : std_logic;
SIGNAL \M_dispo[9]~39_combout\ : std_logic;
SIGNAL \M_dispo[0]~65_combout\ : std_logic;
SIGNAL \M_dispo[9]~66_combout\ : std_logic;
SIGNAL \M_dispo[9]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[9]~38_combout\ : std_logic;
SIGNAL \M_dispo[9]~67_combout\ : std_logic;
SIGNAL \M_dispo[10]~41_combout\ : std_logic;
SIGNAL \M_dispo[10]~43_combout\ : std_logic;
SIGNAL \M_dispo[10]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[10]~42_combout\ : std_logic;
SIGNAL \M_dispo[11]~45_combout\ : std_logic;
SIGNAL \M_dispo[0]~68_combout\ : std_logic;
SIGNAL \M_dispo[11]~47_combout\ : std_logic;
SIGNAL \M_dispo[11]~reg0_emulated_q\ : std_logic;
SIGNAL \M_dispo[11]~46_combout\ : std_logic;
SIGNAL \alarme_repture_stock~0_combout\ : std_logic;
SIGNAL \alarme_repture_stock~2_combout\ : std_logic;
SIGNAL \alarme_repture_stock~1_combout\ : std_logic;
SIGNAL \alarme_repture_stock~3_combout\ : std_logic;
SIGNAL \alarme_repture_stock~4_combout\ : std_logic;
SIGNAL \alarme_repture_stock~5_combout\ : std_logic;
SIGNAL \alarme_repture_stock~reg0_q\ : std_logic;
SIGNAL \distribuer~0_combout\ : std_logic;
SIGNAL \distribuer~1_combout\ : std_logic;
SIGNAL \distribuer~2_combout\ : std_logic;
SIGNAL \distribuer~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_p1 <= p1;
ww_p2 <= p2;
ww_p3 <= p3;
ww_p4 <= p4;
ww_request <= request;
ww_dispo <= dispo;
M_dispo <= ww_M_dispo;
alarme_repture_stock <= ww_alarme_repture_stock;
distribuer <= ww_distribuer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X22_Y0_N2
\M_dispo[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[0]~2_combout\,
	devoe => ww_devoe,
	o => \M_dispo[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\M_dispo[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[1]~6_combout\,
	devoe => ww_devoe,
	o => \M_dispo[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\M_dispo[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[2]~10_combout\,
	devoe => ww_devoe,
	o => \M_dispo[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\M_dispo[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[3]~14_combout\,
	devoe => ww_devoe,
	o => \M_dispo[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\M_dispo[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[4]~18_combout\,
	devoe => ww_devoe,
	o => \M_dispo[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\M_dispo[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[5]~22_combout\,
	devoe => ww_devoe,
	o => \M_dispo[5]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\M_dispo[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[6]~26_combout\,
	devoe => ww_devoe,
	o => \M_dispo[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\M_dispo[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[7]~30_combout\,
	devoe => ww_devoe,
	o => \M_dispo[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\M_dispo[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[8]~34_combout\,
	devoe => ww_devoe,
	o => \M_dispo[8]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\M_dispo[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[9]~38_combout\,
	devoe => ww_devoe,
	o => \M_dispo[9]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\M_dispo[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[10]~42_combout\,
	devoe => ww_devoe,
	o => \M_dispo[10]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\M_dispo[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M_dispo[11]~46_combout\,
	devoe => ww_devoe,
	o => \M_dispo[11]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\alarme_repture_stock~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarme_repture_stock~reg0_q\,
	devoe => ww_devoe,
	o => \alarme_repture_stock~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\distribuer~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distribuer~reg0_q\,
	devoe => ww_devoe,
	o => \distribuer~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\dispo[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(0),
	o => \dispo[0]~input_o\);

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

-- Location: IOIBUF_X20_Y31_N8
\dispo[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(6),
	o => \dispo[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\dispo[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(7),
	o => \dispo[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\dispo[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(8),
	o => \dispo[8]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\M_dispo[0]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~49_combout\ = (!\dispo[6]~input_o\ & (!\dispo[7]~input_o\ & !\dispo[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[6]~input_o\,
	datac => \dispo[7]~input_o\,
	datad => \dispo[8]~input_o\,
	combout => \M_dispo[0]~49_combout\);

-- Location: IOIBUF_X22_Y0_N8
\p3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p3,
	o => \p3~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\p4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p4,
	o => \p4~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\dispo[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(11),
	o => \dispo[11]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\dispo[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(9),
	o => \dispo[9]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\dispo[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(10),
	o => \dispo[10]~input_o\);

-- Location: LCCOMB_X14_Y4_N24
\M_dispo[0]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~48_combout\ = (!\dispo[11]~input_o\ & (!\dispo[9]~input_o\ & !\dispo[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[11]~input_o\,
	datac => \dispo[9]~input_o\,
	datad => \dispo[10]~input_o\,
	combout => \M_dispo[0]~48_combout\);

-- Location: LCCOMB_X14_Y1_N24
\M_dispo[3]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~50_combout\ = (\M_dispo[0]~49_combout\ & (!\p3~input_o\ & ((!\M_dispo[0]~48_combout\) # (!\p4~input_o\)))) # (!\M_dispo[0]~49_combout\ & (((!\M_dispo[0]~48_combout\) # (!\p4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~49_combout\,
	datab => \p3~input_o\,
	datac => \p4~input_o\,
	datad => \M_dispo[0]~48_combout\,
	combout => \M_dispo[3]~50_combout\);

-- Location: IOIBUF_X20_Y0_N1
\dispo[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(3),
	o => \dispo[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\dispo[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(4),
	o => \dispo[4]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\dispo[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(5),
	o => \dispo[5]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\dispo[3]~input_o\) # ((\dispo[4]~input_o\) # (\dispo[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[3]~input_o\,
	datac => \dispo[4]~input_o\,
	datad => \dispo[5]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\p2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2,
	o => \p2~input_o\);

-- Location: LCCOMB_X15_Y1_N4
\M_dispo[0]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~51_combout\ = (\M_dispo[3]~50_combout\ & ((\LessThan1~0_combout\) # (!\p2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[3]~50_combout\,
	datac => \LessThan1~0_combout\,
	datad => \p2~input_o\,
	combout => \M_dispo[0]~51_combout\);

-- Location: IOIBUF_X16_Y0_N1
\dispo[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(1),
	o => \dispo[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\dispo[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispo(2),
	o => \dispo[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N14
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\dispo[1]~input_o\) # ((\dispo[2]~input_o\) # (\dispo[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[1]~input_o\,
	datab => \dispo[2]~input_o\,
	datad => \dispo[0]~input_o\,
	combout => \LessThan0~0_combout\);

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

-- Location: LCCOMB_X15_Y1_N18
\M_dispo[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~1_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[0]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[0]~input_o\,
	datac => \M_dispo[0]~1_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[0]~1_combout\);

-- Location: LCCOMB_X15_Y1_N20
\M_dispo[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~3_combout\ = \dispo[0]~input_o\ $ (\M_dispo[0]~1_combout\ $ (((\M_dispo[0]~51_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[0]~input_o\,
	datab => \M_dispo[0]~51_combout\,
	datac => \LessThan0~0_combout\,
	datad => \M_dispo[0]~1_combout\,
	combout => \M_dispo[0]~3_combout\);

-- Location: IOIBUF_X14_Y0_N1
\request~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_request,
	o => \request~input_o\);

-- Location: LCCOMB_X16_Y1_N26
\M_dispo[0]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~52_combout\ = (!\dispo[3]~input_o\ & (!\dispo[4]~input_o\ & \p2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[3]~input_o\,
	datac => \dispo[4]~input_o\,
	datad => \p2~input_o\,
	combout => \M_dispo[0]~52_combout\);

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

-- Location: LCCOMB_X16_Y1_N4
\M_dispo[0]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~53_combout\ = ((\p1~input_o\) # ((!\dispo[5]~input_o\ & \M_dispo[0]~52_combout\))) # (!\M_dispo[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[5]~input_o\,
	datab => \M_dispo[3]~50_combout\,
	datac => \M_dispo[0]~52_combout\,
	datad => \p1~input_o\,
	combout => \M_dispo[0]~53_combout\);

-- Location: LCCOMB_X15_Y1_N28
\M_dispo[0]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~54_combout\ = (\request~input_o\ & \M_dispo[0]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \request~input_o\,
	datad => \M_dispo[0]~53_combout\,
	combout => \M_dispo[0]~54_combout\);

-- Location: FF_X15_Y1_N21
\M_dispo[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[0]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[0]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y1_N22
\M_dispo[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~2_combout\ = (\rst~input_o\ & (\dispo[0]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[0]~reg0_emulated_q\ $ (\M_dispo[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[0]~input_o\,
	datab => \M_dispo[0]~reg0_emulated_q\,
	datac => \M_dispo[0]~1_combout\,
	datad => \rst~input_o\,
	combout => \M_dispo[0]~2_combout\);

-- Location: LCCOMB_X15_Y1_N24
\M_dispo[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[1]~5_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[1]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[1]~input_o\,
	datab => \M_dispo[1]~5_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[1]~5_combout\);

-- Location: LCCOMB_X15_Y1_N30
\M_dispo[0]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~55_combout\ = (((!\LessThan1~0_combout\ & \p2~input_o\)) # (!\M_dispo[3]~50_combout\)) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \M_dispo[3]~50_combout\,
	datac => \LessThan1~0_combout\,
	datad => \p2~input_o\,
	combout => \M_dispo[0]~55_combout\);

-- Location: LCCOMB_X15_Y1_N16
\M_dispo[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[1]~7_combout\ = \dispo[1]~input_o\ $ (\M_dispo[1]~5_combout\ $ (((!\dispo[0]~input_o\ & !\M_dispo[0]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[1]~input_o\,
	datab => \dispo[0]~input_o\,
	datac => \M_dispo[0]~55_combout\,
	datad => \M_dispo[1]~5_combout\,
	combout => \M_dispo[1]~7_combout\);

-- Location: FF_X15_Y1_N17
\M_dispo[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[1]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[1]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y1_N6
\M_dispo[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[1]~6_combout\ = (\rst~input_o\ & (\dispo[1]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[1]~5_combout\ $ (\M_dispo[1]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[1]~input_o\,
	datab => \rst~input_o\,
	datac => \M_dispo[1]~5_combout\,
	datad => \M_dispo[1]~reg0_emulated_q\,
	combout => \M_dispo[1]~6_combout\);

-- Location: LCCOMB_X15_Y1_N10
\M_dispo[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[2]~9_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[2]~input_o\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[2]~9_combout\,
	datab => \dispo[2]~input_o\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[2]~9_combout\);

-- Location: LCCOMB_X15_Y1_N12
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\dispo[1]~input_o\ & !\dispo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[1]~input_o\,
	datad => \dispo[0]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y1_N0
\M_dispo[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[2]~11_combout\ = \M_dispo[2]~9_combout\ $ (((\dispo[2]~input_o\ & ((!\M_dispo[0]~51_combout\) # (!\LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \dispo[2]~input_o\,
	datac => \M_dispo[0]~51_combout\,
	datad => \M_dispo[2]~9_combout\,
	combout => \M_dispo[2]~11_combout\);

-- Location: FF_X15_Y1_N1
\M_dispo[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[2]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[2]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y1_N2
\M_dispo[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[2]~10_combout\ = (\rst~input_o\ & (((\dispo[2]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[2]~9_combout\ $ ((\M_dispo[2]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[2]~9_combout\,
	datab => \rst~input_o\,
	datac => \M_dispo[2]~reg0_emulated_q\,
	datad => \dispo[2]~input_o\,
	combout => \M_dispo[2]~10_combout\);

-- Location: LCCOMB_X16_Y1_N30
\M_dispo~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo~56_combout\ = \dispo[3]~input_o\ $ ((((!\M_dispo[3]~50_combout\) # (!\p2~input_o\)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \p2~input_o\,
	datac => \dispo[3]~input_o\,
	datad => \M_dispo[3]~50_combout\,
	combout => \M_dispo~56_combout\);

-- Location: LCCOMB_X16_Y1_N18
\M_dispo[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~13_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[3]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[3]~input_o\,
	datac => \M_dispo[3]~13_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[3]~13_combout\);

-- Location: LCCOMB_X16_Y1_N28
\M_dispo[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~15_combout\ = \M_dispo~56_combout\ $ (!\M_dispo[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo~56_combout\,
	datad => \M_dispo[3]~13_combout\,
	combout => \M_dispo[3]~15_combout\);

-- Location: LCCOMB_X15_Y1_N26
\M_dispo[3]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~57_combout\ = (\p2~input_o\) # ((!\LessThan0~0_combout\ & \p1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \p1~input_o\,
	datad => \p2~input_o\,
	combout => \M_dispo[3]~57_combout\);

-- Location: LCCOMB_X15_Y1_N8
\M_dispo[3]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~58_combout\ = (\request~input_o\ & ((\M_dispo[3]~57_combout\) # (!\M_dispo[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[3]~57_combout\,
	datac => \request~input_o\,
	datad => \M_dispo[3]~50_combout\,
	combout => \M_dispo[3]~58_combout\);

-- Location: FF_X16_Y1_N29
\M_dispo[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[3]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[3]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[3]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N6
\M_dispo[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~14_combout\ = (\rst~input_o\ & (((\dispo[3]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[3]~reg0_emulated_q\ $ (((\M_dispo[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[3]~reg0_emulated_q\,
	datab => \dispo[3]~input_o\,
	datac => \M_dispo[3]~13_combout\,
	datad => \rst~input_o\,
	combout => \M_dispo[3]~14_combout\);

-- Location: LCCOMB_X16_Y1_N8
\M_dispo[3]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[3]~59_combout\ = ((!\M_dispo[3]~50_combout\) # (!\LessThan1~0_combout\)) # (!\p2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2~input_o\,
	datac => \LessThan1~0_combout\,
	datad => \M_dispo[3]~50_combout\,
	combout => \M_dispo[3]~59_combout\);

-- Location: LCCOMB_X16_Y1_N24
\M_dispo[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[4]~17_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[4]~input_o\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[4]~17_combout\,
	datac => \dispo[4]~input_o\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[4]~17_combout\);

-- Location: LCCOMB_X16_Y1_N12
\M_dispo[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[4]~19_combout\ = \dispo[4]~input_o\ $ (\M_dispo[4]~17_combout\ $ (((!\M_dispo[3]~59_combout\ & !\dispo[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[3]~59_combout\,
	datab => \dispo[4]~input_o\,
	datac => \dispo[3]~input_o\,
	datad => \M_dispo[4]~17_combout\,
	combout => \M_dispo[4]~19_combout\);

-- Location: FF_X16_Y1_N13
\M_dispo[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[3]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[4]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N22
\M_dispo[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[4]~18_combout\ = (\rst~input_o\ & (((\dispo[4]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[4]~reg0_emulated_q\ $ ((\M_dispo[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[4]~reg0_emulated_q\,
	datab => \M_dispo[4]~17_combout\,
	datac => \dispo[4]~input_o\,
	datad => \rst~input_o\,
	combout => \M_dispo[4]~18_combout\);

-- Location: LCCOMB_X16_Y1_N10
\M_dispo[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[5]~21_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[5]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[5]~input_o\,
	datac => \M_dispo[5]~21_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[5]~21_combout\);

-- Location: LCCOMB_X16_Y1_N20
\M_dispo[5]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[5]~23_combout\ = \M_dispo[5]~21_combout\ $ (((\dispo[5]~input_o\ & ((!\M_dispo[0]~52_combout\) # (!\M_dispo[3]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[5]~input_o\,
	datab => \M_dispo[3]~50_combout\,
	datac => \M_dispo[0]~52_combout\,
	datad => \M_dispo[5]~21_combout\,
	combout => \M_dispo[5]~23_combout\);

-- Location: FF_X16_Y1_N21
\M_dispo[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[5]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[3]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[5]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N14
\M_dispo[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[5]~22_combout\ = (\rst~input_o\ & (\dispo[5]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[5]~reg0_emulated_q\ $ (\M_dispo[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[5]~input_o\,
	datab => \M_dispo[5]~reg0_emulated_q\,
	datac => \M_dispo[5]~21_combout\,
	datad => \rst~input_o\,
	combout => \M_dispo[5]~22_combout\);

-- Location: LCCOMB_X17_Y1_N10
\M_dispo[6]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~25_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\dispo[6]~input_o\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\M_dispo[6]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[6]~25_combout\,
	datab => \dispo[6]~input_o\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[6]~25_combout\);

-- Location: LCCOMB_X14_Y1_N22
\M_dispo[6]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~60_combout\ = (\M_dispo[0]~49_combout\) # (((\p4~input_o\ & \M_dispo[0]~48_combout\)) # (!\p3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~49_combout\,
	datab => \p3~input_o\,
	datac => \p4~input_o\,
	datad => \M_dispo[0]~48_combout\,
	combout => \M_dispo[6]~60_combout\);

-- Location: LCCOMB_X17_Y1_N0
\M_dispo[6]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~27_combout\ = \dispo[6]~input_o\ $ (\M_dispo[6]~60_combout\ $ (!\M_dispo[6]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[6]~input_o\,
	datac => \M_dispo[6]~60_combout\,
	datad => \M_dispo[6]~25_combout\,
	combout => \M_dispo[6]~27_combout\);

-- Location: LCCOMB_X14_Y1_N20
\M_dispo[6]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~61_combout\ = (\p3~input_o\) # ((\M_dispo[0]~48_combout\ & \p4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[0]~48_combout\,
	datac => \p4~input_o\,
	datad => \p3~input_o\,
	combout => \M_dispo[6]~61_combout\);

-- Location: LCCOMB_X14_Y1_N6
\M_dispo[6]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~62_combout\ = (\LessThan1~0_combout\ & ((\LessThan0~0_combout\) # ((!\p1~input_o\)))) # (!\LessThan1~0_combout\ & (!\p2~input_o\ & ((\LessThan0~0_combout\) # (!\p1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \p1~input_o\,
	datad => \p2~input_o\,
	combout => \M_dispo[6]~62_combout\);

-- Location: LCCOMB_X14_Y1_N16
\M_dispo[6]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~63_combout\ = (\request~input_o\ & ((\M_dispo[6]~61_combout\) # (!\M_dispo[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_dispo[6]~61_combout\,
	datac => \request~input_o\,
	datad => \M_dispo[6]~62_combout\,
	combout => \M_dispo[6]~63_combout\);

-- Location: FF_X17_Y1_N1
\M_dispo[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[6]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[6]~reg0_emulated_q\);

-- Location: LCCOMB_X17_Y1_N6
\M_dispo[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[6]~26_combout\ = (\rst~input_o\ & (((\dispo[6]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[6]~25_combout\ $ (((\M_dispo[6]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[6]~25_combout\,
	datab => \dispo[6]~input_o\,
	datac => \rst~input_o\,
	datad => \M_dispo[6]~reg0_emulated_q\,
	combout => \M_dispo[6]~26_combout\);

-- Location: LCCOMB_X17_Y1_N16
\M_dispo[7]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[7]~29_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[7]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[7]~input_o\,
	datac => \M_dispo[7]~29_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[7]~29_combout\);

-- Location: LCCOMB_X17_Y1_N20
\M_dispo[7]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[7]~31_combout\ = \dispo[7]~input_o\ $ (\M_dispo[7]~29_combout\ $ (((!\dispo[6]~input_o\ & !\M_dispo[6]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[7]~input_o\,
	datab => \dispo[6]~input_o\,
	datac => \M_dispo[6]~60_combout\,
	datad => \M_dispo[7]~29_combout\,
	combout => \M_dispo[7]~31_combout\);

-- Location: FF_X17_Y1_N21
\M_dispo[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[7]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[7]~reg0_emulated_q\);

-- Location: LCCOMB_X17_Y1_N30
\M_dispo[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[7]~30_combout\ = (\rst~input_o\ & (\dispo[7]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[7]~29_combout\ $ (\M_dispo[7]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[7]~input_o\,
	datab => \M_dispo[7]~29_combout\,
	datac => \rst~input_o\,
	datad => \M_dispo[7]~reg0_emulated_q\,
	combout => \M_dispo[7]~30_combout\);

-- Location: LCCOMB_X17_Y1_N18
\M_dispo[8]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[8]~33_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[8]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[8]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[8]~input_o\,
	datac => \M_dispo[8]~33_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[8]~33_combout\);

-- Location: LCCOMB_X17_Y1_N26
\M_dispo[0]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~64_combout\ = (!\dispo[7]~input_o\ & !\dispo[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[7]~input_o\,
	datac => \dispo[6]~input_o\,
	combout => \M_dispo[0]~64_combout\);

-- Location: LCCOMB_X17_Y1_N24
\M_dispo[8]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[8]~35_combout\ = \dispo[8]~input_o\ $ (\M_dispo[8]~33_combout\ $ (((!\M_dispo[6]~60_combout\ & \M_dispo[0]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[6]~60_combout\,
	datab => \dispo[8]~input_o\,
	datac => \M_dispo[0]~64_combout\,
	datad => \M_dispo[8]~33_combout\,
	combout => \M_dispo[8]~35_combout\);

-- Location: FF_X17_Y1_N25
\M_dispo[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[8]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[8]~reg0_emulated_q\);

-- Location: LCCOMB_X17_Y1_N22
\M_dispo[8]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[8]~34_combout\ = (\rst~input_o\ & (\dispo[8]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[8]~33_combout\ $ (\M_dispo[8]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dispo[8]~input_o\,
	datac => \M_dispo[8]~33_combout\,
	datad => \M_dispo[8]~reg0_emulated_q\,
	combout => \M_dispo[8]~34_combout\);

-- Location: LCCOMB_X14_Y4_N10
\M_dispo[9]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[9]~37_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[9]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[9]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[9]~input_o\,
	datac => \M_dispo[9]~37_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[9]~37_combout\);

-- Location: LCCOMB_X14_Y4_N20
\M_dispo[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[9]~39_combout\ = \dispo[9]~input_o\ $ (\M_dispo[9]~37_combout\ $ (((!\M_dispo[0]~48_combout\ & \p4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~48_combout\,
	datab => \p4~input_o\,
	datac => \dispo[9]~input_o\,
	datad => \M_dispo[9]~37_combout\,
	combout => \M_dispo[9]~39_combout\);

-- Location: LCCOMB_X17_Y1_N28
\M_dispo[0]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~65_combout\ = (\p3~input_o\ & (!\dispo[6]~input_o\ & (!\dispo[7]~input_o\ & !\dispo[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~input_o\,
	datab => \dispo[6]~input_o\,
	datac => \dispo[7]~input_o\,
	datad => \dispo[8]~input_o\,
	combout => \M_dispo[0]~65_combout\);

-- Location: LCCOMB_X14_Y1_N2
\M_dispo[9]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[9]~66_combout\ = (\request~input_o\ & (((\p4~input_o\) # (\M_dispo[0]~65_combout\)) # (!\M_dispo[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[6]~62_combout\,
	datab => \p4~input_o\,
	datac => \request~input_o\,
	datad => \M_dispo[0]~65_combout\,
	combout => \M_dispo[9]~66_combout\);

-- Location: FF_X14_Y4_N21
\M_dispo[9]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[9]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[9]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[9]~reg0_emulated_q\);

-- Location: LCCOMB_X14_Y4_N14
\M_dispo[9]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[9]~38_combout\ = (\rst~input_o\ & (\dispo[9]~input_o\)) # (!\rst~input_o\ & ((\M_dispo[9]~37_combout\ $ (\M_dispo[9]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[9]~input_o\,
	datab => \rst~input_o\,
	datac => \M_dispo[9]~37_combout\,
	datad => \M_dispo[9]~reg0_emulated_q\,
	combout => \M_dispo[9]~38_combout\);

-- Location: LCCOMB_X14_Y4_N30
\M_dispo[9]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[9]~67_combout\ = ((!\dispo[11]~input_o\ & (!\dispo[9]~input_o\ & !\dispo[10]~input_o\))) # (!\p4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[11]~input_o\,
	datab => \p4~input_o\,
	datac => \dispo[9]~input_o\,
	datad => \dispo[10]~input_o\,
	combout => \M_dispo[9]~67_combout\);

-- Location: LCCOMB_X14_Y4_N12
\M_dispo[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[10]~41_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[10]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[10]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dispo[10]~input_o\,
	datac => \M_dispo[10]~41_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[10]~41_combout\);

-- Location: LCCOMB_X14_Y4_N8
\M_dispo[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[10]~43_combout\ = \dispo[10]~input_o\ $ (\M_dispo[10]~41_combout\ $ (((!\dispo[9]~input_o\ & !\M_dispo[9]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[9]~input_o\,
	datab => \dispo[10]~input_o\,
	datac => \M_dispo[9]~67_combout\,
	datad => \M_dispo[10]~41_combout\,
	combout => \M_dispo[10]~43_combout\);

-- Location: FF_X14_Y4_N9
\M_dispo[10]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[10]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[9]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[10]~reg0_emulated_q\);

-- Location: LCCOMB_X14_Y4_N22
\M_dispo[10]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[10]~42_combout\ = (\rst~input_o\ & (((\dispo[10]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[10]~reg0_emulated_q\ $ ((\M_dispo[10]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[10]~reg0_emulated_q\,
	datab => \rst~input_o\,
	datac => \M_dispo[10]~41_combout\,
	datad => \dispo[10]~input_o\,
	combout => \M_dispo[10]~42_combout\);

-- Location: LCCOMB_X14_Y4_N18
\M_dispo[11]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[11]~45_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\dispo[11]~input_o\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\M_dispo[11]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[11]~input_o\,
	datac => \M_dispo[11]~45_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \M_dispo[11]~45_combout\);

-- Location: LCCOMB_X14_Y4_N16
\M_dispo[0]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[0]~68_combout\ = (!\dispo[9]~input_o\ & !\dispo[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dispo[9]~input_o\,
	datad => \dispo[10]~input_o\,
	combout => \M_dispo[0]~68_combout\);

-- Location: LCCOMB_X14_Y4_N28
\M_dispo[11]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[11]~47_combout\ = \M_dispo[11]~45_combout\ $ (((\dispo[11]~input_o\ & ((!\p4~input_o\) # (!\M_dispo[0]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispo[11]~input_o\,
	datab => \M_dispo[0]~68_combout\,
	datac => \p4~input_o\,
	datad => \M_dispo[11]~45_combout\,
	combout => \M_dispo[11]~47_combout\);

-- Location: FF_X14_Y4_N29
\M_dispo[11]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_dispo[11]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \M_dispo[9]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_dispo[11]~reg0_emulated_q\);

-- Location: LCCOMB_X14_Y4_N26
\M_dispo[11]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \M_dispo[11]~46_combout\ = (\rst~input_o\ & (((\dispo[11]~input_o\)))) # (!\rst~input_o\ & (\M_dispo[11]~45_combout\ $ ((\M_dispo[11]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[11]~45_combout\,
	datab => \M_dispo[11]~reg0_emulated_q\,
	datac => \rst~input_o\,
	datad => \dispo[11]~input_o\,
	combout => \M_dispo[11]~46_combout\);

-- Location: LCCOMB_X14_Y1_N12
\alarme_repture_stock~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~0_combout\ = (!\p3~input_o\ & (!\p4~input_o\ & ((\p1~input_o\) # (\p2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~input_o\,
	datab => \p3~input_o\,
	datac => \p4~input_o\,
	datad => \p2~input_o\,
	combout => \alarme_repture_stock~0_combout\);

-- Location: LCCOMB_X14_Y1_N8
\alarme_repture_stock~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~2_combout\ = (\p4~input_o\) # ((!\p3~input_o\ & \p2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3~input_o\,
	datac => \p4~input_o\,
	datad => \p2~input_o\,
	combout => \alarme_repture_stock~2_combout\);

-- Location: LCCOMB_X14_Y1_N26
\alarme_repture_stock~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~1_combout\ = (\p4~input_o\) # (\p3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p4~input_o\,
	datad => \p3~input_o\,
	combout => \alarme_repture_stock~1_combout\);

-- Location: LCCOMB_X14_Y1_N18
\alarme_repture_stock~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~3_combout\ = (\alarme_repture_stock~2_combout\ & (((\M_dispo[0]~48_combout\) # (!\alarme_repture_stock~1_combout\)))) # (!\alarme_repture_stock~2_combout\ & (\M_dispo[0]~49_combout\ & (\alarme_repture_stock~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~49_combout\,
	datab => \alarme_repture_stock~2_combout\,
	datac => \alarme_repture_stock~1_combout\,
	datad => \M_dispo[0]~48_combout\,
	combout => \alarme_repture_stock~3_combout\);

-- Location: LCCOMB_X14_Y1_N28
\alarme_repture_stock~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~4_combout\ = (\alarme_repture_stock~0_combout\ & ((\alarme_repture_stock~3_combout\ & ((!\LessThan1~0_combout\))) # (!\alarme_repture_stock~3_combout\ & (!\LessThan0~0_combout\)))) # (!\alarme_repture_stock~0_combout\ & 
-- (((\alarme_repture_stock~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarme_repture_stock~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \alarme_repture_stock~3_combout\,
	combout => \alarme_repture_stock~4_combout\);

-- Location: LCCOMB_X14_Y1_N0
\alarme_repture_stock~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alarme_repture_stock~5_combout\ = (\request~input_o\ & \alarme_repture_stock~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \request~input_o\,
	datad => \alarme_repture_stock~4_combout\,
	combout => \alarme_repture_stock~5_combout\);

-- Location: FF_X14_Y1_N1
\alarme_repture_stock~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarme_repture_stock~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarme_repture_stock~reg0_q\);

-- Location: LCCOMB_X14_Y1_N10
\distribuer~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \distribuer~0_combout\ = (\alarme_repture_stock~2_combout\ & (((!\M_dispo[0]~48_combout\) # (!\alarme_repture_stock~1_combout\)))) # (!\alarme_repture_stock~2_combout\ & (!\M_dispo[0]~49_combout\ & (\alarme_repture_stock~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_dispo[0]~49_combout\,
	datab => \alarme_repture_stock~2_combout\,
	datac => \alarme_repture_stock~1_combout\,
	datad => \M_dispo[0]~48_combout\,
	combout => \distribuer~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\distribuer~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \distribuer~1_combout\ = (\alarme_repture_stock~0_combout\ & ((\distribuer~0_combout\ & ((\LessThan1~0_combout\))) # (!\distribuer~0_combout\ & (\LessThan0~0_combout\)))) # (!\alarme_repture_stock~0_combout\ & (((\distribuer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarme_repture_stock~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \distribuer~0_combout\,
	combout => \distribuer~1_combout\);

-- Location: LCCOMB_X14_Y1_N14
\distribuer~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \distribuer~2_combout\ = (\distribuer~1_combout\ & \request~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \distribuer~1_combout\,
	datac => \request~input_o\,
	combout => \distribuer~2_combout\);

-- Location: FF_X14_Y1_N15
\distribuer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \distribuer~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distribuer~reg0_q\);

ww_M_dispo(0) <= \M_dispo[0]~output_o\;

ww_M_dispo(1) <= \M_dispo[1]~output_o\;

ww_M_dispo(2) <= \M_dispo[2]~output_o\;

ww_M_dispo(3) <= \M_dispo[3]~output_o\;

ww_M_dispo(4) <= \M_dispo[4]~output_o\;

ww_M_dispo(5) <= \M_dispo[5]~output_o\;

ww_M_dispo(6) <= \M_dispo[6]~output_o\;

ww_M_dispo(7) <= \M_dispo[7]~output_o\;

ww_M_dispo(8) <= \M_dispo[8]~output_o\;

ww_M_dispo(9) <= \M_dispo[9]~output_o\;

ww_M_dispo(10) <= \M_dispo[10]~output_o\;

ww_M_dispo(11) <= \M_dispo[11]~output_o\;

ww_alarme_repture_stock <= \alarme_repture_stock~output_o\;

ww_distribuer <= \distribuer~output_o\;
END structure;


