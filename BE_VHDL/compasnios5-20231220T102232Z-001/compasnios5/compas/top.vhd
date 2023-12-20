LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.my_lib.all;

-- a top entity to regroup nios and compas
ENTITY top IS 
	PORT
	(
		in_pwm_compas :  IN  STD_LOGIC;
		raz_n :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		start_stop :  IN  STD_LOGIC;
		continu :  IN  STD_LOGIC;
		restart_out: out std_logic_vector(1 downto 0);
		stop_out : OUT  STD_LOGIC;
		data_valid :  OUT  STD_LOGIC;
		data_compas :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0);
		pwm_s : OUT STD_LOGIC
	);
END top;

ARCHITECTURE top_arch OF top IS 



SIGNAL	WIRE_compteur_angle :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	clk_clk :  STD_LOGIC;
SIGNAL	leds_export :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	reset_reset_n :  STD_LOGIC;


BEGIN 

b2v_inst9 : compas
	PORT MAP (
		clk_clk => clk,     
		input_angle_external_connection_export => WIRE_compteur_angle,
		leds_external_connection_export => data_compas,               
		reset_reset_n => raz_n);




b2v_inst10 : gestionnaire 
	PORT MAP
	(
		in_pwm_compas => in_pwm_compas,
		raz_n =>	raz_n,
		clk => clk,
		start_stop => start_stop,
		continu => continu,
		restart_out => restart_out,
		stop_out => stop_out,
		data_valid => data_valid,
		data_compas =>  WIRE_compteur_angle,
		pwm_s => pwm_s
	);


END top_arch; 