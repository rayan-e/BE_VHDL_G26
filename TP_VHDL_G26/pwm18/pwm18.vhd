
----------------------------- library IEEE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-----------------------------

-----------------------------
entity pwm18 is
    Port ( clk : in STD_LOGIC;
	 FREQ : in  STD_LOGIC_VECTOR(7 downto 0);
    DUTY : in STD_LOGIC_VECTOR(7 downto 0);
	 reset : in STD_LOGIC;
    pwm_s : out STD_LOGIC);
end pwm18;

architecture Behavioral of pwm18 is
    signal compteur : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal pwm_signal : STD_LOGIC;
	 --signal FREQ : STD_LOGIC_VECTOR(7 downto 0) := "11001000";
	 --signal DUTY : STD_LOGIC_VECTOR(7 downto 0) := "01100100";
	 --signal reset : STD_LOGIC := '0';

begin
    process (clk,reset)
    begin

        if reset = '1' then
            compteur <= "00000000";
        elsif rising_edge(clk) then
            if compteur >= FREQ then
                compteur <= (others => '0');
            else
                compteur <= compteur + 1;
            end if;
        end if;
    end process;

    process (clk,reset)
    begin
    if reset = '1' then
        pwm_signal <= '0';
    elsif rising_edge(clk) then
        if compteur <= DUTY then
            pwm_signal <= '1';
        else
            pwm_signal <= '0';
        end if;
    end if;
    end process;
    pwm_s <= pwm_signal;

end Behavioral;
