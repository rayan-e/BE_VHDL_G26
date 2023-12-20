library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity div_1M is
    port (
        clk_50Mhz : in std_logic;
        reset : in std_logic;
        clk : out std_logic
    );
end entity div_1M;

architecture DIV of div_1M is
    signal tmp: std_logic := '0';  -- Signal to generate divided clock
begin

    process (clk_50Mhz) is
        variable count: integer := 0;  -- Counter for clock division
    begin
        if reset = '0' then
            count := 0;  -- Reset counter if reset signal is active low
        elsif rising_edge(clk_50Mhz) then
            count := count + 1;  -- Increment counter on rising edge of clk_50Mhz
            if count = 25 then  -- Divide by 25 to generate 2MHz clock from 50MHz
                tmp <= not tmp;  -- Toggle tmp signal to generate divided clock
                count := 0;  -- Reset counter after the division
            end if;
        end if;
        clk <= tmp;  -- Output divided clock
    end process;

end architecture DIV;
