LIBRARY ieee;
USE ieee.std_logic_1164.all; 

Package maylib is

COMPONENT traitement
	PORT(start_stop : IN STD_LOGIC;
		 continu : IN STD_LOGIC;
		 diviseur_1hz_out : IN STD_LOGIC;
		 out_compteur_angle : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data_valid : OUT STD_LOGIC;
		 data_compas : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		 in_pwm_compas : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 go_compte : OUT STD_LOGIC;
		 end_compte : IN STD_LOGIC
	);
END COMPONENT;

COMPONENT compteur
	PORT(go_compte : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 diviseur_10khz_out : IN STD_LOGIC;
		 out_compteur_angle : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		 end_compte : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT diviseur_1s
	PORT(clk : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 diviseur_1hz_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT diviseur_100u
	PORT(clk : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 diviseur_10khz_out : OUT STD_LOGIC
	);
END COMPONENT;


END maylib;