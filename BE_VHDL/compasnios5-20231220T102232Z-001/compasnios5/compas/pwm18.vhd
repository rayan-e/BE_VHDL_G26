
----------------------------- library IEEE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-----------------------------

-----------------------------
entity pwm18 is
    Port ( clk : in STD_LOGIC;
	 raz_n : in STD_LOGIC;
    pwm_s : out STD_LOGIC);
end pwm18;

architecture Behavioral of pwm18 is
    signal compteur : STD_LOGIC_VECTOR(21 downto 0) := "0000000000000000000000";
    signal pwm_signal : STD_LOGIC;
	 signal FREQ : STD_LOGIC_VECTOR(21 downto 0) := "1110010011110000011001";
	 signal DUTY : STD_LOGIC_VECTOR(21 downto 0) := "1101010110011111100000";


begin
    process (clk,raz_n)
    begin

        if raz_n = '0' then
            compteur <= "0000000000000000000000";
        elsif rising_edge(clk) then
            if compteur >= FREQ then
                compteur <= (others => '0');
            else
                compteur <= compteur + 1;
            end if;
        end if;
    end process;

    process (clk,raz_n)
    begin
    if raz_n = '0' then
        pwm_signal <= '0';
    elsif rising_edge(clk) then
        if compteur <= DUTY then
            pwm_signal <= '0';
        else
            pwm_signal <= '1';
        end if;
    end if;
    end process;
    pwm_s <= pwm_signal;

end Behavioral;
