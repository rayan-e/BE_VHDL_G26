LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.maylib.all;

-- a top entity to regroup compas elements
ENTITY gestionnaire IS 
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
END gestionnaire;


ARCHITECTURE bdf_type OF gestionnaire IS 


SIGNAL	WIRE_go_compte :  STD_LOGIC;
SIGNAL	WIRE_diviseur_1hz :  STD_LOGIC;
SIGNAL	WIRE_diviseur_10khz :  STD_LOGIC;
SIGNAL	WIRE_compteur_angle :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	WIRE_pwm :  STD_LOGIC;
SIGNAL	WIRE_pwm_out :  STD_LOGIC;
SIGNAL	WIRE_stop_compte :  STD_LOGIC;
BEGIN 


b2v_inst2 : diviseur_1s
PORT MAP(clk => clk,
		 raz_n => raz_n,
		 diviseur_1hz_out => WIRE_diviseur_1hz);


b2v_inst3 : diviseur_100u
PORT MAP(clk => clk,
		 raz_n => raz_n,
		 diviseur_10khz_out => WIRE_diviseur_10khz);

			
b2v_inst5 : compteur
PORT MAP(go_compte => WIRE_go_compte,
		 raz_n => raz_n,
		 diviseur_10khz_out => WIRE_diviseur_10khz,
		 out_compteur_angle => WIRE_compteur_angle,
		 end_compte => WIRE_stop_compte);
		 

b2v_inst : traitement
PORT MAP(raz_n => raz_n,
		 start_stop => start_stop,
		 continu => continu,
		 diviseur_1hz_out => WIRE_diviseur_1hz,
		 out_compteur_angle => WIRE_compteur_angle,
		 data_valid => data_valid,
		 data_compas => data_compas,
		 go_compte => WIRE_go_compte,
		 in_pwm_compas => in_pwm_compas,
		 end_compte => WIRE_stop_compte);


		
END bdf_type;