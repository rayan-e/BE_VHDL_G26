library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity diviseur_100u is
port ( clk,raz_n: in std_logic;
diviseur_10khz_out: out std_logic);
end diviseur_100u;
  
architecture ar_diviseur of diviseur_100u is
  
signal count: integer:=0;
signal clk_divided_1s : STD_LOGIC:= '0';
  
begin
  
	process(clk,raz_n)
	begin
		if(raz_n='0') then
			count<= 0;
			clk_divided_1s<='0';
		elsif(clk'event and clk='1') then
			if (count = 2500) then
			clk_divided_1s <= NOT clk_divided_1s;
			count<= 0;
			else
			count <=count + 1;
			end if;	
		end if;
	end process;
  diviseur_10khz_out <= clk_divided_1s;
end ar_diviseur;