library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity devis_clk is
port (
	reset : in std_logic;
	clk : in std_logic;
	debut_coverstion : out std_logic;
	clk_out : out std_logic);
end entity devis_clk;


architecture DIV2 of devis_clk is
signal tmp: std_logic :='0';

begin

process(clk)
	variable count_conv : integer range 0 to 50000;	
	BEGIN
		if reset= '0' then
			count_conv:=0;
		elsif clk 'event and clk ='1' then
			count_conv:= count_conv +1;
			if count_conv =  50000 then
				tmp <= not tmp;
			end if;
		end if;	
		
	debut_coverstion <= tmp;
	clk_out <= tmp;
end process;
end DIV2;