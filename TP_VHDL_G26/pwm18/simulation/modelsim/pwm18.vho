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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/02/2015 00:07:41"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm18 IS
    PORT (
	clk : IN std_logic;
	FREQ : IN std_logic_vector(7 DOWNTO 0);
	DUTY : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	pwm_s : BUFFER std_logic
	);
END pwm18;

-- Design Ports Information
-- pwm_s	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DUTY[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm18 IS
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
SIGNAL ww_FREQ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DUTY : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_pwm_s : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_s~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DUTY[7]~input_o\ : std_logic;
SIGNAL \compteur[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \FREQ[7]~input_o\ : std_logic;
SIGNAL \FREQ[6]~input_o\ : std_logic;
SIGNAL \FREQ[5]~input_o\ : std_logic;
SIGNAL \FREQ[4]~input_o\ : std_logic;
SIGNAL \FREQ[3]~input_o\ : std_logic;
SIGNAL \FREQ[2]~input_o\ : std_logic;
SIGNAL \FREQ[1]~input_o\ : std_logic;
SIGNAL \FREQ[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \compteur[0]~9\ : std_logic;
SIGNAL \compteur[1]~10_combout\ : std_logic;
SIGNAL \compteur[1]~11\ : std_logic;
SIGNAL \compteur[2]~12_combout\ : std_logic;
SIGNAL \compteur[2]~13\ : std_logic;
SIGNAL \compteur[3]~14_combout\ : std_logic;
SIGNAL \compteur[3]~15\ : std_logic;
SIGNAL \compteur[4]~16_combout\ : std_logic;
SIGNAL \compteur[4]~17\ : std_logic;
SIGNAL \compteur[5]~18_combout\ : std_logic;
SIGNAL \compteur[5]~19\ : std_logic;
SIGNAL \compteur[6]~20_combout\ : std_logic;
SIGNAL \compteur[6]~21\ : std_logic;
SIGNAL \compteur[7]~22_combout\ : std_logic;
SIGNAL \DUTY[6]~input_o\ : std_logic;
SIGNAL \DUTY[5]~input_o\ : std_logic;
SIGNAL \DUTY[4]~input_o\ : std_logic;
SIGNAL \DUTY[3]~input_o\ : std_logic;
SIGNAL \DUTY[2]~input_o\ : std_logic;
SIGNAL \DUTY[1]~input_o\ : std_logic;
SIGNAL \DUTY[0]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \pwm_signal~0_combout\ : std_logic;
SIGNAL \pwm_signal~q\ : std_logic;
SIGNAL compteur : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_FREQ <= FREQ;
ww_DUTY <= DUTY;
ww_reset <= reset;
pwm_s <= ww_pwm_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y34_N9
\pwm_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_signal~q\,
	devoe => ww_devoe,
	o => \pwm_s~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X16_Y0_N15
\DUTY[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(7),
	o => \DUTY[7]~input_o\);

-- Location: LCCOMB_X14_Y4_N0
\compteur[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[0]~8_combout\ = compteur(0) $ (VCC)
-- \compteur[0]~9\ = CARRY(compteur(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compteur(0),
	datad => VCC,
	combout => \compteur[0]~8_combout\,
	cout => \compteur[0]~9\);

-- Location: IOIBUF_X27_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N15
\FREQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(7),
	o => \FREQ[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\FREQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(6),
	o => \FREQ[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\FREQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(5),
	o => \FREQ[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\FREQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(4),
	o => \FREQ[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\FREQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(3),
	o => \FREQ[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\FREQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(2),
	o => \FREQ[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\FREQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(1),
	o => \FREQ[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\FREQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ(0),
	o => \FREQ[0]~input_o\);

-- Location: LCCOMB_X14_Y4_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\FREQ[0]~input_o\ & !compteur(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ[0]~input_o\,
	datab => compteur(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y4_N18
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\FREQ[1]~input_o\ & (compteur(1) & !\LessThan0~1_cout\)) # (!\FREQ[1]~input_o\ & ((compteur(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ[1]~input_o\,
	datab => compteur(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y4_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\FREQ[2]~input_o\ & ((!\LessThan0~3_cout\) # (!compteur(2)))) # (!\FREQ[2]~input_o\ & (!compteur(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ[2]~input_o\,
	datab => compteur(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y4_N22
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((compteur(3) & ((!\LessThan0~5_cout\) # (!\FREQ[3]~input_o\))) # (!compteur(3) & (!\FREQ[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(3),
	datab => \FREQ[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y4_N24
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\FREQ[4]~input_o\ & ((!\LessThan0~7_cout\) # (!compteur(4)))) # (!\FREQ[4]~input_o\ & (!compteur(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ[4]~input_o\,
	datab => compteur(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y4_N26
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((compteur(5) & ((!\LessThan0~9_cout\) # (!\FREQ[5]~input_o\))) # (!compteur(5) & (!\FREQ[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(5),
	datab => \FREQ[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y4_N28
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((compteur(6) & (\FREQ[6]~input_o\ & !\LessThan0~11_cout\)) # (!compteur(6) & ((\FREQ[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(6),
	datab => \FREQ[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y4_N30
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\FREQ[7]~input_o\ & ((\LessThan0~13_cout\) # (!compteur(7)))) # (!\FREQ[7]~input_o\ & (!compteur(7) & \LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ[7]~input_o\,
	datab => compteur(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: FF_X14_Y4_N1
\compteur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(0));

-- Location: LCCOMB_X14_Y4_N2
\compteur[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[1]~10_combout\ = (compteur(1) & (!\compteur[0]~9\)) # (!compteur(1) & ((\compteur[0]~9\) # (GND)))
-- \compteur[1]~11\ = CARRY((!\compteur[0]~9\) # (!compteur(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compteur(1),
	datad => VCC,
	cin => \compteur[0]~9\,
	combout => \compteur[1]~10_combout\,
	cout => \compteur[1]~11\);

-- Location: FF_X14_Y4_N3
\compteur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[1]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(1));

-- Location: LCCOMB_X14_Y4_N4
\compteur[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[2]~12_combout\ = (compteur(2) & (\compteur[1]~11\ $ (GND))) # (!compteur(2) & (!\compteur[1]~11\ & VCC))
-- \compteur[2]~13\ = CARRY((compteur(2) & !\compteur[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compteur(2),
	datad => VCC,
	cin => \compteur[1]~11\,
	combout => \compteur[2]~12_combout\,
	cout => \compteur[2]~13\);

-- Location: FF_X14_Y4_N5
\compteur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[2]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(2));

-- Location: LCCOMB_X14_Y4_N6
\compteur[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[3]~14_combout\ = (compteur(3) & (!\compteur[2]~13\)) # (!compteur(3) & ((\compteur[2]~13\) # (GND)))
-- \compteur[3]~15\ = CARRY((!\compteur[2]~13\) # (!compteur(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(3),
	datad => VCC,
	cin => \compteur[2]~13\,
	combout => \compteur[3]~14_combout\,
	cout => \compteur[3]~15\);

-- Location: FF_X14_Y4_N7
\compteur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[3]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(3));

-- Location: LCCOMB_X14_Y4_N8
\compteur[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[4]~16_combout\ = (compteur(4) & (\compteur[3]~15\ $ (GND))) # (!compteur(4) & (!\compteur[3]~15\ & VCC))
-- \compteur[4]~17\ = CARRY((compteur(4) & !\compteur[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compteur(4),
	datad => VCC,
	cin => \compteur[3]~15\,
	combout => \compteur[4]~16_combout\,
	cout => \compteur[4]~17\);

-- Location: FF_X14_Y4_N9
\compteur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[4]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(4));

-- Location: LCCOMB_X14_Y4_N10
\compteur[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[5]~18_combout\ = (compteur(5) & (!\compteur[4]~17\)) # (!compteur(5) & ((\compteur[4]~17\) # (GND)))
-- \compteur[5]~19\ = CARRY((!\compteur[4]~17\) # (!compteur(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(5),
	datad => VCC,
	cin => \compteur[4]~17\,
	combout => \compteur[5]~18_combout\,
	cout => \compteur[5]~19\);

-- Location: FF_X14_Y4_N11
\compteur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[5]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(5));

-- Location: LCCOMB_X14_Y4_N12
\compteur[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[6]~20_combout\ = (compteur(6) & (\compteur[5]~19\ $ (GND))) # (!compteur(6) & (!\compteur[5]~19\ & VCC))
-- \compteur[6]~21\ = CARRY((compteur(6) & !\compteur[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(6),
	datad => VCC,
	cin => \compteur[5]~19\,
	combout => \compteur[6]~20_combout\,
	cout => \compteur[6]~21\);

-- Location: FF_X14_Y4_N13
\compteur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[6]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(6));

-- Location: LCCOMB_X14_Y4_N14
\compteur[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur[7]~22_combout\ = compteur(7) $ (\compteur[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compteur(7),
	cin => \compteur[6]~21\,
	combout => \compteur[7]~22_combout\);

-- Location: FF_X14_Y4_N15
\compteur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compteur[7]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur(7));

-- Location: IOIBUF_X11_Y0_N22
\DUTY[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(6),
	o => \DUTY[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\DUTY[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(5),
	o => \DUTY[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\DUTY[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(4),
	o => \DUTY[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\DUTY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(3),
	o => \DUTY[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\DUTY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(2),
	o => \DUTY[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\DUTY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(1),
	o => \DUTY[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\DUTY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DUTY(0),
	o => \DUTY[0]~input_o\);

-- Location: LCCOMB_X15_Y4_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((compteur(0) & !\DUTY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(0),
	datab => \DUTY[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X15_Y4_N8
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((compteur(1) & (\DUTY[1]~input_o\ & !\LessThan1~1_cout\)) # (!compteur(1) & ((\DUTY[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(1),
	datab => \DUTY[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X15_Y4_N10
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\DUTY[2]~input_o\ & (compteur(2) & !\LessThan1~3_cout\)) # (!\DUTY[2]~input_o\ & ((compteur(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY[2]~input_o\,
	datab => compteur(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X15_Y4_N12
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\DUTY[3]~input_o\ & ((!\LessThan1~5_cout\) # (!compteur(3)))) # (!\DUTY[3]~input_o\ & (!compteur(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY[3]~input_o\,
	datab => compteur(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X15_Y4_N14
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((compteur(4) & ((!\LessThan1~7_cout\) # (!\DUTY[4]~input_o\))) # (!compteur(4) & (!\DUTY[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(4),
	datab => \DUTY[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X15_Y4_N16
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((compteur(5) & (\DUTY[5]~input_o\ & !\LessThan1~9_cout\)) # (!compteur(5) & ((\DUTY[5]~input_o\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(5),
	datab => \DUTY[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X15_Y4_N18
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((compteur(6) & ((!\LessThan1~11_cout\) # (!\DUTY[6]~input_o\))) # (!compteur(6) & (!\DUTY[6]~input_o\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur(6),
	datab => \DUTY[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X15_Y4_N20
\LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\DUTY[7]~input_o\ & (\LessThan1~13_cout\ & compteur(7))) # (!\DUTY[7]~input_o\ & ((\LessThan1~13_cout\) # (compteur(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY[7]~input_o\,
	datad => compteur(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X15_Y4_N4
\pwm_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_signal~0_combout\ = !\LessThan1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan1~14_combout\,
	combout => \pwm_signal~0_combout\);

-- Location: FF_X15_Y4_N5
pwm_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_signal~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_signal~q\);

ww_pwm_s <= \pwm_s~output_o\;
END structure;


