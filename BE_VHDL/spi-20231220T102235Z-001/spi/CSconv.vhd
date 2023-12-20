library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CSconv is
    port(
        debut_coverstion : in std_logic;
        clk : in std_logic;
        reset : in std_logic;
        Cs : out std_logic
        --clk_out : out std_logic
    );
end CSconv;

architecture ADC of CSconv is
    signal stop : std_logic;

begin

    process(clk, reset) is
        variable count_n1 : integer range 0 to 32 := 0;  -- Counter 1 declaration
        variable count_n2 : integer range 0 to 16 := 0;  -- Counter 2 declaration
    begin
        if debut_coverstion = '0' then
            stop <= '0';  -- Set stop signal low if debut_coverstion is low
        else
            stop <= '1';  -- Set stop signal high otherwise
        end if;
        
        if reset = '0' then
            count_n1 := 0;  -- Reset counter 1 if reset signal is active low
        elsif stop = '0' then
            if rising_edge(clk) then
                count_n1 := count_n1 + 1;  -- Increment counter 1 on rising edge of clk
                if count_n1 >= 15 then
                    Cs <= '0';  -- Set Cs signal low
                    count_n2 := count_n2 + 1;  -- Increment counter 2
                    if count_n2 = 16 then
                        Cs <= '1';  -- Set Cs signal high after counter 2 reaches 16
                        count_n1 := 0;  -- Reset counter 1
                        count_n2 := 0;  -- Reset counter 2
                    end if;
                end if;
            end if;
        end if;
    end process;

end ADC;
