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

-- DATE "01/06/2023 18:18:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS IS
    PORT (
	clock : IN std_logic;
	ProgramCounter : IN std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- clock	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[8]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[9]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[11]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[15]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[16]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[17]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[18]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[19]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[20]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[22]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[24]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[25]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[26]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[27]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[28]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[29]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[30]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[31]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_ProgramCounter : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \ProgramCounter[0]~input_o\ : std_logic;
SIGNAL \ProgramCounter[1]~input_o\ : std_logic;
SIGNAL \ProgramCounter[2]~input_o\ : std_logic;
SIGNAL \ProgramCounter[3]~input_o\ : std_logic;
SIGNAL \ProgramCounter[4]~input_o\ : std_logic;
SIGNAL \ProgramCounter[5]~input_o\ : std_logic;
SIGNAL \ProgramCounter[6]~input_o\ : std_logic;
SIGNAL \ProgramCounter[7]~input_o\ : std_logic;
SIGNAL \ProgramCounter[8]~input_o\ : std_logic;
SIGNAL \ProgramCounter[9]~input_o\ : std_logic;
SIGNAL \ProgramCounter[10]~input_o\ : std_logic;
SIGNAL \ProgramCounter[11]~input_o\ : std_logic;
SIGNAL \ProgramCounter[12]~input_o\ : std_logic;
SIGNAL \ProgramCounter[13]~input_o\ : std_logic;
SIGNAL \ProgramCounter[14]~input_o\ : std_logic;
SIGNAL \ProgramCounter[15]~input_o\ : std_logic;
SIGNAL \ProgramCounter[16]~input_o\ : std_logic;
SIGNAL \ProgramCounter[17]~input_o\ : std_logic;
SIGNAL \ProgramCounter[18]~input_o\ : std_logic;
SIGNAL \ProgramCounter[19]~input_o\ : std_logic;
SIGNAL \ProgramCounter[20]~input_o\ : std_logic;
SIGNAL \ProgramCounter[21]~input_o\ : std_logic;
SIGNAL \ProgramCounter[22]~input_o\ : std_logic;
SIGNAL \ProgramCounter[23]~input_o\ : std_logic;
SIGNAL \ProgramCounter[24]~input_o\ : std_logic;
SIGNAL \ProgramCounter[25]~input_o\ : std_logic;
SIGNAL \ProgramCounter[26]~input_o\ : std_logic;
SIGNAL \ProgramCounter[27]~input_o\ : std_logic;
SIGNAL \ProgramCounter[28]~input_o\ : std_logic;
SIGNAL \ProgramCounter[29]~input_o\ : std_logic;
SIGNAL \ProgramCounter[30]~input_o\ : std_logic;
SIGNAL \ProgramCounter[31]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_ProgramCounter <= ProgramCounter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X16_Y0_N8
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\ProgramCounter[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(0),
	o => \ProgramCounter[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\ProgramCounter[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(1),
	o => \ProgramCounter[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\ProgramCounter[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(2),
	o => \ProgramCounter[2]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\ProgramCounter[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(3),
	o => \ProgramCounter[3]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\ProgramCounter[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(4),
	o => \ProgramCounter[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\ProgramCounter[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(5),
	o => \ProgramCounter[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\ProgramCounter[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(6),
	o => \ProgramCounter[6]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\ProgramCounter[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(7),
	o => \ProgramCounter[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\ProgramCounter[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(8),
	o => \ProgramCounter[8]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\ProgramCounter[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(9),
	o => \ProgramCounter[9]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\ProgramCounter[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(10),
	o => \ProgramCounter[10]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\ProgramCounter[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(11),
	o => \ProgramCounter[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\ProgramCounter[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(12),
	o => \ProgramCounter[12]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\ProgramCounter[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(13),
	o => \ProgramCounter[13]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\ProgramCounter[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(14),
	o => \ProgramCounter[14]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\ProgramCounter[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(15),
	o => \ProgramCounter[15]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\ProgramCounter[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(16),
	o => \ProgramCounter[16]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\ProgramCounter[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(17),
	o => \ProgramCounter[17]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\ProgramCounter[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(18),
	o => \ProgramCounter[18]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\ProgramCounter[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(19),
	o => \ProgramCounter[19]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\ProgramCounter[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(20),
	o => \ProgramCounter[20]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\ProgramCounter[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(21),
	o => \ProgramCounter[21]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\ProgramCounter[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(22),
	o => \ProgramCounter[22]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\ProgramCounter[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(23),
	o => \ProgramCounter[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\ProgramCounter[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(24),
	o => \ProgramCounter[24]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\ProgramCounter[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(25),
	o => \ProgramCounter[25]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\ProgramCounter[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(26),
	o => \ProgramCounter[26]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\ProgramCounter[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(27),
	o => \ProgramCounter[27]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\ProgramCounter[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(28),
	o => \ProgramCounter[28]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\ProgramCounter[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(29),
	o => \ProgramCounter[29]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\ProgramCounter[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(30),
	o => \ProgramCounter[30]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\ProgramCounter[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProgramCounter(31),
	o => \ProgramCounter[31]~input_o\);
END structure;


