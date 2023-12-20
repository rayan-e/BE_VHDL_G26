LIBRARY ieee;
USE ieee.std_logic_1164.all; 

Package my_lib is

COMPONENT compas is
	port (
		clk_clk                                : in  std_logic;     
		input_angle_external_connection_export : in  std_logic_vector(8 downto 0);
		leds_external_connection_export        : out std_logic_vector(8 downto 0);                
		reset_reset_n                          : in  std_logic
	);
END COMPONENT compas;



COMPONENT gestionnaire IS 
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
END COMPONENT gestionnaire;


END my_lib;