LIBRARY ieee;
USE ieee.std_logic_1164.all; 

Package lib is



COMPONENT top_spi 
	port(
		data_in:  IN  STD_LOGIC;
		reset:  IN  STD_LOGIC;
		clk_50Mhz : in std_logic;
		data_out : out std_logic_vector(11 downto 0);
		Cs :out std_logic;
		clk_out :out STD_LOGIC
		);
END COMPONENT;

COMPONENT nios 
	port(
		clk_clk:in  std_logic;
		data_in_external_connection_export:in std_logic_vector(11 downto 0);
		data_out_external_connection_export : out std_logic_vector(11 downto 0);
		reset_reset_n : in  std_logic
		);
END COMPONENT;

END lib;