library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity div_1 is
port (
	clk_50Mhz : in std_logic;
	reset : in std_logic;
	clk : out std_logic);
end entity div_1;



architecture DIV of div_1 is
signal tmp: std_logic :='0';


begin

process (clk_50Mhz) is
variable count: integer := 0;

begin
	if reset= '0' then
			count:=0;
	elsif rising_edge(clk_50Mhz) then
		count := count + 1 ;
		if count = 25  then
			tmp <= not tmp;
			count := 0;
		end if;
	end if;
	
	clk <= tmp;

end process;

end architecture DIV;