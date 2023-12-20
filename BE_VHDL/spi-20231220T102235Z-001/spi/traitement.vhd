library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity traitement is
    port(
        clk : in std_logic;
        cs_in : in std_logic;
        Cs : out std_logic;
        debut_coverstion : in std_logic;
        reset : in std_logic;
        data_in : in std_logic;
        data_out : out std_logic_vector(11 downto 0)
    );
end traitement;

architecture TRT of traitement is
    signal decalage : std_logic_vector(11 downto 0); 
begin 

    process(clk, reset)
        variable count : integer range 0 to 16;
        variable count_n2 : integer range 0 to 16;
    begin
        if reset = '0' then
            data_out <= x"000";  -- Reset output data if reset is active low
        elsif falling_edge(clk) then
            if debut_coverstion = '0' and cs_in = '0' then
                count := count + 1;  
                count_n2 := count_n2 + 1; 
                if count >= 5 then 
                    if count_n2 <= 15 then 
                        decalage(16 - count_n2) <= data_in;  -- Shift data based on the count
                    end if;	
                end if;
            else
                count := 0;  -- Reset count
                count_n2 := 0;  -- Reset secondary count
            end if;
        end if;
        data_out <= decalage;  -- Output shifted data
        Cs <= cs_in;  -- Assign input control signal to output control signal
    end process;

end TRT;
