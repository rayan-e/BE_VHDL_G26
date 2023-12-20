LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.lib.all;

-- a top entity to regroup nios with adc
ENTITY top IS 
	PORT
	(
		data_in:  IN  STD_LOGIC;
		reset:  IN  STD_LOGIC;
		clk_50Mhz : in std_logic;
		leds : out std_logic_vector(11 downto 0);
		Cs :out std_logic;
		clk_out :out STD_LOGIC
	);
END top;

ARCHITECTURE top_arch1 OF TOP IS 



SIGNAL	WIRE_data :  STD_LOGIC_VECTOR(11 DOWNTO 0);


BEGIN 

b2v_inst9 : nios
	PORT MAP (
		clk_clk => clk_50Mhz,     
		data_in_external_connection_export => WIRE_data,
		data_out_external_connection_export => leds,               
		reset_reset_n => reset);



b2v_inst10 : top_spi
	PORT MAP
	(
		data_in => data_in,
		reset => reset,
		clk_50Mhz => clk_50Mhz,
		data_out => WIRE_data,
		Cs => Cs,
		clk_out => clk_out
	);


END top_arch1; 