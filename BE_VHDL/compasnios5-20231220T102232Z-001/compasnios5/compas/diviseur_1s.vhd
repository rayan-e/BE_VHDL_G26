library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity diviseur_1s is
    port (
        clk, raz_n: in std_logic;
        diviseur_1hz_out: out std_logic
    );
end diviseur_1s;

architecture ar_diviseur of diviseur_1s is
    signal count: integer := 0;                -- Counter signal declaration
    signal clk_divided_1s : STD_LOGIC := '0';  -- Divided clock signal declaration
begin
    process(clk, raz_n)
    begin
        if raz_n = '0' then  -- Reset condition when raz_n is low
            count <= 0;       -- Reset count to 0
            clk_divided_1s <= '0';  -- Reset divided clock signal
        elsif clk'event and clk = '1' then  -- Detect rising edge of clk
            if count = 25000000 then  -- Check if count reaches the desired value
                clk_divided_1s <= NOT clk_divided_1s;  -- Toggle the divided clock signal
                count <= 0;  -- Reset count after reaching the desired value
            else
                count <= count + 1;  -- Increment count
            end if;
        end if;
        diviseur_1hz_out <= clk_divided_1s;  -- Output the divided clock signal
    end process;
end ar_diviseur;
