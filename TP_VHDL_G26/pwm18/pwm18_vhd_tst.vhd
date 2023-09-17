-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/01/2015 23:32:49"
                                                            
-- Vhdl Test Bench template for design  :  pwm18
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm18_vhd_tst IS
END pwm18_vhd_tst;
ARCHITECTURE pwm18_arch OF pwm18_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DUTY : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FREQ : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwm_s : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT pwm18
	PORT (
	clk : IN STD_LOGIC;
	DUTY : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	FREQ : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwm_s : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwm18
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DUTY => DUTY,
	FREQ => FREQ,
	pwm_s => pwm_s,
	reset => reset
	);

	 
init : PROCESS                                               
-- variable declarations
                                        
BEGIN  

        if reset = '1' then
            compteur <= "00000000";
        elsif rising_edge(clk) then
            if compteur >= FREQ then
                compteur <= (others => '0');
            else
                compteur <= compteur + 1;
            end if;
        end if;                                                      
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list 
                           
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		   if reset = '1' then
        pwm_signal <= '0';
    elsif rising_edge(clk) then
        if compteur <= DUTY then
            pwm_signal <= '1';
        else
            pwm_signal <= '0';
        end if;
    end if;
WAIT;                                                        
END PROCESS always;                                          
END pwm18_arch;
