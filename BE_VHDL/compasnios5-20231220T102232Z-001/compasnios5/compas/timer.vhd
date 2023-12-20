library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY timer IS 
    PORT (
        clk, go_timer, raz_n : IN STD_LOGIC;
        fin_1ms : OUT STD_LOGIC
    );
END timer;

ARCHITECTURE timer_ar OF timer IS 

    signal count : unsigned(15 downto 0) := (others => '0');
    signal end_1ms : std_logic := '0';

begin
    process(go_timer, clk, raz_n)
    begin
		  if raz_n = '0' then
				count <= (others => '0');
				end_1ms <= '0';
        elsif go_timer = '1' then
            if rising_edge(clk) then
                if count = 50000 then
						  count <= (others => '0');
                    end_1ms <= '1';
                else
                    count <= count + 1;
                    end_1ms <= '0';
                end if;
            end if;
        end if;
    end process;

    fin_1ms <= end_1ms;
end timer_ar;
