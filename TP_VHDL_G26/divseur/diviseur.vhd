library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity diviseur is
    Port (
        clk_in : in STD_LOGIC;       
        clk_out : out STD_LOGIC      
    );
end diviseur;

architecture Behavioral of diviseur is
    signal compteur : STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
    signal clk_divided : STD_LOGIC := '0';  
    constant max_count : STD_LOGIC_VECTOR(25 downto 0) := "01011111010111100001000000"; 

begin
    process (clk_in)
    begin

        if rising_edge(clk_in) then
            if compteur = max_count then
                compteur <= (others => '0');
                clk_divided <= not clk_divided; 
            else
                compteur <= compteur + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_divided;
end Behavioral;
