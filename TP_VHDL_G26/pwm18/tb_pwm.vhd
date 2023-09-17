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
                                                            
-- Vhdl Test Bench template for design  :  tb_pwm
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_pwm IS
END tb_pwm;
ARCHITECTURE tb_pwm_arch OF tb_pwm IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DUTY : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FREQ : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwm_s : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT tb_pwm
	PORT (
	clk : IN STD_LOGIC;
	DUTY : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	FREQ : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwm_s : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tb_pwm
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DUTY => DUTY,
	FREQ => FREQ,
	pwm_s => pwm_s,
	reset => reset
	);

	 
processClk : PROCESS                                               
-- variable declarations
                                        
BEGIN
 clk <= '1';
	 FREQ <= "11001000";
	 DUTY <= "01100100";
	 WAIT FOR 10ns;
	 clk <= '0';
	 FREQ <= "11001000";
	 DUTY <= "01100100";
 WAIT FOR 10ns; 
                                                                    
END PROCESS processClk;
                                           
processReset : PROCESS                                              
                                     
BEGIN
 reset <= '0';
 WAIT FOR 50ms;
 reset <= '1';
 WAIT FOR 10ms; 
                                                          
END PROCESS processReset;



                                          
END tb_pwm_arch;
