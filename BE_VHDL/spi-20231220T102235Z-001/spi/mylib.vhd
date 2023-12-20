LIBRARY ieee;
USE ieee.std_logic_1164.all; 

Package mylib is

COMPONENT CSconv
	port(
			debut_coverstion : in std_logic;
			clk : in std_logic;
			reset : in std_logic;
			Cs :out std_logic
			);
			
END COMPONENT;

COMPONENT traitement 
	port(
		clk : in std_logic;
		cs_in : in std_logic;
		Cs :out std_logic;
		debut_coverstion : in std_logic;
		reset : in std_logic;
		data_in : in std_logic;
		data_out : out std_logic_vector(11 downto 0)
		);
END COMPONENT;

COMPONENT div_1M 
port (
	clk_50Mhz : in std_logic;
	reset : in std_logic;
	clk : out std_logic);
END COMPONENT;


COMPONENT devis_clk 
port (
	reset : in std_logic;
	clk : in std_logic;
	debut_coverstion : out std_logic;
	clk_out : out std_logic);
END COMPONENT;

END mylib;