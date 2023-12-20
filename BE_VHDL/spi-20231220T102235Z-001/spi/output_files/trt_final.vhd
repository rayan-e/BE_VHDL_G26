Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trt_final is
	port(
		coverstion : in std_logic;
		cs_in : in std_logic;
		clk : in std_logic;
		reset : in std_logic;
		data_in : in std_logic;
		data_out : out std_logic_vector(11 downto 0)
		);
end trt_final;

architecture TRT of trt_final is
signal decalage : std_logic_vector(11 downto 0);

begin 

process(clk, reset)
variable count : integer range 0 to 16;
variable count_n2 : integer range 0 to 16;

begin

if reset = '0' then
	data_out <= x"000";
elsif falling_edge(clk) then
	if coverstion ='0' and cs_in = '0' then
		count := count + 1;
		count_n2 := count_n2 + 1;
		if count >= 5 then
			if count_n2 <= 15 then
				decalage(16- count_n2) <= data_in;
			end if;	
		end if;
	else
		count := 0;
		count_n2 := 0;
	end if;
end if;

data_out <= decalage;

end process;
end TRT;