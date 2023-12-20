library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity cmpt is
port (
	reset : in std_logic;
	clk : in std_logic;
	coverstion : out std_logic);
end entity cmpt;


architecture DIV2 of cmpt is
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
				--coverstion:= 0;
			end if;
		end if;	
		
	coverstion <= tmp;
end process;
end DIV2;