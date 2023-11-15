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

-- DATE "11/15/2023 15:27:30"

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

ENTITY 	distributeur IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	charger : IN std_logic;
	valide : IN std_logic;
	annuler : IN std_logic;
	C_dispo : IN std_logic_vector(11 DOWNTO 0);
	clavier : IN std_logic_vector(3 DOWNTO 0);
	alarme_repture_stock : OUT std_logic;
	d1 : OUT std_logic;
	d2 : OUT std_logic;
	d3 : OUT std_logic;
	d4 : OUT std_logic;
	fin : OUT std_logic
	);
END distributeur;

-- Design Ports Information
-- alarme_repture_stock	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valide	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- annuler	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clavier[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- charger	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[8]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_dispo[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF distributeur IS
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
SIGNAL ww_valide : std_logic;
SIGNAL ww_annuler : std_logic;
SIGNAL ww_C_dispo : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_clavier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alarme_repture_stock : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloc4|etat_futur.terminer~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloc4|Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarme_repture_stock~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \fin~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clavier[1]~input_o\ : std_logic;
SIGNAL \clavier[3]~input_o\ : std_logic;
SIGNAL \clavier[2]~input_o\ : std_logic;
SIGNAL \annuler~input_o\ : std_logic;
SIGNAL \valide~input_o\ : std_logic;
SIGNAL \clavier[0]~input_o\ : std_logic;
SIGNAL \bloc1|p4~0_combout\ : std_logic;
SIGNAL \bloc1|p3~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloc1|p3~q\ : std_logic;
SIGNAL \bloc1|Mux4~0_combout\ : std_logic;
SIGNAL \bloc1|request~0_combout\ : std_logic;
SIGNAL \bloc1|request~q\ : std_logic;
SIGNAL \bloc3|M_dispo[6]~9_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[6]~11_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~63_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[6]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[6]~10_combout\ : std_logic;
SIGNAL \C_dispo[6]~input_o\ : std_logic;
SIGNAL \charger~input_o\ : std_logic;
SIGNAL \bloc2|dispo[6]~9_combout\ : std_logic;
SIGNAL \bloc2|dispo[6]~11_combout\ : std_logic;
SIGNAL \bloc2|dispo[6]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[6]~10_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[7]~5_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~1_combout\ : std_logic;
SIGNAL \bloc3|LessThan2~1_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~3_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~2_combout\ : std_logic;
SIGNAL \bloc2|dispo[8]~1_combout\ : std_logic;
SIGNAL \C_dispo[8]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[8]~3_combout\ : std_logic;
SIGNAL \bloc2|dispo[8]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[8]~2_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[8]~62_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[7]~7_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[7]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[7]~6_combout\ : std_logic;
SIGNAL \bloc2|dispo[7]~5_combout\ : std_logic;
SIGNAL \C_dispo[7]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[7]~7_combout\ : std_logic;
SIGNAL \bloc2|dispo[7]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[7]~6_combout\ : std_logic;
SIGNAL \bloc3|LessThan2~0_combout\ : std_logic;
SIGNAL \bloc1|p2~0_combout\ : std_logic;
SIGNAL \bloc1|p2~feeder_combout\ : std_logic;
SIGNAL \bloc1|p2~q\ : std_logic;
SIGNAL \bloc3|M_dispo[0]~29_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[0]~31_combout\ : std_logic;
SIGNAL \bloc1|p1~0_combout\ : std_logic;
SIGNAL \bloc1|p1~1_combout\ : std_logic;
SIGNAL \bloc1|p1~feeder_combout\ : std_logic;
SIGNAL \bloc1|p1~q\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~66_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[0]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[0]~30_combout\ : std_logic;
SIGNAL \bloc2|dispo[0]~29_combout\ : std_logic;
SIGNAL \C_dispo[0]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[0]~31_combout\ : std_logic;
SIGNAL \bloc2|dispo[0]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[0]~30_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[1]~33_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~67_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[1]~35_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[1]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[1]~34_combout\ : std_logic;
SIGNAL \bloc2|dispo[1]~33_combout\ : std_logic;
SIGNAL \C_dispo[1]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[1]~35_combout\ : std_logic;
SIGNAL \bloc2|dispo[1]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[1]~34_combout\ : std_logic;
SIGNAL \bloc3|LessThan0~1_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~25_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~27_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[2]~26_combout\ : std_logic;
SIGNAL \C_dispo[2]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[2]~25_combout\ : std_logic;
SIGNAL \bloc2|dispo[2]~27_combout\ : std_logic;
SIGNAL \bloc2|dispo[2]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[2]~26_combout\ : std_logic;
SIGNAL \bloc3|LessThan0~0_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[3]~21_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[3]~23_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~65_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[3]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[3]~22_combout\ : std_logic;
SIGNAL \C_dispo[3]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[3]~21_combout\ : std_logic;
SIGNAL \bloc2|dispo[3]~23_combout\ : std_logic;
SIGNAL \bloc2|dispo[3]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[3]~22_combout\ : std_logic;
SIGNAL \bloc3|LessThan1~1_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~13_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~15_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~14_combout\ : std_logic;
SIGNAL \C_dispo[5]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[5]~13_combout\ : std_logic;
SIGNAL \bloc2|dispo[5]~15_combout\ : std_logic;
SIGNAL \bloc2|dispo[5]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[5]~14_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[5]~64_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[4]~17_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[4]~19_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[4]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[4]~18_combout\ : std_logic;
SIGNAL \bloc2|dispo[4]~17_combout\ : std_logic;
SIGNAL \C_dispo[4]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[4]~19_combout\ : std_logic;
SIGNAL \bloc2|dispo[4]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[4]~18_combout\ : std_logic;
SIGNAL \bloc3|LessThan1~0_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~2_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~3_combout\ : std_logic;
SIGNAL \bloc1|p4~1_combout\ : std_logic;
SIGNAL \bloc1|p4~feeder_combout\ : std_logic;
SIGNAL \bloc1|p4~q\ : std_logic;
SIGNAL \bloc3|M_dispo[9]~45_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[9]~47_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~61_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[9]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[9]~46_combout\ : std_logic;
SIGNAL \C_dispo[9]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[9]~45_combout\ : std_logic;
SIGNAL \bloc2|dispo[9]~47_combout\ : std_logic;
SIGNAL \bloc2|dispo[9]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[9]~46_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~60_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[10]~41_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[10]~43_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[10]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[10]~42_combout\ : std_logic;
SIGNAL \C_dispo[10]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[10]~41_combout\ : std_logic;
SIGNAL \bloc2|dispo[10]~43_combout\ : std_logic;
SIGNAL \bloc2|dispo[10]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[10]~42_combout\ : std_logic;
SIGNAL \bloc3|LessThan3~1_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~37_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~39_combout\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~_emulated_q\ : std_logic;
SIGNAL \bloc3|M_dispo[11]~38_combout\ : std_logic;
SIGNAL \bloc2|dispo[11]~37_combout\ : std_logic;
SIGNAL \C_dispo[11]~input_o\ : std_logic;
SIGNAL \bloc2|dispo[11]~39_combout\ : std_logic;
SIGNAL \bloc2|dispo[11]~_emulated_q\ : std_logic;
SIGNAL \bloc2|dispo[11]~38_combout\ : std_logic;
SIGNAL \bloc3|LessThan3~0_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~6_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~4_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~5_combout\ : std_logic;
SIGNAL \bloc3|alarme_repture_stock~q\ : std_logic;
SIGNAL \bloc3|distribuer~2_combout\ : std_logic;
SIGNAL \bloc3|distribuer~q\ : std_logic;
SIGNAL \bloc4|etat_futur.terminer~0_combout\ : std_logic;
SIGNAL \bloc4|etat_futur.terminer~0clkctrl_outclk\ : std_logic;
SIGNAL \bloc4|Selector0~0_combout\ : std_logic;
SIGNAL \bloc4|Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \bloc4|WideOr0~0_combout\ : std_logic;
SIGNAL \bloc4|etat_futur.terminer_139~combout\ : std_logic;
SIGNAL \bloc4|etat_present.terminer~q\ : std_logic;
SIGNAL \bloc4|etat_futur.debut_208~combout\ : std_logic;
SIGNAL \bloc4|etat_present.debut~0_combout\ : std_logic;
SIGNAL \bloc4|etat_present.debut~q\ : std_logic;
SIGNAL \bloc4|etat_futur.DP1_191~combout\ : std_logic;
SIGNAL \bloc4|etat_present.DP1~q\ : std_logic;
SIGNAL \bloc4|etat_futur.DP2~0_combout\ : std_logic;
SIGNAL \bloc4|etat_futur.DP2_178~combout\ : std_logic;
SIGNAL \bloc4|etat_present.DP2~q\ : std_logic;
SIGNAL \bloc4|etat_futur.DP3~0_combout\ : std_logic;
SIGNAL \bloc4|etat_futur.DP3_165~combout\ : std_logic;
SIGNAL \bloc4|etat_present.DP3~q\ : std_logic;
SIGNAL \bloc4|etat_futur.DP4_152~combout\ : std_logic;
SIGNAL \bloc4|etat_present.DP4~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_charger <= charger;
ww_valide <= valide;
ww_annuler <= annuler;
ww_C_dispo <= C_dispo;
ww_clavier <= clavier;
alarme_repture_stock <= ww_alarme_repture_stock;
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

\bloc4|etat_futur.terminer~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bloc4|etat_futur.terminer~0_combout\);

\bloc4|Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bloc4|Selector0~0_combout\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N9
\alarme_repture_stock~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloc3|alarme_repture_stock~q\,
	devoe => ww_devoe,
	o => \alarme_repture_stock~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\d1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloc4|etat_present.DP1~q\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\d2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloc4|etat_present.DP2~q\,
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
	i => \bloc4|etat_present.DP3~q\,
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\d4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloc4|etat_present.DP4~q\,
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloc4|etat_present.terminer~q\,
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

-- Location: IOIBUF_X22_Y0_N1
\clavier[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(1),
	o => \clavier[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\clavier[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(3),
	o => \clavier[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\clavier[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(2),
	o => \clavier[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\annuler~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_annuler,
	o => \annuler~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\valide~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valide,
	o => \valide~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\clavier[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clavier(0),
	o => \clavier[0]~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\bloc1|p4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p4~0_combout\ = (!\annuler~input_o\ & (\valide~input_o\ & !\clavier[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \annuler~input_o\,
	datac => \valide~input_o\,
	datad => \clavier[0]~input_o\,
	combout => \bloc1|p4~0_combout\);

-- Location: LCCOMB_X21_Y1_N4
\bloc1|p3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p3~0_combout\ = (!\clavier[1]~input_o\ & (!\clavier[3]~input_o\ & (\clavier[2]~input_o\ & \bloc1|p4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[1]~input_o\,
	datab => \clavier[3]~input_o\,
	datac => \clavier[2]~input_o\,
	datad => \bloc1|p4~0_combout\,
	combout => \bloc1|p3~0_combout\);

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

-- Location: FF_X14_Y1_N23
\bloc1|p3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \bloc1|p3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc1|p3~q\);

-- Location: LCCOMB_X21_Y1_N8
\bloc1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|Mux4~0_combout\ = (\clavier[2]~input_o\ & (!\clavier[3]~input_o\ & (!\clavier[1]~input_o\ & !\clavier[0]~input_o\))) # (!\clavier[2]~input_o\ & ((\clavier[3]~input_o\ & (!\clavier[1]~input_o\ & !\clavier[0]~input_o\)) # (!\clavier[3]~input_o\ & 
-- (\clavier[1]~input_o\ $ (\clavier[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[2]~input_o\,
	datab => \clavier[3]~input_o\,
	datac => \clavier[1]~input_o\,
	datad => \clavier[0]~input_o\,
	combout => \bloc1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y1_N26
\bloc1|request~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|request~0_combout\ = (!\annuler~input_o\ & (\bloc1|Mux4~0_combout\ & \valide~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \annuler~input_o\,
	datac => \bloc1|Mux4~0_combout\,
	datad => \valide~input_o\,
	combout => \bloc1|request~0_combout\);

-- Location: FF_X17_Y1_N27
\bloc1|request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc1|request~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc1|request~q\);

-- Location: LCCOMB_X15_Y2_N0
\bloc3|M_dispo[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[6]~9_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[6]~10_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[6]~9_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[6]~10_combout\,
	combout => \bloc3|M_dispo[6]~9_combout\);

-- Location: LCCOMB_X15_Y2_N4
\bloc3|M_dispo[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[6]~11_combout\ = \bloc2|dispo[6]~10_combout\ $ (\bloc3|M_dispo[6]~9_combout\ $ (((\bloc3|LessThan2~0_combout\ & \bloc1|request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[6]~10_combout\,
	datab => \bloc3|LessThan2~0_combout\,
	datac => \bloc1|request~q\,
	datad => \bloc3|M_dispo[6]~9_combout\,
	combout => \bloc3|M_dispo[6]~11_combout\);

-- Location: LCCOMB_X15_Y1_N8
\bloc3|M_dispo[8]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[8]~63_combout\ = (\bloc1|p3~q\) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloc1|p3~q\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[8]~63_combout\);

-- Location: FF_X15_Y2_N5
\bloc3|M_dispo[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[6]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[8]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[6]~_emulated_q\);

-- Location: LCCOMB_X15_Y2_N2
\bloc3|M_dispo[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[6]~10_combout\ = (\rst~input_o\ & (\bloc2|dispo[6]~10_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[6]~_emulated_q\ $ (\bloc3|M_dispo[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[6]~10_combout\,
	datac => \bloc3|M_dispo[6]~_emulated_q\,
	datad => \bloc3|M_dispo[6]~9_combout\,
	combout => \bloc3|M_dispo[6]~10_combout\);

-- Location: IOIBUF_X22_Y0_N8
\C_dispo[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(6),
	o => \C_dispo[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\charger~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_charger,
	o => \charger~input_o\);

-- Location: LCCOMB_X15_Y2_N24
\bloc2|dispo[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[6]~9_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[6]~10_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[6]~9_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[6]~10_combout\,
	combout => \bloc2|dispo[6]~9_combout\);

-- Location: LCCOMB_X15_Y2_N14
\bloc2|dispo[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[6]~11_combout\ = \bloc2|dispo[6]~9_combout\ $ (((\charger~input_o\ & (\C_dispo[6]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[6]~input_o\,
	datab => \bloc3|M_dispo[6]~10_combout\,
	datac => \charger~input_o\,
	datad => \bloc2|dispo[6]~9_combout\,
	combout => \bloc2|dispo[6]~11_combout\);

-- Location: FF_X15_Y2_N15
\bloc2|dispo[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[6]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[6]~_emulated_q\);

-- Location: LCCOMB_X15_Y2_N8
\bloc2|dispo[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[6]~10_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[6]~10_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[6]~_emulated_q\ $ (\bloc2|dispo[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[6]~10_combout\,
	datac => \bloc2|dispo[6]~_emulated_q\,
	datad => \bloc2|dispo[6]~9_combout\,
	combout => \bloc2|dispo[6]~10_combout\);

-- Location: LCCOMB_X16_Y2_N24
\bloc3|M_dispo[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[7]~5_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[7]~6_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[7]~5_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[7]~6_combout\,
	combout => \bloc3|M_dispo[7]~5_combout\);

-- Location: LCCOMB_X15_Y2_N26
\bloc3|M_dispo[8]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[8]~1_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[8]~2_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[8]~1_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[8]~2_combout\,
	combout => \bloc3|M_dispo[8]~1_combout\);

-- Location: LCCOMB_X15_Y2_N18
\bloc3|LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan2~1_combout\ = (\bloc2|dispo[6]~10_combout\) # (\bloc2|dispo[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[6]~10_combout\,
	datac => \bloc2|dispo[7]~6_combout\,
	combout => \bloc3|LessThan2~1_combout\);

-- Location: LCCOMB_X15_Y2_N12
\bloc3|M_dispo[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[8]~3_combout\ = \bloc3|M_dispo[8]~1_combout\ $ (((\bloc2|dispo[8]~2_combout\ & ((\bloc3|LessThan2~1_combout\) # (!\bloc1|request~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|LessThan2~1_combout\,
	datab => \bloc3|M_dispo[8]~1_combout\,
	datac => \bloc2|dispo[8]~2_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[8]~3_combout\);

-- Location: FF_X15_Y2_N13
\bloc3|M_dispo[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[8]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[8]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[8]~_emulated_q\);

-- Location: LCCOMB_X15_Y2_N30
\bloc3|M_dispo[8]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[8]~2_combout\ = (\rst~input_o\ & (\bloc2|dispo[8]~2_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[8]~1_combout\ $ (\bloc3|M_dispo[8]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[8]~2_combout\,
	datac => \bloc3|M_dispo[8]~1_combout\,
	datad => \bloc3|M_dispo[8]~_emulated_q\,
	combout => \bloc3|M_dispo[8]~2_combout\);

-- Location: LCCOMB_X15_Y2_N10
\bloc2|dispo[8]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[8]~1_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[8]~2_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[8]~1_combout\,
	datac => \bloc3|M_dispo[8]~2_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \bloc2|dispo[8]~1_combout\);

-- Location: IOIBUF_X33_Y16_N8
\C_dispo[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(8),
	o => \C_dispo[8]~input_o\);

-- Location: LCCOMB_X15_Y2_N22
\bloc2|dispo[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[8]~3_combout\ = \bloc2|dispo[8]~1_combout\ $ (((\charger~input_o\ & ((\C_dispo[8]~input_o\))) # (!\charger~input_o\ & (\bloc3|M_dispo[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[8]~2_combout\,
	datab => \bloc2|dispo[8]~1_combout\,
	datac => \charger~input_o\,
	datad => \C_dispo[8]~input_o\,
	combout => \bloc2|dispo[8]~3_combout\);

-- Location: FF_X15_Y2_N23
\bloc2|dispo[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[8]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[8]~_emulated_q\);

-- Location: LCCOMB_X15_Y2_N28
\bloc2|dispo[8]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[8]~2_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[8]~2_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[8]~_emulated_q\ $ (\bloc2|dispo[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[8]~2_combout\,
	datac => \bloc2|dispo[8]~_emulated_q\,
	datad => \bloc2|dispo[8]~1_combout\,
	combout => \bloc2|dispo[8]~2_combout\);

-- Location: LCCOMB_X15_Y2_N16
\bloc3|M_dispo[8]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[8]~62_combout\ = ((!\bloc2|dispo[8]~2_combout\ & (!\bloc2|dispo[7]~6_combout\ & !\bloc2|dispo[6]~10_combout\))) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[8]~2_combout\,
	datab => \bloc2|dispo[7]~6_combout\,
	datac => \bloc1|request~q\,
	datad => \bloc2|dispo[6]~10_combout\,
	combout => \bloc3|M_dispo[8]~62_combout\);

-- Location: LCCOMB_X15_Y2_N6
\bloc3|M_dispo[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[7]~7_combout\ = \bloc3|M_dispo[7]~5_combout\ $ (\bloc2|dispo[7]~6_combout\ $ (((!\bloc3|M_dispo[8]~62_combout\ & !\bloc2|dispo[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[7]~5_combout\,
	datab => \bloc2|dispo[7]~6_combout\,
	datac => \bloc3|M_dispo[8]~62_combout\,
	datad => \bloc2|dispo[6]~10_combout\,
	combout => \bloc3|M_dispo[7]~7_combout\);

-- Location: FF_X15_Y2_N7
\bloc3|M_dispo[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[8]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[7]~_emulated_q\);

-- Location: LCCOMB_X16_Y2_N28
\bloc3|M_dispo[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[7]~6_combout\ = (\rst~input_o\ & (\bloc2|dispo[7]~6_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[7]~_emulated_q\ $ (\bloc3|M_dispo[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[7]~6_combout\,
	datab => \rst~input_o\,
	datac => \bloc3|M_dispo[7]~_emulated_q\,
	datad => \bloc3|M_dispo[7]~5_combout\,
	combout => \bloc3|M_dispo[7]~6_combout\);

-- Location: LCCOMB_X16_Y2_N12
\bloc2|dispo[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[7]~5_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[7]~6_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[7]~5_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[7]~6_combout\,
	combout => \bloc2|dispo[7]~5_combout\);

-- Location: IOIBUF_X33_Y16_N15
\C_dispo[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(7),
	o => \C_dispo[7]~input_o\);

-- Location: LCCOMB_X16_Y2_N8
\bloc2|dispo[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[7]~7_combout\ = \bloc2|dispo[7]~5_combout\ $ (((\charger~input_o\ & (\C_dispo[7]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[7]~5_combout\,
	datab => \charger~input_o\,
	datac => \C_dispo[7]~input_o\,
	datad => \bloc3|M_dispo[7]~6_combout\,
	combout => \bloc2|dispo[7]~7_combout\);

-- Location: FF_X16_Y2_N9
\bloc2|dispo[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[7]~_emulated_q\);

-- Location: LCCOMB_X16_Y2_N10
\bloc2|dispo[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[7]~6_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[7]~6_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[7]~_emulated_q\ $ (\bloc2|dispo[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[7]~6_combout\,
	datab => \rst~input_o\,
	datac => \bloc2|dispo[7]~_emulated_q\,
	datad => \bloc2|dispo[7]~5_combout\,
	combout => \bloc2|dispo[7]~6_combout\);

-- Location: LCCOMB_X15_Y2_N20
\bloc3|LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan2~0_combout\ = (\bloc2|dispo[6]~10_combout\) # ((\bloc2|dispo[7]~6_combout\) # (\bloc2|dispo[8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[6]~10_combout\,
	datac => \bloc2|dispo[7]~6_combout\,
	datad => \bloc2|dispo[8]~2_combout\,
	combout => \bloc3|LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y1_N2
\bloc1|p2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p2~0_combout\ = (\clavier[1]~input_o\ & (!\clavier[3]~input_o\ & (!\clavier[2]~input_o\ & \bloc1|p4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[1]~input_o\,
	datab => \clavier[3]~input_o\,
	datac => \clavier[2]~input_o\,
	datad => \bloc1|p4~0_combout\,
	combout => \bloc1|p2~0_combout\);

-- Location: LCCOMB_X14_Y1_N0
\bloc1|p2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p2~feeder_combout\ = \bloc1|p2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloc1|p2~0_combout\,
	combout => \bloc1|p2~feeder_combout\);

-- Location: FF_X14_Y1_N1
\bloc1|p2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bloc1|p2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc1|p2~q\);

-- Location: LCCOMB_X16_Y1_N10
\bloc3|M_dispo[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[0]~29_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[0]~30_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[0]~29_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[0]~30_combout\,
	combout => \bloc3|M_dispo[0]~29_combout\);

-- Location: LCCOMB_X16_Y1_N30
\bloc3|M_dispo[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[0]~31_combout\ = \bloc2|dispo[0]~30_combout\ $ (\bloc3|M_dispo[0]~29_combout\ $ (((\bloc3|LessThan0~0_combout\ & \bloc1|request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[0]~30_combout\,
	datab => \bloc3|M_dispo[0]~29_combout\,
	datac => \bloc3|LessThan0~0_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[0]~31_combout\);

-- Location: LCCOMB_X21_Y1_N22
\bloc1|p1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p1~0_combout\ = (!\clavier[1]~input_o\ & (\valide~input_o\ & (!\clavier[2]~input_o\ & !\annuler~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[1]~input_o\,
	datab => \valide~input_o\,
	datac => \clavier[2]~input_o\,
	datad => \annuler~input_o\,
	combout => \bloc1|p1~0_combout\);

-- Location: LCCOMB_X21_Y1_N0
\bloc1|p1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p1~1_combout\ = (!\clavier[3]~input_o\ & (\bloc1|p1~0_combout\ & \clavier[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clavier[3]~input_o\,
	datac => \bloc1|p1~0_combout\,
	datad => \clavier[0]~input_o\,
	combout => \bloc1|p1~1_combout\);

-- Location: LCCOMB_X14_Y1_N28
\bloc1|p1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p1~feeder_combout\ = \bloc1|p1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloc1|p1~1_combout\,
	combout => \bloc1|p1~feeder_combout\);

-- Location: FF_X14_Y1_N29
\bloc1|p1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc1|p1~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc1|p1~q\);

-- Location: LCCOMB_X16_Y1_N18
\bloc3|M_dispo[2]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[2]~66_combout\ = (\bloc1|p1~q\) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloc1|p1~q\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[2]~66_combout\);

-- Location: FF_X16_Y1_N31
\bloc3|M_dispo[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[0]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[0]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N24
\bloc3|M_dispo[0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[0]~30_combout\ = (\rst~input_o\ & (\bloc2|dispo[0]~30_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[0]~_emulated_q\ $ (\bloc3|M_dispo[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[0]~30_combout\,
	datac => \bloc3|M_dispo[0]~_emulated_q\,
	datad => \bloc3|M_dispo[0]~29_combout\,
	combout => \bloc3|M_dispo[0]~30_combout\);

-- Location: LCCOMB_X16_Y1_N2
\bloc2|dispo[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[0]~29_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[0]~30_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[0]~29_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[0]~30_combout\,
	combout => \bloc2|dispo[0]~29_combout\);

-- Location: IOIBUF_X31_Y0_N1
\C_dispo[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(0),
	o => \C_dispo[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N26
\bloc2|dispo[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[0]~31_combout\ = \bloc2|dispo[0]~29_combout\ $ (((\charger~input_o\ & ((\C_dispo[0]~input_o\))) # (!\charger~input_o\ & (\bloc3|M_dispo[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[0]~29_combout\,
	datab => \charger~input_o\,
	datac => \bloc3|M_dispo[0]~30_combout\,
	datad => \C_dispo[0]~input_o\,
	combout => \bloc2|dispo[0]~31_combout\);

-- Location: FF_X16_Y1_N27
\bloc2|dispo[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[0]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[0]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N8
\bloc2|dispo[0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[0]~30_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[0]~30_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[0]~_emulated_q\ $ (\bloc2|dispo[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[0]~30_combout\,
	datac => \bloc2|dispo[0]~_emulated_q\,
	datad => \bloc2|dispo[0]~29_combout\,
	combout => \bloc2|dispo[0]~30_combout\);

-- Location: LCCOMB_X16_Y2_N18
\bloc3|M_dispo[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[1]~33_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[1]~34_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[1]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[1]~33_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[1]~34_combout\,
	combout => \bloc3|M_dispo[1]~33_combout\);

-- Location: LCCOMB_X16_Y2_N14
\bloc3|M_dispo[2]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[2]~67_combout\ = ((!\bloc2|dispo[0]~30_combout\ & (!\bloc2|dispo[2]~26_combout\ & !\bloc2|dispo[1]~34_combout\))) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[0]~30_combout\,
	datab => \bloc1|request~q\,
	datac => \bloc2|dispo[2]~26_combout\,
	datad => \bloc2|dispo[1]~34_combout\,
	combout => \bloc3|M_dispo[2]~67_combout\);

-- Location: LCCOMB_X16_Y2_N26
\bloc3|M_dispo[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[1]~35_combout\ = \bloc3|M_dispo[1]~33_combout\ $ (\bloc2|dispo[1]~34_combout\ $ (((!\bloc2|dispo[0]~30_combout\ & !\bloc3|M_dispo[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[1]~33_combout\,
	datab => \bloc2|dispo[0]~30_combout\,
	datac => \bloc2|dispo[1]~34_combout\,
	datad => \bloc3|M_dispo[2]~67_combout\,
	combout => \bloc3|M_dispo[1]~35_combout\);

-- Location: FF_X16_Y2_N27
\bloc3|M_dispo[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[1]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[1]~_emulated_q\);

-- Location: LCCOMB_X16_Y2_N20
\bloc3|M_dispo[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[1]~34_combout\ = (\rst~input_o\ & (\bloc2|dispo[1]~34_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[1]~_emulated_q\ $ (\bloc3|M_dispo[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[1]~34_combout\,
	datab => \rst~input_o\,
	datac => \bloc3|M_dispo[1]~_emulated_q\,
	datad => \bloc3|M_dispo[1]~33_combout\,
	combout => \bloc3|M_dispo[1]~34_combout\);

-- Location: LCCOMB_X16_Y2_N30
\bloc2|dispo[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[1]~33_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[1]~34_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[1]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[1]~33_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[1]~34_combout\,
	combout => \bloc2|dispo[1]~33_combout\);

-- Location: IOIBUF_X33_Y10_N1
\C_dispo[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(1),
	o => \C_dispo[1]~input_o\);

-- Location: LCCOMB_X16_Y2_N16
\bloc2|dispo[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[1]~35_combout\ = \bloc2|dispo[1]~33_combout\ $ (((\charger~input_o\ & ((\C_dispo[1]~input_o\))) # (!\charger~input_o\ & (\bloc3|M_dispo[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[1]~34_combout\,
	datab => \charger~input_o\,
	datac => \bloc2|dispo[1]~33_combout\,
	datad => \C_dispo[1]~input_o\,
	combout => \bloc2|dispo[1]~35_combout\);

-- Location: FF_X16_Y2_N17
\bloc2|dispo[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[1]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[1]~_emulated_q\);

-- Location: LCCOMB_X16_Y2_N22
\bloc2|dispo[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[1]~34_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[1]~34_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[1]~33_combout\ $ (\bloc2|dispo[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[1]~34_combout\,
	datab => \rst~input_o\,
	datac => \bloc2|dispo[1]~33_combout\,
	datad => \bloc2|dispo[1]~_emulated_q\,
	combout => \bloc2|dispo[1]~34_combout\);

-- Location: LCCOMB_X16_Y1_N4
\bloc3|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan0~1_combout\ = (\bloc2|dispo[1]~34_combout\) # (\bloc2|dispo[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[1]~34_combout\,
	datac => \bloc2|dispo[0]~30_combout\,
	combout => \bloc3|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y1_N12
\bloc3|M_dispo[2]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[2]~25_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[2]~26_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[2]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[2]~25_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[2]~26_combout\,
	combout => \bloc3|M_dispo[2]~25_combout\);

-- Location: LCCOMB_X16_Y1_N14
\bloc3|M_dispo[2]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[2]~27_combout\ = \bloc3|M_dispo[2]~25_combout\ $ (((\bloc2|dispo[2]~26_combout\ & ((\bloc3|LessThan0~1_combout\) # (!\bloc1|request~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|LessThan0~1_combout\,
	datab => \bloc3|M_dispo[2]~25_combout\,
	datac => \bloc2|dispo[2]~26_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[2]~27_combout\);

-- Location: FF_X16_Y1_N15
\bloc3|M_dispo[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[2]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[2]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N20
\bloc3|M_dispo[2]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[2]~26_combout\ = (\rst~input_o\ & (\bloc2|dispo[2]~26_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[2]~_emulated_q\ $ (\bloc3|M_dispo[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[2]~26_combout\,
	datac => \bloc3|M_dispo[2]~_emulated_q\,
	datad => \bloc3|M_dispo[2]~25_combout\,
	combout => \bloc3|M_dispo[2]~26_combout\);

-- Location: IOIBUF_X20_Y0_N1
\C_dispo[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(2),
	o => \C_dispo[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\bloc2|dispo[2]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[2]~25_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[2]~26_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[2]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[2]~25_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[2]~26_combout\,
	combout => \bloc2|dispo[2]~25_combout\);

-- Location: LCCOMB_X16_Y1_N22
\bloc2|dispo[2]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[2]~27_combout\ = \bloc2|dispo[2]~25_combout\ $ (((\charger~input_o\ & (\C_dispo[2]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[2]~input_o\,
	datab => \bloc2|dispo[2]~25_combout\,
	datac => \bloc3|M_dispo[2]~26_combout\,
	datad => \charger~input_o\,
	combout => \bloc2|dispo[2]~27_combout\);

-- Location: FF_X16_Y1_N23
\bloc2|dispo[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[2]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[2]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N28
\bloc2|dispo[2]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[2]~26_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[2]~26_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[2]~_emulated_q\ $ (\bloc2|dispo[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[2]~26_combout\,
	datac => \bloc2|dispo[2]~_emulated_q\,
	datad => \bloc2|dispo[2]~25_combout\,
	combout => \bloc2|dispo[2]~26_combout\);

-- Location: LCCOMB_X16_Y1_N0
\bloc3|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan0~0_combout\ = (\bloc2|dispo[0]~30_combout\) # ((\bloc2|dispo[2]~26_combout\) # (\bloc2|dispo[1]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[0]~30_combout\,
	datac => \bloc2|dispo[2]~26_combout\,
	datad => \bloc2|dispo[1]~34_combout\,
	combout => \bloc3|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y3_N26
\bloc3|M_dispo[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[3]~21_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[3]~22_combout\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[3]~22_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[3]~21_combout\,
	combout => \bloc3|M_dispo[3]~21_combout\);

-- Location: LCCOMB_X15_Y3_N0
\bloc3|M_dispo[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[3]~23_combout\ = \bloc2|dispo[3]~22_combout\ $ (\bloc3|M_dispo[3]~21_combout\ $ (((\bloc3|LessThan1~0_combout\ & \bloc1|request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|LessThan1~0_combout\,
	datab => \bloc2|dispo[3]~22_combout\,
	datac => \bloc3|M_dispo[3]~21_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[3]~23_combout\);

-- Location: LCCOMB_X15_Y1_N16
\bloc3|M_dispo[5]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[5]~65_combout\ = (\bloc1|p2~q\) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloc1|p2~q\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[5]~65_combout\);

-- Location: FF_X15_Y3_N1
\bloc3|M_dispo[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[3]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[5]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[3]~_emulated_q\);

-- Location: LCCOMB_X15_Y3_N18
\bloc3|M_dispo[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[3]~22_combout\ = (\rst~input_o\ & (((\bloc2|dispo[3]~22_combout\)))) # (!\rst~input_o\ & (\bloc3|M_dispo[3]~21_combout\ $ (((\bloc3|M_dispo[3]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[3]~21_combout\,
	datab => \bloc2|dispo[3]~22_combout\,
	datac => \rst~input_o\,
	datad => \bloc3|M_dispo[3]~_emulated_q\,
	combout => \bloc3|M_dispo[3]~22_combout\);

-- Location: IOIBUF_X33_Y10_N8
\C_dispo[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(3),
	o => \C_dispo[3]~input_o\);

-- Location: LCCOMB_X15_Y3_N10
\bloc2|dispo[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[3]~21_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[3]~22_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[3]~21_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[3]~22_combout\,
	combout => \bloc2|dispo[3]~21_combout\);

-- Location: LCCOMB_X15_Y3_N4
\bloc2|dispo[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[3]~23_combout\ = \bloc2|dispo[3]~21_combout\ $ (((\charger~input_o\ & (\C_dispo[3]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[3]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[3]~input_o\,
	datab => \bloc3|M_dispo[3]~22_combout\,
	datac => \bloc2|dispo[3]~21_combout\,
	datad => \charger~input_o\,
	combout => \bloc2|dispo[3]~23_combout\);

-- Location: FF_X15_Y3_N5
\bloc2|dispo[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[3]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[3]~_emulated_q\);

-- Location: LCCOMB_X15_Y3_N6
\bloc2|dispo[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[3]~22_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[3]~22_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[3]~_emulated_q\ $ (\bloc2|dispo[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[3]~22_combout\,
	datab => \bloc2|dispo[3]~_emulated_q\,
	datac => \rst~input_o\,
	datad => \bloc2|dispo[3]~21_combout\,
	combout => \bloc2|dispo[3]~22_combout\);

-- Location: LCCOMB_X15_Y3_N30
\bloc3|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan1~1_combout\ = (\bloc2|dispo[4]~18_combout\) # (\bloc2|dispo[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[4]~18_combout\,
	datad => \bloc2|dispo[3]~22_combout\,
	combout => \bloc3|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y3_N18
\bloc3|M_dispo[5]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[5]~13_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[5]~14_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[5]~13_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[5]~14_combout\,
	combout => \bloc3|M_dispo[5]~13_combout\);

-- Location: LCCOMB_X15_Y3_N8
\bloc3|M_dispo[5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[5]~15_combout\ = \bloc3|M_dispo[5]~13_combout\ $ (((\bloc2|dispo[5]~14_combout\ & ((\bloc3|LessThan1~1_combout\) # (!\bloc1|request~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[5]~14_combout\,
	datab => \bloc3|LessThan1~1_combout\,
	datac => \bloc3|M_dispo[5]~13_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[5]~15_combout\);

-- Location: FF_X15_Y3_N9
\bloc3|M_dispo[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[5]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[5]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[5]~_emulated_q\);

-- Location: LCCOMB_X15_Y3_N14
\bloc3|M_dispo[5]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[5]~14_combout\ = (\rst~input_o\ & (\bloc2|dispo[5]~14_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[5]~_emulated_q\ $ (\bloc3|M_dispo[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[5]~14_combout\,
	datac => \bloc3|M_dispo[5]~_emulated_q\,
	datad => \bloc3|M_dispo[5]~13_combout\,
	combout => \bloc3|M_dispo[5]~14_combout\);

-- Location: IOIBUF_X14_Y31_N8
\C_dispo[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(5),
	o => \C_dispo[5]~input_o\);

-- Location: LCCOMB_X15_Y3_N24
\bloc2|dispo[5]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[5]~13_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[5]~14_combout\)) # (!GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~inputclkctrl_outclk\,
	datac => \bloc3|M_dispo[5]~14_combout\,
	datad => \bloc2|dispo[5]~13_combout\,
	combout => \bloc2|dispo[5]~13_combout\);

-- Location: LCCOMB_X16_Y3_N22
\bloc2|dispo[5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[5]~15_combout\ = \bloc2|dispo[5]~13_combout\ $ (((\charger~input_o\ & (\C_dispo[5]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[5]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[5]~input_o\,
	datab => \bloc3|M_dispo[5]~14_combout\,
	datac => \charger~input_o\,
	datad => \bloc2|dispo[5]~13_combout\,
	combout => \bloc2|dispo[5]~15_combout\);

-- Location: FF_X16_Y3_N23
\bloc2|dispo[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[5]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[5]~_emulated_q\);

-- Location: LCCOMB_X16_Y3_N0
\bloc2|dispo[5]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[5]~14_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[5]~14_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[5]~_emulated_q\ $ (\bloc2|dispo[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[5]~14_combout\,
	datac => \bloc2|dispo[5]~_emulated_q\,
	datad => \bloc2|dispo[5]~13_combout\,
	combout => \bloc2|dispo[5]~14_combout\);

-- Location: LCCOMB_X15_Y3_N12
\bloc3|M_dispo[5]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[5]~64_combout\ = ((!\bloc2|dispo[3]~22_combout\ & (!\bloc2|dispo[4]~18_combout\ & !\bloc2|dispo[5]~14_combout\))) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[3]~22_combout\,
	datab => \bloc2|dispo[4]~18_combout\,
	datac => \bloc2|dispo[5]~14_combout\,
	datad => \bloc1|request~q\,
	combout => \bloc3|M_dispo[5]~64_combout\);

-- Location: LCCOMB_X16_Y3_N24
\bloc3|M_dispo[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[4]~17_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[4]~18_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[4]~17_combout\,
	datac => \bloc2|dispo[4]~18_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \bloc3|M_dispo[4]~17_combout\);

-- Location: LCCOMB_X15_Y3_N28
\bloc3|M_dispo[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[4]~19_combout\ = \bloc2|dispo[4]~18_combout\ $ (\bloc3|M_dispo[4]~17_combout\ $ (((!\bloc2|dispo[3]~22_combout\ & !\bloc3|M_dispo[5]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[4]~18_combout\,
	datab => \bloc2|dispo[3]~22_combout\,
	datac => \bloc3|M_dispo[5]~64_combout\,
	datad => \bloc3|M_dispo[4]~17_combout\,
	combout => \bloc3|M_dispo[4]~19_combout\);

-- Location: FF_X15_Y3_N29
\bloc3|M_dispo[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[5]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[4]~_emulated_q\);

-- Location: LCCOMB_X15_Y3_N2
\bloc3|M_dispo[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[4]~18_combout\ = (\rst~input_o\ & (\bloc2|dispo[4]~18_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[4]~_emulated_q\ $ (\bloc3|M_dispo[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[4]~18_combout\,
	datab => \bloc3|M_dispo[4]~_emulated_q\,
	datac => \rst~input_o\,
	datad => \bloc3|M_dispo[4]~17_combout\,
	combout => \bloc3|M_dispo[4]~18_combout\);

-- Location: LCCOMB_X15_Y3_N16
\bloc2|dispo[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[4]~17_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[4]~18_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[4]~17_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[4]~18_combout\,
	combout => \bloc2|dispo[4]~17_combout\);

-- Location: IOIBUF_X33_Y16_N1
\C_dispo[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(4),
	o => \C_dispo[4]~input_o\);

-- Location: LCCOMB_X16_Y3_N2
\bloc2|dispo[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[4]~19_combout\ = \bloc2|dispo[4]~17_combout\ $ (((\charger~input_o\ & (\C_dispo[4]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[4]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[4]~input_o\,
	datab => \bloc3|M_dispo[4]~18_combout\,
	datac => \charger~input_o\,
	datad => \bloc2|dispo[4]~17_combout\,
	combout => \bloc2|dispo[4]~19_combout\);

-- Location: FF_X16_Y3_N3
\bloc2|dispo[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[4]~_emulated_q\);

-- Location: LCCOMB_X16_Y3_N4
\bloc2|dispo[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[4]~18_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[4]~18_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[4]~17_combout\ $ (\bloc2|dispo[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[4]~18_combout\,
	datac => \bloc2|dispo[4]~17_combout\,
	datad => \bloc2|dispo[4]~_emulated_q\,
	combout => \bloc2|dispo[4]~18_combout\);

-- Location: LCCOMB_X16_Y3_N8
\bloc3|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan1~0_combout\ = (\bloc2|dispo[4]~18_combout\) # ((\bloc2|dispo[3]~22_combout\) # (\bloc2|dispo[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[4]~18_combout\,
	datac => \bloc2|dispo[3]~22_combout\,
	datad => \bloc2|dispo[5]~14_combout\,
	combout => \bloc3|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y1_N6
\bloc3|alarme_repture_stock~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|alarme_repture_stock~2_combout\ = (\bloc1|p2~q\ & ((\bloc3|LessThan1~0_combout\))) # (!\bloc1|p2~q\ & (\bloc3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p2~q\,
	datac => \bloc3|LessThan0~0_combout\,
	datad => \bloc3|LessThan1~0_combout\,
	combout => \bloc3|alarme_repture_stock~2_combout\);

-- Location: LCCOMB_X15_Y1_N12
\bloc3|alarme_repture_stock~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|alarme_repture_stock~3_combout\ = (\bloc1|p3~q\ & (\bloc3|LessThan2~0_combout\)) # (!\bloc1|p3~q\ & ((\bloc3|alarme_repture_stock~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p3~q\,
	datac => \bloc3|LessThan2~0_combout\,
	datad => \bloc3|alarme_repture_stock~2_combout\,
	combout => \bloc3|alarme_repture_stock~3_combout\);

-- Location: LCCOMB_X21_Y1_N18
\bloc1|p4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p4~1_combout\ = (!\clavier[1]~input_o\ & (\clavier[3]~input_o\ & (!\clavier[2]~input_o\ & \bloc1|p4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clavier[1]~input_o\,
	datab => \clavier[3]~input_o\,
	datac => \clavier[2]~input_o\,
	datad => \bloc1|p4~0_combout\,
	combout => \bloc1|p4~1_combout\);

-- Location: LCCOMB_X14_Y1_N12
\bloc1|p4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc1|p4~feeder_combout\ = \bloc1|p4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloc1|p4~1_combout\,
	combout => \bloc1|p4~feeder_combout\);

-- Location: FF_X14_Y1_N13
\bloc1|p4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bloc1|p4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc1|p4~q\);

-- Location: LCCOMB_X17_Y1_N16
\bloc3|M_dispo[9]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[9]~45_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[9]~46_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[9]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[9]~45_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[9]~46_combout\,
	combout => \bloc3|M_dispo[9]~45_combout\);

-- Location: LCCOMB_X17_Y1_N28
\bloc3|M_dispo[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[9]~47_combout\ = \bloc3|M_dispo[9]~45_combout\ $ (\bloc2|dispo[9]~46_combout\ $ (((\bloc3|LessThan3~0_combout\ & \bloc1|request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|LessThan3~0_combout\,
	datab => \bloc3|M_dispo[9]~45_combout\,
	datac => \bloc1|request~q\,
	datad => \bloc2|dispo[9]~46_combout\,
	combout => \bloc3|M_dispo[9]~47_combout\);

-- Location: LCCOMB_X17_Y1_N0
\bloc3|M_dispo[11]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[11]~61_combout\ = (\bloc1|p4~q\) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|request~q\,
	datac => \bloc1|p4~q\,
	combout => \bloc3|M_dispo[11]~61_combout\);

-- Location: FF_X17_Y1_N29
\bloc3|M_dispo[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[9]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[11]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[9]~_emulated_q\);

-- Location: LCCOMB_X17_Y1_N10
\bloc3|M_dispo[9]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[9]~46_combout\ = (\rst~input_o\ & (((\bloc2|dispo[9]~46_combout\)))) # (!\rst~input_o\ & (\bloc3|M_dispo[9]~45_combout\ $ (((\bloc3|M_dispo[9]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[9]~45_combout\,
	datac => \bloc2|dispo[9]~46_combout\,
	datad => \bloc3|M_dispo[9]~_emulated_q\,
	combout => \bloc3|M_dispo[9]~46_combout\);

-- Location: IOIBUF_X24_Y0_N1
\C_dispo[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(9),
	o => \C_dispo[9]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\bloc2|dispo[9]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[9]~45_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[9]~46_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[9]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[9]~45_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[9]~46_combout\,
	combout => \bloc2|dispo[9]~45_combout\);

-- Location: LCCOMB_X17_Y1_N4
\bloc2|dispo[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[9]~47_combout\ = \bloc2|dispo[9]~45_combout\ $ (((\charger~input_o\ & (\C_dispo[9]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[9]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_dispo[9]~input_o\,
	datab => \bloc2|dispo[9]~45_combout\,
	datac => \charger~input_o\,
	datad => \bloc3|M_dispo[9]~46_combout\,
	combout => \bloc2|dispo[9]~47_combout\);

-- Location: FF_X17_Y1_N5
\bloc2|dispo[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[9]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[9]~_emulated_q\);

-- Location: LCCOMB_X17_Y1_N14
\bloc2|dispo[9]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[9]~46_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[9]~46_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[9]~_emulated_q\ $ (\bloc2|dispo[9]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[9]~46_combout\,
	datac => \bloc2|dispo[9]~_emulated_q\,
	datad => \bloc2|dispo[9]~45_combout\,
	combout => \bloc2|dispo[9]~46_combout\);

-- Location: LCCOMB_X16_Y3_N30
\bloc3|M_dispo[11]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[11]~60_combout\ = ((!\bloc2|dispo[9]~46_combout\ & (!\bloc2|dispo[10]~42_combout\ & !\bloc2|dispo[11]~38_combout\))) # (!\bloc1|request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|request~q\,
	datab => \bloc2|dispo[9]~46_combout\,
	datac => \bloc2|dispo[10]~42_combout\,
	datad => \bloc2|dispo[11]~38_combout\,
	combout => \bloc3|M_dispo[11]~60_combout\);

-- Location: LCCOMB_X16_Y3_N10
\bloc3|M_dispo[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[10]~41_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[10]~42_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[10]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[10]~41_combout\,
	datab => \bloc2|dispo[10]~42_combout\,
	datad => \rst~inputclkctrl_outclk\,
	combout => \bloc3|M_dispo[10]~41_combout\);

-- Location: LCCOMB_X16_Y3_N14
\bloc3|M_dispo[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[10]~43_combout\ = \bloc3|M_dispo[10]~41_combout\ $ (\bloc2|dispo[10]~42_combout\ $ (((!\bloc3|M_dispo[11]~60_combout\ & !\bloc2|dispo[9]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[11]~60_combout\,
	datab => \bloc3|M_dispo[10]~41_combout\,
	datac => \bloc2|dispo[9]~46_combout\,
	datad => \bloc2|dispo[10]~42_combout\,
	combout => \bloc3|M_dispo[10]~43_combout\);

-- Location: FF_X16_Y3_N15
\bloc3|M_dispo[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[10]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[11]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[10]~_emulated_q\);

-- Location: LCCOMB_X16_Y3_N20
\bloc3|M_dispo[10]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[10]~42_combout\ = (\rst~input_o\ & (\bloc2|dispo[10]~42_combout\)) # (!\rst~input_o\ & ((\bloc3|M_dispo[10]~_emulated_q\ $ (\bloc3|M_dispo[10]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc2|dispo[10]~42_combout\,
	datac => \bloc3|M_dispo[10]~_emulated_q\,
	datad => \bloc3|M_dispo[10]~41_combout\,
	combout => \bloc3|M_dispo[10]~42_combout\);

-- Location: IOIBUF_X24_Y0_N8
\C_dispo[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(10),
	o => \C_dispo[10]~input_o\);

-- Location: LCCOMB_X16_Y3_N28
\bloc2|dispo[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[10]~41_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[10]~42_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[10]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[10]~41_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[10]~42_combout\,
	combout => \bloc2|dispo[10]~41_combout\);

-- Location: LCCOMB_X16_Y3_N26
\bloc2|dispo[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[10]~43_combout\ = \bloc2|dispo[10]~41_combout\ $ (((\charger~input_o\ & (\C_dispo[10]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[10]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charger~input_o\,
	datab => \C_dispo[10]~input_o\,
	datac => \bloc3|M_dispo[10]~42_combout\,
	datad => \bloc2|dispo[10]~41_combout\,
	combout => \bloc2|dispo[10]~43_combout\);

-- Location: FF_X16_Y3_N27
\bloc2|dispo[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[10]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[10]~_emulated_q\);

-- Location: LCCOMB_X16_Y3_N16
\bloc2|dispo[10]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[10]~42_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[10]~42_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[10]~_emulated_q\ $ (\bloc2|dispo[10]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[10]~42_combout\,
	datac => \bloc2|dispo[10]~_emulated_q\,
	datad => \bloc2|dispo[10]~41_combout\,
	combout => \bloc2|dispo[10]~42_combout\);

-- Location: LCCOMB_X17_Y1_N22
\bloc3|LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan3~1_combout\ = (\bloc2|dispo[9]~46_combout\) # (\bloc2|dispo[10]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[9]~46_combout\,
	datad => \bloc2|dispo[10]~42_combout\,
	combout => \bloc3|LessThan3~1_combout\);

-- Location: LCCOMB_X17_Y1_N2
\bloc3|M_dispo[11]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[11]~37_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc2|dispo[11]~38_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc3|M_dispo[11]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc3|M_dispo[11]~37_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc2|dispo[11]~38_combout\,
	combout => \bloc3|M_dispo[11]~37_combout\);

-- Location: LCCOMB_X17_Y1_N20
\bloc3|M_dispo[11]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[11]~39_combout\ = \bloc3|M_dispo[11]~37_combout\ $ (((\bloc2|dispo[11]~38_combout\ & ((\bloc3|LessThan3~1_combout\) # (!\bloc1|request~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|LessThan3~1_combout\,
	datab => \bloc1|request~q\,
	datac => \bloc3|M_dispo[11]~37_combout\,
	datad => \bloc2|dispo[11]~38_combout\,
	combout => \bloc3|M_dispo[11]~39_combout\);

-- Location: FF_X17_Y1_N21
\bloc3|M_dispo[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|M_dispo[11]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|M_dispo[11]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|M_dispo[11]~_emulated_q\);

-- Location: LCCOMB_X17_Y1_N18
\bloc3|M_dispo[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|M_dispo[11]~38_combout\ = (\rst~input_o\ & (((\bloc2|dispo[11]~38_combout\)))) # (!\rst~input_o\ & (\bloc3|M_dispo[11]~_emulated_q\ $ (((\bloc3|M_dispo[11]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \bloc3|M_dispo[11]~_emulated_q\,
	datac => \bloc2|dispo[11]~38_combout\,
	datad => \bloc3|M_dispo[11]~37_combout\,
	combout => \bloc3|M_dispo[11]~38_combout\);

-- Location: LCCOMB_X17_Y1_N6
\bloc2|dispo[11]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[11]~37_combout\ = (GLOBAL(\rst~inputclkctrl_outclk\) & ((\bloc3|M_dispo[11]~38_combout\))) # (!GLOBAL(\rst~inputclkctrl_outclk\) & (\bloc2|dispo[11]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[11]~37_combout\,
	datac => \rst~inputclkctrl_outclk\,
	datad => \bloc3|M_dispo[11]~38_combout\,
	combout => \bloc2|dispo[11]~37_combout\);

-- Location: IOIBUF_X33_Y16_N22
\C_dispo[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_dispo(11),
	o => \C_dispo[11]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\bloc2|dispo[11]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[11]~39_combout\ = \bloc2|dispo[11]~37_combout\ $ (((\charger~input_o\ & (\C_dispo[11]~input_o\)) # (!\charger~input_o\ & ((\bloc3|M_dispo[11]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc2|dispo[11]~37_combout\,
	datab => \C_dispo[11]~input_o\,
	datac => \charger~input_o\,
	datad => \bloc3|M_dispo[11]~38_combout\,
	combout => \bloc2|dispo[11]~39_combout\);

-- Location: FF_X17_Y1_N9
\bloc2|dispo[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc2|dispo[11]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc2|dispo[11]~_emulated_q\);

-- Location: LCCOMB_X17_Y1_N30
\bloc2|dispo[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc2|dispo[11]~38_combout\ = (\rst~input_o\ & (\bloc3|M_dispo[11]~38_combout\)) # (!\rst~input_o\ & ((\bloc2|dispo[11]~_emulated_q\ $ (\bloc2|dispo[11]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|M_dispo[11]~38_combout\,
	datab => \rst~input_o\,
	datac => \bloc2|dispo[11]~_emulated_q\,
	datad => \bloc2|dispo[11]~37_combout\,
	combout => \bloc2|dispo[11]~38_combout\);

-- Location: LCCOMB_X17_Y1_N12
\bloc3|LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|LessThan3~0_combout\ = (\bloc2|dispo[11]~38_combout\) # ((\bloc2|dispo[9]~46_combout\) # (\bloc2|dispo[10]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc2|dispo[11]~38_combout\,
	datac => \bloc2|dispo[9]~46_combout\,
	datad => \bloc2|dispo[10]~42_combout\,
	combout => \bloc3|LessThan3~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\bloc3|alarme_repture_stock~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|alarme_repture_stock~6_combout\ = (\bloc1|request~q\ & ((\bloc1|p4~q\ & ((!\bloc3|LessThan3~0_combout\))) # (!\bloc1|p4~q\ & (!\bloc3|alarme_repture_stock~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|alarme_repture_stock~3_combout\,
	datab => \bloc1|p4~q\,
	datac => \bloc1|request~q\,
	datad => \bloc3|LessThan3~0_combout\,
	combout => \bloc3|alarme_repture_stock~6_combout\);

-- Location: LCCOMB_X14_Y1_N14
\bloc3|alarme_repture_stock~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|alarme_repture_stock~4_combout\ = (!\bloc1|p1~q\ & (!\bloc1|p3~q\ & !\bloc1|p2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloc1|p1~q\,
	datac => \bloc1|p3~q\,
	datad => \bloc1|p2~q\,
	combout => \bloc3|alarme_repture_stock~4_combout\);

-- Location: LCCOMB_X15_Y1_N26
\bloc3|alarme_repture_stock~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|alarme_repture_stock~5_combout\ = (\bloc1|p4~q\) # ((!\bloc3|alarme_repture_stock~4_combout\) # (!\bloc1|request~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p4~q\,
	datac => \bloc1|request~q\,
	datad => \bloc3|alarme_repture_stock~4_combout\,
	combout => \bloc3|alarme_repture_stock~5_combout\);

-- Location: FF_X15_Y1_N19
\bloc3|alarme_repture_stock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc3|alarme_repture_stock~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|alarme_repture_stock~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|alarme_repture_stock~q\);

-- Location: LCCOMB_X15_Y1_N30
\bloc3|distribuer~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc3|distribuer~2_combout\ = (\bloc1|request~q\ & ((\bloc1|p4~q\ & (\bloc3|LessThan3~0_combout\)) # (!\bloc1|p4~q\ & ((\bloc3|alarme_repture_stock~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p4~q\,
	datab => \bloc1|request~q\,
	datac => \bloc3|LessThan3~0_combout\,
	datad => \bloc3|alarme_repture_stock~3_combout\,
	combout => \bloc3|distribuer~2_combout\);

-- Location: FF_X15_Y1_N31
\bloc3|distribuer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bloc3|distribuer~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \bloc3|alarme_repture_stock~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc3|distribuer~q\);

-- Location: LCCOMB_X15_Y1_N24
\bloc4|etat_futur.terminer~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.terminer~0_combout\ = (\bloc3|distribuer~q\ & ((\bloc1|p4~q\) # (!\bloc3|alarme_repture_stock~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc3|alarme_repture_stock~4_combout\,
	datac => \bloc3|distribuer~q\,
	datad => \bloc1|p4~q\,
	combout => \bloc4|etat_futur.terminer~0_combout\);

-- Location: CLKCTRL_G15
\bloc4|etat_futur.terminer~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloc4|etat_futur.terminer~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloc4|etat_futur.terminer~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y1_N8
\bloc4|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|Selector0~0_combout\ = (\bloc4|etat_present.debut~q\) # ((\bloc3|distribuer~q\ & ((\bloc1|p4~q\) # (!\bloc3|alarme_repture_stock~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p4~q\,
	datab => \bloc3|alarme_repture_stock~4_combout\,
	datac => \bloc3|distribuer~q\,
	datad => \bloc4|etat_present.debut~q\,
	combout => \bloc4|Selector0~0_combout\);

-- Location: CLKCTRL_G16
\bloc4|Selector0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloc4|Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloc4|Selector0~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y1_N6
\bloc4|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|WideOr0~0_combout\ = (\bloc4|etat_present.terminer~q\) # (!\bloc4|etat_present.debut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloc4|etat_present.debut~q\,
	datad => \bloc4|etat_present.terminer~q\,
	combout => \bloc4|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y1_N24
\bloc4|etat_futur.terminer_139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.terminer_139~combout\ = (GLOBAL(\bloc4|Selector0~0clkctrl_outclk\) & ((!\bloc4|WideOr0~0_combout\))) # (!GLOBAL(\bloc4|Selector0~0clkctrl_outclk\) & (\bloc4|etat_futur.terminer_139~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.terminer_139~combout\,
	datac => \bloc4|Selector0~0clkctrl_outclk\,
	datad => \bloc4|WideOr0~0_combout\,
	combout => \bloc4|etat_futur.terminer_139~combout\);

-- Location: FF_X14_Y1_N25
\bloc4|etat_present.terminer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc4|etat_futur.terminer_139~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.terminer~q\);

-- Location: LCCOMB_X14_Y1_N10
\bloc4|etat_futur.debut_208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.debut_208~combout\ = (GLOBAL(\bloc4|Selector0~0clkctrl_outclk\) & ((\bloc4|etat_present.terminer~q\))) # (!GLOBAL(\bloc4|Selector0~0clkctrl_outclk\) & (\bloc4|etat_futur.debut_208~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.debut_208~combout\,
	datac => \bloc4|Selector0~0clkctrl_outclk\,
	datad => \bloc4|etat_present.terminer~q\,
	combout => \bloc4|etat_futur.debut_208~combout\);

-- Location: LCCOMB_X14_Y1_N2
\bloc4|etat_present.debut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_present.debut~0_combout\ = !\bloc4|etat_futur.debut_208~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloc4|etat_futur.debut_208~combout\,
	combout => \bloc4|etat_present.debut~0_combout\);

-- Location: FF_X14_Y1_N3
\bloc4|etat_present.debut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bloc4|etat_present.debut~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.debut~q\);

-- Location: LCCOMB_X14_Y1_N30
\bloc4|etat_futur.DP1_191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP1_191~combout\ = (!\bloc4|etat_present.debut~q\ & ((GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & ((\bloc1|p1~q\))) # (!GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & (\bloc4|etat_futur.DP1_191~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.DP1_191~combout\,
	datab => \bloc1|p1~q\,
	datac => \bloc4|etat_futur.terminer~0clkctrl_outclk\,
	datad => \bloc4|etat_present.debut~q\,
	combout => \bloc4|etat_futur.DP1_191~combout\);

-- Location: FF_X14_Y1_N31
\bloc4|etat_present.DP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc4|etat_futur.DP1_191~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.DP1~q\);

-- Location: LCCOMB_X14_Y1_N4
\bloc4|etat_futur.DP2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP2~0_combout\ = (!\bloc1|p1~q\ & \bloc1|p2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p1~q\,
	datad => \bloc1|p2~q\,
	combout => \bloc4|etat_futur.DP2~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\bloc4|etat_futur.DP2_178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP2_178~combout\ = (!\bloc4|etat_present.debut~q\ & ((GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & ((\bloc4|etat_futur.DP2~0_combout\))) # (!GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & 
-- (\bloc4|etat_futur.DP2_178~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.terminer~0clkctrl_outclk\,
	datab => \bloc4|etat_futur.DP2_178~combout\,
	datac => \bloc4|etat_futur.DP2~0_combout\,
	datad => \bloc4|etat_present.debut~q\,
	combout => \bloc4|etat_futur.DP2_178~combout\);

-- Location: FF_X14_Y1_N17
\bloc4|etat_present.DP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc4|etat_futur.DP2_178~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.DP2~q\);

-- Location: LCCOMB_X14_Y1_N26
\bloc4|etat_futur.DP3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP3~0_combout\ = (!\bloc1|p1~q\ & (\bloc1|p3~q\ & !\bloc1|p2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc1|p1~q\,
	datac => \bloc1|p3~q\,
	datad => \bloc1|p2~q\,
	combout => \bloc4|etat_futur.DP3~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\bloc4|etat_futur.DP3_165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP3_165~combout\ = (!\bloc4|etat_present.debut~q\ & ((GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & ((\bloc4|etat_futur.DP3~0_combout\))) # (!GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & 
-- (\bloc4|etat_futur.DP3_165~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.DP3_165~combout\,
	datab => \bloc4|etat_futur.terminer~0clkctrl_outclk\,
	datac => \bloc4|etat_futur.DP3~0_combout\,
	datad => \bloc4|etat_present.debut~q\,
	combout => \bloc4|etat_futur.DP3_165~combout\);

-- Location: FF_X14_Y1_N19
\bloc4|etat_present.DP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc4|etat_futur.DP3_165~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.DP3~q\);

-- Location: LCCOMB_X14_Y1_N20
\bloc4|etat_futur.DP4_152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bloc4|etat_futur.DP4_152~combout\ = (!\bloc4|etat_present.debut~q\ & ((GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & ((\bloc3|alarme_repture_stock~4_combout\))) # (!GLOBAL(\bloc4|etat_futur.terminer~0clkctrl_outclk\) & 
-- (\bloc4|etat_futur.DP4_152~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloc4|etat_futur.terminer~0clkctrl_outclk\,
	datab => \bloc4|etat_futur.DP4_152~combout\,
	datac => \bloc3|alarme_repture_stock~4_combout\,
	datad => \bloc4|etat_present.debut~q\,
	combout => \bloc4|etat_futur.DP4_152~combout\);

-- Location: FF_X14_Y1_N21
\bloc4|etat_present.DP4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloc4|etat_futur.DP4_152~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloc4|etat_present.DP4~q\);

ww_alarme_repture_stock <= \alarme_repture_stock~output_o\;

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;

ww_d3 <= \d3~output_o\;

ww_d4 <= \d4~output_o\;

ww_fin <= \fin~output_o\;
END structure;


