library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity traitement is
    port (
        -- Input Ports
        in_pwm_compas, raz_n, start_stop, continu, diviseur_1hz_out, end_compte: in std_logic;
        out_compteur_angle: in std_logic_vector(8 downto 0);
        -- Output Ports
        go_compte, data_valid, stop_compte: out std_logic;
        data_compas: out std_logic_vector(8 downto 0)
    );
end traitement;

architecture ar_traitement of traitement is
    -- Signals declaration
    signal compteur_angle: std_logic_vector(8 downto 0) := (others => '0');
    signal signal_data_valid: std_logic := '0';  -- Initialize signal_data_valid
    signal stop: std_logic := '0';
    signal restart: integer := 1;
    signal start_compte: std_logic := '0';
    signal signal_end_compte: std_logic := '0';

begin
    -- Process for controlling 'start_compte' signal
    process(in_pwm_compas, raz_n, continu, start_stop, stop)
    begin
        if raz_n = '0' then
            start_compte <= '0'; -- Reset start_compte if raz_n is low
        elsif in_pwm_compas = '1' then
            if (continu = '0' and start_stop = '1' and stop = '1') then
                start_compte <= '0'; -- Set start_compte low based on conditions
            elsif ((start_stop = '1' and stop = '0') or continu = '1') then
                start_compte <= '1'; -- Set start_compte high based on conditions
            end if;
        elsif (in_pwm_compas = '0') then
            start_compte <= '0'; -- Reset start_compte if in_pwm_compas is low
        end if;
    end process;
    
    -- Process for logic and control
    process(continu, start_stop, diviseur_1hz_out, out_compteur_angle, stop, end_compte, raz_n, in_pwm_compas, restart)
    begin
        if raz_n = '0' then
            compteur_angle <= (others => '0'); -- Reset compteur_angle if raz_n is low
        elsif (continu = '1') then
            signal_data_valid <= '1'; -- Set signal_data_valid high
            stop <= '0'; -- Reset stop signal
            if rising_edge(diviseur_1hz_out) then
                compteur_angle <= out_compteur_angle - "1010"; -- Update compteur_angle on rising edge of diviseur_1hz_out
            end if;
        elsif (start_stop = '1' and end_compte = '1' and stop = '0' and restart = 2) then
            signal_data_valid <= '1'; -- Set signal_data_valid high
            compteur_angle <= out_compteur_angle - "1010"; -- Update compteur_angle based on conditions
            restart <= 0; -- Reset restart
            stop <= '1'; -- Set stop high
        elsif (start_stop = '0') then
            signal_data_valid <= '0'; -- Set signal_data_valid low
            stop <= '0'; -- Reset stop signal
            restart <= 1; -- Reset restart
        end if;
        
        if (in_pwm_compas = '1' and start_stop = '1' and end_compte = '0' and stop = '0' and restart = 1 and continu = '0') then 
            restart <= 2; -- Update restart based on conditions
        end if;
    end process;
    
    -- Output assignments
    data_compas <= compteur_angle; -- Assign compteur_angle to data_compas
    data_valid <= signal_data_valid; -- Assign signal_data_valid to data_valid
    go_compte <= start_compte; -- Assign start_compte to go_compte
    signal_end_compte <= end_compte; -- Assign end_compte to signal_end_compte
end ar_traitement;
