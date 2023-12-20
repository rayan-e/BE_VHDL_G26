LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.mylib.all;

-- top entity to regroup adc components
ENTITY top_spi IS 
	PORT
	(
		data_in:  IN  STD_LOGIC;
		reset:  IN  STD_LOGIC;
		clk_50Mhz : in std_logic;
		data_out : out std_logic_vector(11 downto 0);
		Cs :out std_logic;
		clk_out :out STD_LOGIC
	);
END top_spi;


ARCHITECTURE bdf_type OF top_spi IS 


SIGNAL	WIRE_data_in :  STD_LOGIC;
SIGNAL	WIRE_raz_n  :  STD_LOGIC;
SIGNAL	WIRE_clk :  STD_LOGIC;
SIGNAL	WIRE_clk_50Mhz :  STD_LOGIC;
SIGNAL	WIRE_data_out :  STD_LOGIC_VECTOR(11 downto 0);
SIGNAL	WIRE_Cs :  STD_LOGIC;
SIGNAL	WIRE_debut_coverstion :  STD_LOGIC;

BEGIN 

b2v_inst4 : div_1M
PORT MAP(clk => WIRE_clk,
			clk_50Mhz => clk_50Mhz,
			reset => reset);
			
b2v_inst2 : devis_clk
PORT MAP(clk => WIRE_clk,
		 reset => reset,
		  debut_coverstion => WIRE_debut_coverstion,
		  clk_out => clk_out);


b2v_inst3 : CSconv
PORT MAP(clk => WIRE_clk,
		 reset => reset,
		 debut_coverstion => WIRE_debut_coverstion,
		 Cs => WIRE_Cs);

			
b2v_inst5 : traitement
PORT MAP(clk => WIRE_clk,
		 reset => reset,
		 debut_coverstion => WIRE_debut_coverstion,
		 cs_in => WIRE_Cs,
		 data_in => data_in,
		 data_out => data_out,
		 Cs => Cs);
		 
		
END bdf_type;