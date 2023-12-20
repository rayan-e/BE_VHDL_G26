library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compteur is
    port (
        -- Input Ports
        go_compte, diviseur_10khz_out, raz_n: in std_logic;
        -- Output Ports
        out_compteur_angle: out std_logic_vector(8 downto 0);
        end_compte: out std_logic
    );
end compteur;

architecture ar_compteur of compteur is
    -- Signals declaration
    signal compteur_angle : std_logic_vector(8 downto 0) := (others => '0');
    signal compteur_angle_2 : std_logic_vector(8 downto 0) := (others => '0');
    signal fin_compte : std_logic := '0';
    signal comptage : std_logic := '0';
begin
    -- Process for controlling the counter and finalizing the count
    process(raz_n, diviseur_10khz_out, go_compte)
    begin
        if raz_n = '0' then
            compteur_angle <= (others => '0'); -- Reset the counter if raz_n is low
        elsif rising_edge(diviseur_10khz_out) then
            if go_compte = '1' then
                comptage <= '1'; -- Start counting if go_compte is high
                fin_compte <= '0'; -- Reset final count signal
                compteur_angle <= compteur_angle + 1; -- Increment the counter
            elsif (fin_compte = '0' and go_compte = '0' and comptage = '1') then
                compteur_angle_2 <= compteur_angle; -- Store the final counted value
                compteur_angle <= (others => '0'); -- Reset the counter
                fin_compte <= '1'; -- Set final count signal
                comptage <= '0'; -- Reset counting signal
            end if;
        end if;
    end process;

    -- Output assignments
    out_compteur_angle <= compteur_angle_2; -- Assign the final counted value to the output port
    end_compte <= fin_compte; -- Assign the final count signal to the output port
end ar_compteur;
