-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/11/2024 01:41:11"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	VGA_HS : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	VGA_VS : OUT std_logic;
	VGA_B : OUT std_logic_vector(3 DOWNTO 3);
	VGA_G : OUT std_logic_vector(3 DOWNTO 3);
	VGA_R : OUT std_logic_vector(3 DOWNTO 3)
	);
END lab3;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst2|video_PLL_inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|video_PLL_inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|video_PLL_inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst2|video_PLL_inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \inst6|inst1|Add5~2_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0_combout\ : std_logic;
SIGNAL \inst4|always0~1_combout\ : std_logic;
SIGNAL \inst2|video_on_h~regout\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \inst~3_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \inst6|inst1|Add1~1_combout\ : std_logic;
SIGNAL \inst6|inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst6|inst1|Add3~1_combout\ : std_logic;
SIGNAL \inst6|inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode120w[3]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode110w[3]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode100w[3]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode130w[3]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \inst2|video_PLL_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|h_count~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|h_count~1_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|h_count~2_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|h_count~3_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~regout\ : std_logic;
SIGNAL \inst2|horiz_sync_out~regout\ : std_logic;
SIGNAL \inst2|v_count[9]~6_combout\ : std_logic;
SIGNAL \inst2|process_0~10_combout\ : std_logic;
SIGNAL \inst2|process_0~11_combout\ : std_logic;
SIGNAL \inst2|process_0~9_combout\ : std_logic;
SIGNAL \inst2|v_count~3_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|v_count[3]~4_combout\ : std_logic;
SIGNAL \inst2|v_count~0_combout\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|v_count[2]~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|v_count[7]~9_combout\ : std_logic;
SIGNAL \inst2|v_count[5]~7_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|v_count[8]~10_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst2|v_count[4]~5_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|vert_sync~regout\ : std_logic;
SIGNAL \inst2|vert_sync_out~regout\ : std_logic;
SIGNAL \inst2|v_count[6]~8_combout\ : std_logic;
SIGNAL \inst2|LessThan6~1_combout\ : std_logic;
SIGNAL \inst2|LessThan6~2_combout\ : std_logic;
SIGNAL \inst4|always0~0_combout\ : std_logic;
SIGNAL \inst2|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|video_on_v~regout\ : std_logic;
SIGNAL \inst2|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst2|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|LessThan5~0_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst~5_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \inst6|inst1|Add4~1_combout\ : std_logic;
SIGNAL \inst6|inst1|Add5~1_cout\ : std_logic;
SIGNAL \inst6|inst1|Add5~3\ : std_logic;
SIGNAL \inst6|inst1|Add5~5\ : std_logic;
SIGNAL \inst6|inst1|Add5~6_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode70w[3]~0_combout\ : std_logic;
SIGNAL \inst2|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|pixel_column[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode80w[3]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode90w[3]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \inst8|out~0_combout\ : std_logic;
SIGNAL \inst8|out~2_combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \inst6|inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst6|inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst6|inst1|Add5~4_combout\ : std_logic;
SIGNAL \inst8|out~1_combout\ : std_logic;
SIGNAL \inst~4_combout\ : std_logic;
SIGNAL \inst2|blue_out~feeder_combout\ : std_logic;
SIGNAL \inst2|blue_out~regout\ : std_logic;
SIGNAL \inst2|green_out~feeder_combout\ : std_logic;
SIGNAL \inst2|green_out~regout\ : std_logic;
SIGNAL \inst2|red_out~regout\ : std_logic;
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|deep_decode|w_anode53w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst4|LPM_SHIFTREG_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|inst3|LPM_SHIFTREG_component|dffs\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

VGA_HS <= ww_VGA_HS;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
VGA_VS <= ww_VGA_VS;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|video_PLL_inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\inst2|video_PLL_inst|altpll_component|_clk0\ <= \inst2|video_PLL_inst|altpll_component|pll_CLK_bus\(0);
\inst2|video_PLL_inst|altpll_component|pll~CLK1\ <= \inst2|video_PLL_inst|altpll_component|pll_CLK_bus\(1);
\inst2|video_PLL_inst|altpll_component|pll~CLK2\ <= \inst2|video_PLL_inst|altpll_component|pll_CLK_bus\(2);

\inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1) & \inst2|pixel_row\(0) & \inst2|pixel_column\(7) & \inst2|pixel_column\(6) & 
\inst2|pixel_column\(5) & \inst2|pixel_column\(4) & \inst2|pixel_column\(3) & \inst2|pixel_column\(2) & \inst2|pixel_column\(1) & \inst2|pixel_column\(0));

\inst3|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) & \inst6|inst|LPM_SHIFTREG_component|dffs\(61));

\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ <= \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\ <= \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);

\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\(0) <= \inst8|out~2_combout\;

\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ <= \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);

\inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|video_PLL_inst|altpll_component|_clk0\);

\inst1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1~combout\);

-- Location: M4K_X17_Y14
\inst3|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000004000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000040000002000000000000000000000000000000000100020000000100000000000000400000000000000000000000100000000000000000000000000000000000000000000008000080800800000000FFFF04000000000000000000000000000000000000000000000000000000001FFFFFF800000000000000000000000000000000000000040000000100000001FFFFFEFF8000000000000000000000000000000000000000000000000000000FFFFFFFFFF0000000000000000000000000000000000",
	mem_init0 => X"00000000000000000007FFFFFFFFFFE0000000000000000000000000000000008010000000000000001FFFFFFFFFFFF800000000000000000000000000000000000002000000000000FFFFFFFFFFFFFE00000800100000000000000000000000000000000000000001FFFFFFFFFFFFFF80000000000000000000010000000000000000000000000003FFFFFFFFFFFDEFC0000000000000000005000000000000000000000000040807FFFFFFFFFFFFFFE000000000000080000F80004000000000000000000000001FFFFFFFFFFFFFFFF800800000000200001FC8000000000000000000000000003FFFFFFFFFFFFFFFFC00000000000000003FC00000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode120w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y15
\inst3|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000400000000007FFFF7FFFFFFFFFFFE00000000000000003FE000000000000000000000000000FFFFFFFFF7FFEFFFFF00080000000000007FF000000000000000000000000001FFFFFFFFFFFFFEFFFF8000000000000000FFF800000000400000000020000001FFFFFFFFFFFFFFFFFF8000000000000000FFF800006000000000000000000003FFFFFFFFFFFFFFFFFFC000000420000001DFFE00000000000000000000000003FFFFFDFFFFFFFFFFFFC000000000000003FFFE00000400000000000000010007FFFFFFFFBFFFFFFFFFE000000000000007FFFF00000000000400008000000407FFFFFFFFFFFFFFFFFFE000000000000007FFFF0000000000",
	mem_init0 => X"800000000000040FFFFFFFFFFFFFFFFFFFF00000040000040FFFFF8000000000000000040000000FFFFFFFFFFFFFFFFFFFF00000100000801FFFF7C000200000010000000000001BFFFFFFFFFFFFFFFFFFF00000000000003FFFFFC000000000000000000000001FF7FFFFFFFFFFFFFFFFF80000000000003FFFFFE000000000000000000000001FFFDFFFFFFFDFFFF7FFF80000000000007FFFFFB000000000000000000000001FBFFFFFFFFFFFFFFFBFF8400000000000FFFFFFF800000040000000040200001FFFFFFFFFFFFFFFFF7FF8200000000000FFFFFFF800000000000000000000001FFFEFFFFFFFDFFFFFFFF8000000000001FFFFFFFC00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode110w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y15
\inst3|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000020000000001FBDFF7FFFFFFBFFFFFFFFFFFFFFFFF803FFFFFFFE00000000000002000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFF000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFEFFF000000000040007FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFEFFFFFF80FFFFFFFFF80000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFC1FFFFF7FFFC0000000000000FFFEFFFEFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFF83FFFFFFFFFE0000001000000FFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFE0000000000001FFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFF0000802",
	mem_init0 => X"000001FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8FDFFFFFDFFF8000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFC000008000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFF7FFFFFFF8000000000003FFFDFFFFFFFFFFFFFFFFFFFFFEFFEFFFFFFFFFFBFFFFFFFFFFFE000004000003FFFFFFFFFFFFFFFFFFF7EFFFFFFFEF7FFFFFFF7FFFFFFFFFFFFF000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFF800000020007FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000007FFFFFFFFFFE7FFFBFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFF800040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode100w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y18
\inst3|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000004000000200000000000000000000000008000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000240000002200000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000080400C00000002000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000004000000080000000000000000000000000000000000000000000000000000000001000000000000",
	mem_init0 => X"0400000020004000000000000000000000000000000008000000000400000000000200000200000000000000000000000000000000000200000001000000000000000000000000000000000000000000010000000000000004000000800000000000000000000000000100000A000000000000001000000000000000000000000000000000000000001000000000000000000000000000000002000000000000000000000000100000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000004004000000000000000000000000000000000000000000000000000000000000000000000008000000800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode130w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y9_N16
\inst6|inst1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add5~2_combout\ = (\inst6|inst1|Add3~1_combout\ & ((\inst6|inst1|Add4~1_combout\ & (\inst6|inst1|Add5~1_cout\ & VCC)) # (!\inst6|inst1|Add4~1_combout\ & (!\inst6|inst1|Add5~1_cout\)))) # (!\inst6|inst1|Add3~1_combout\ & 
-- ((\inst6|inst1|Add4~1_combout\ & (!\inst6|inst1|Add5~1_cout\)) # (!\inst6|inst1|Add4~1_combout\ & ((\inst6|inst1|Add5~1_cout\) # (GND)))))
-- \inst6|inst1|Add5~3\ = CARRY((\inst6|inst1|Add3~1_combout\ & (!\inst6|inst1|Add4~1_combout\ & !\inst6|inst1|Add5~1_cout\)) # (!\inst6|inst1|Add3~1_combout\ & ((!\inst6|inst1|Add5~1_cout\) # (!\inst6|inst1|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add3~1_combout\,
	datab => \inst6|inst1|Add4~1_combout\,
	datad => VCC,
	cin => \inst6|inst1|Add5~1_cout\,
	combout => \inst6|inst1|Add5~2_combout\,
	cout => \inst6|inst1|Add5~3\);

-- Location: LCCOMB_X22_Y14_N20
\inst2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|h_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|h_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|h_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X26_Y14_N8
\inst2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|v_count\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X26_Y14_N10
\inst2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|v_count\(1) & (!\inst2|Add1~1\)) # (!\inst2|v_count\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X26_Y14_N16
\inst2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|v_count\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|v_count\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|v_count\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X26_Y14_N18
\inst2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|v_count\(5) & (!\inst2|Add1~9\)) # (!\inst2|v_count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X26_Y14_N20
\inst2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|v_count\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|v_count\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|v_count\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X26_Y14_N22
\inst2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|v_count\(7) & (!\inst2|Add1~13\)) # (!\inst2|v_count\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X26_Y14_N24
\inst2|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|v_count\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|v_count\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|v_count\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X26_Y14_N26
\inst2|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = \inst2|Add1~17\ $ (\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(9),
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\);

-- Location: LCCOMB_X42_Y9_N10
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\)) # (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
-- ((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # (GND)))
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ = CARRY((!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5),
	datad => VCC,
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X42_Y9_N12
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0_combout\ = !\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0_combout\);

-- Location: LCCOMB_X42_Y7_N24
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X42_Y7_N26
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0_combout\ = !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst4|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|always0~1_combout\ = (\inst2|pixel_row\(2)) # (\inst2|pixel_row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(2),
	datad => \inst2|pixel_row\(3),
	combout => \inst4|always0~1_combout\);

-- Location: LCFF_X23_Y14_N19
\inst2|video_on_h\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|video_on_h~regout\);

-- Location: LCFF_X23_Y14_N11
\inst2|pixel_column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(8),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(8));

-- Location: LCFF_X23_Y14_N31
\inst2|pixel_column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(9),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(9));

-- Location: LCCOMB_X23_Y14_N30
\inst~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = (!\inst2|pixel_column\(8) & (!\inst2|pixel_column\(7) & (!\inst2|pixel_column\(9) & \inst2|video_on_h~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(8),
	datab => \inst2|pixel_column\(7),
	datac => \inst2|pixel_column\(9),
	datad => \inst2|video_on_h~regout\,
	combout => \inst~2_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~3_combout\ = (\inst~1_combout\ & (\inst~2_combout\ & ((!\inst2|pixel_column\(5)) # (!\inst4|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datab => \inst2|pixel_column\(5),
	datac => \inst~1_combout\,
	datad => \inst~2_combout\,
	combout => \inst~3_combout\);

-- Location: LCFF_X40_Y14_N13
\inst3|altsyncram_component|auto_generated|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst3|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X40_Y14_N12
\inst3|altsyncram_component|auto_generated|mux2|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst3|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # 
-- (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst3|altsyncram_component|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datab => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \inst3|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X40_Y14_N10
\inst3|altsyncram_component|auto_generated|mux2|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\inst3|altsyncram_component|auto_generated|mux2|_~0_combout\ & ((\inst3|altsyncram_component|auto_generated|ram_block1a7~portadataout\) # 
-- ((!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\inst3|altsyncram_component|auto_generated|mux2|_~0_combout\ & (((\inst3|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- \inst3|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \inst3|altsyncram_component|auto_generated|mux2|_~0_combout\,
	datac => \inst3|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst3|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X40_Y9_N26
\inst6|inst1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add1~1_combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs\(61) & ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\) # (\inst6|inst|LPM_SHIFTREG_component|dffs\(62)))) # 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs\(61) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & \inst6|inst|LPM_SHIFTREG_component|dffs\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_SHIFTREG_component|dffs\(61),
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datac => \inst6|inst|LPM_SHIFTREG_component|dffs\(62),
	combout => \inst6|inst1|Add1~1_combout\);

-- Location: LCCOMB_X40_Y9_N28
\inst6|inst1|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add4~0_combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & \inst6|inst4|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	datac => \inst6|inst4|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst6|inst1|Add4~0_combout\);

-- Location: LCCOMB_X40_Y9_N12
\inst6|inst1|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add3~1_combout\ = \inst6|inst1|Add1~0_combout\ $ (\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) $ (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|Add1~0_combout\,
	datac => \inst6|inst3|LPM_SHIFTREG_component|dffs\(61),
	datad => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \inst6|inst1|Add3~1_combout\);

-- Location: LCCOMB_X40_Y9_N0
\inst6|inst1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add3~2_combout\ = (\inst6|inst1|Add1~1_combout\ & ((\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) & ((\inst6|inst1|Add1~0_combout\) # (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))) # 
-- (!\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) & (\inst6|inst1|Add1~0_combout\ & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add1~1_combout\,
	datab => \inst6|inst3|LPM_SHIFTREG_component|dffs\(61),
	datac => \inst6|inst1|Add1~0_combout\,
	datad => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \inst6|inst1|Add3~2_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst2|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = ((\inst2|h_count\(8)) # (!\inst2|h_count\(7))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(9),
	datac => \inst2|h_count\(8),
	datad => \inst2|h_count\(7),
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst2|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = (\inst2|v_count\(7) & (\inst2|v_count\(5) & (\inst2|v_count\(6) & \inst2|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(7),
	datab => \inst2|v_count\(5),
	datac => \inst2|v_count\(6),
	datad => \inst2|v_count\(8),
	combout => \inst2|LessThan6~0_combout\);

-- Location: LCCOMB_X40_Y14_N8
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode120w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode120w[3]~0_combout\ = (\inst2|pixel_row\(5) & (\inst2|pixel_row\(6) & !\inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode120w[3]~0_combout\);

-- Location: LCCOMB_X40_Y14_N26
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode110w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode110w[3]~0_combout\ = (!\inst2|pixel_row\(5) & (\inst2|pixel_row\(6) & \inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode110w[3]~0_combout\);

-- Location: LCFF_X40_Y14_N21
\inst3|altsyncram_component|auto_generated|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst3|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X25_Y14_N18
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode100w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode100w[3]~0_combout\ = (\inst2|pixel_row\(6) & (!\inst2|pixel_row\(4) & !\inst2|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(6),
	datac => \inst2|pixel_row\(4),
	datad => \inst2|pixel_row\(5),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode100w[3]~0_combout\);

-- Location: LCCOMB_X40_Y14_N24
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode130w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode130w[3]~0_combout\ = (\inst2|pixel_row\(5) & (\inst2|pixel_row\(6) & \inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode130w[3]~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst2|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (!\inst2|v_count\(6) & (!\inst2|v_count\(5) & (!\inst2|v_count\(7) & !\inst2|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(6),
	datab => \inst2|v_count\(5),
	datac => \inst2|v_count\(7),
	datad => \inst2|v_count\(4),
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst2|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (((\inst2|h_count\(8)) # (!\inst2|h_count\(4))) # (!\inst2|h_count\(7))) # (!\inst2|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(4),
	datad => \inst2|h_count\(8),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst2|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|h_count\(5)) # (((\inst2|Equal1~0_combout\) # (!\inst2|Equal0~0_combout\)) # (!\inst2|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(5),
	datab => \inst2|h_count\(9),
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y14_N20
\inst3|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \inst2|pixel_row\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PLL_1
\inst2|video_PLL_inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 16,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst2|video_PLL_inst|altpll_component|pll_INCLK_bus\,
	clk => \inst2|video_PLL_inst|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\inst2|video_PLL_inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y14_N4
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|h_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X22_Y14_N8
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|h_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|h_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|h_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X22_Y14_N10
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|h_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|h_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X22_Y14_N12
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|h_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|h_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|h_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCFF_X22_Y14_N13
\inst2|h_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(4));

-- Location: LCCOMB_X22_Y14_N14
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|h_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|h_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X22_Y14_N0
\inst2|h_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|h_count~0_combout\ = (\inst2|Add0~10_combout\ & (((!\inst2|h_count\(8)) # (!\inst2|Equal0~1_combout\)) # (!\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|h_count\(8),
	combout => \inst2|h_count~0_combout\);

-- Location: LCFF_X22_Y14_N1
\inst2|h_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(5));

-- Location: LCCOMB_X22_Y14_N16
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|h_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|h_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|h_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X22_Y14_N18
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|h_count\(7) & (!\inst2|Add0~13\)) # (!\inst2|h_count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCFF_X22_Y14_N19
\inst2|h_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(7));

-- Location: LCCOMB_X22_Y14_N28
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|h_count\(3) & (!\inst2|h_count\(7) & (!\inst2|h_count\(4) & \inst2|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(4),
	datad => \inst2|h_count\(5),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst2|h_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|h_count~1_combout\ = (\inst2|Add0~16_combout\ & (((!\inst2|Equal0~2_combout\) # (!\inst2|h_count\(8))) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|h_count\(8),
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~1_combout\);

-- Location: LCFF_X22_Y14_N3
\inst2|h_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(8));

-- Location: LCCOMB_X22_Y14_N22
\inst2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|h_count\(9) $ (\inst2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst2|h_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|h_count~2_combout\ = (\inst2|Add0~18_combout\ & (((!\inst2|h_count\(8)) # (!\inst2|Equal0~1_combout\)) # (!\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|h_count\(8),
	combout => \inst2|h_count~2_combout\);

-- Location: LCFF_X22_Y14_N25
\inst2|h_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(9));

-- Location: LCCOMB_X22_Y14_N6
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|h_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|h_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCFF_X22_Y14_N7
\inst2|h_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(1));

-- Location: LCCOMB_X24_Y14_N30
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|h_count\(6) & (!\inst2|h_count\(1) & (!\inst2|h_count\(2) & !\inst2|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(6),
	datab => \inst2|h_count\(1),
	datac => \inst2|h_count\(2),
	datad => \inst2|h_count\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|h_count\(9) & \inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(9),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst2|h_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|h_count~3_combout\ = (\inst2|Add0~0_combout\ & (((!\inst2|h_count\(8)) # (!\inst2|Equal0~1_combout\)) # (!\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|h_count\(8),
	combout => \inst2|h_count~3_combout\);

-- Location: LCFF_X22_Y14_N27
\inst2|h_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(0));

-- Location: LCFF_X22_Y14_N9
\inst2|h_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(2));

-- Location: LCCOMB_X24_Y14_N2
\inst2|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (\inst2|h_count\(5) & ((\inst2|h_count\(2)) # ((\inst2|h_count\(1)) # (\inst2|h_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(5),
	datab => \inst2|h_count\(2),
	datac => \inst2|h_count\(1),
	datad => \inst2|h_count\(0),
	combout => \inst2|process_0~4_combout\);

-- Location: LCFF_X22_Y14_N17
\inst2|h_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(6));

-- Location: LCCOMB_X24_Y14_N20
\inst2|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = (\inst2|h_count\(3) & (\inst2|h_count\(4) & \inst2|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datab => \inst2|h_count\(4),
	datac => \inst2|h_count\(6),
	combout => \inst2|process_0~5_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst2|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (!\inst2|h_count\(6) & (!\inst2|h_count\(5) & ((!\inst2|h_count\(4)) # (!\inst2|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datab => \inst2|h_count\(4),
	datac => \inst2|h_count\(6),
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst2|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = (\inst2|process_0~3_combout\) # ((\inst2|process_0~2_combout\) # ((\inst2|process_0~4_combout\ & \inst2|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~3_combout\,
	datab => \inst2|process_0~4_combout\,
	datac => \inst2|process_0~5_combout\,
	datad => \inst2|process_0~2_combout\,
	combout => \inst2|process_0~6_combout\);

-- Location: LCFF_X24_Y14_N17
\inst2|horiz_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|horiz_sync~regout\);

-- Location: LCFF_X24_Y14_N27
\inst2|horiz_sync_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|horiz_sync~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|horiz_sync_out~regout\);

-- Location: LCCOMB_X26_Y14_N2
\inst2|v_count[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~6_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~18_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~18_combout\,
	datab => \inst2|v_count[9]~1_combout\,
	datac => \inst2|v_count\(9),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[9]~6_combout\);

-- Location: LCFF_X26_Y14_N3
\inst2|v_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(9));

-- Location: LCCOMB_X23_Y14_N24
\inst2|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~10_combout\ = (((!\inst2|h_count\(7) & !\inst2|h_count\(8))) # (!\inst2|v_count\(9))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(8),
	datad => \inst2|v_count\(9),
	combout => \inst2|process_0~10_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst2|process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~11_combout\ = (\inst2|process_0~10_combout\) # ((\inst2|LessThan1~2_combout\) # ((\inst2|process_0~2_combout\ & !\inst2|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datab => \inst2|process_0~10_combout\,
	datac => \inst2|h_count\(8),
	datad => \inst2|LessThan1~2_combout\,
	combout => \inst2|process_0~11_combout\);

-- Location: LCCOMB_X27_Y14_N2
\inst2|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~9_combout\ = (\inst2|process_0~2_combout\ & !\inst2|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datac => \inst2|h_count\(8),
	combout => \inst2|process_0~9_combout\);

-- Location: LCCOMB_X27_Y14_N12
\inst2|v_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count~3_combout\ = (\inst2|Add1~0_combout\ & ((\inst2|LessThan1~2_combout\) # ((\inst2|process_0~10_combout\) # (\inst2|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~0_combout\,
	datab => \inst2|LessThan1~2_combout\,
	datac => \inst2|process_0~10_combout\,
	datad => \inst2|process_0~9_combout\,
	combout => \inst2|v_count~3_combout\);

-- Location: LCFF_X27_Y14_N13
\inst2|v_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count~3_combout\,
	ena => \inst2|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(0));

-- Location: LCCOMB_X26_Y14_N12
\inst2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|v_count\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|v_count\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|v_count\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X26_Y14_N14
\inst2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|v_count\(3) & (!\inst2|Add1~5\)) # (!\inst2|v_count\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X27_Y14_N6
\inst2|v_count[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[3]~4_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|process_0~11_combout\ & ((\inst2|Add1~6_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~1_combout\,
	datab => \inst2|process_0~11_combout\,
	datac => \inst2|v_count\(3),
	datad => \inst2|Add1~6_combout\,
	combout => \inst2|v_count[3]~4_combout\);

-- Location: LCFF_X27_Y14_N7
\inst2|v_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(3));

-- Location: LCCOMB_X27_Y14_N16
\inst2|v_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count~0_combout\ = (\inst2|Add1~2_combout\ & ((\inst2|LessThan1~2_combout\) # ((\inst2|process_0~10_combout\) # (\inst2|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~2_combout\,
	datab => \inst2|LessThan1~2_combout\,
	datac => \inst2|process_0~10_combout\,
	datad => \inst2|process_0~9_combout\,
	combout => \inst2|v_count~0_combout\);

-- Location: LCFF_X27_Y14_N17
\inst2|v_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count~0_combout\,
	ena => \inst2|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(1));

-- Location: LCCOMB_X27_Y14_N10
\inst2|v_count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[2]~2_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|process_0~11_combout\ & ((\inst2|Add1~4_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~1_combout\,
	datab => \inst2|process_0~11_combout\,
	datac => \inst2|v_count\(2),
	datad => \inst2|Add1~4_combout\,
	combout => \inst2|v_count[2]~2_combout\);

-- Location: LCFF_X27_Y14_N11
\inst2|v_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(2));

-- Location: LCCOMB_X27_Y14_N28
\inst2|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (((!\inst2|v_count\(0) & !\inst2|v_count\(1))) # (!\inst2|v_count\(2))) # (!\inst2|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(0),
	datab => \inst2|v_count\(3),
	datac => \inst2|v_count\(1),
	datad => \inst2|v_count\(2),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst2|v_count[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[7]~9_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~14_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~14_combout\,
	datab => \inst2|v_count[9]~1_combout\,
	datac => \inst2|v_count\(7),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[7]~9_combout\);

-- Location: LCFF_X26_Y14_N5
\inst2|v_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(7));

-- Location: LCCOMB_X26_Y14_N28
\inst2|v_count[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[5]~7_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~10_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~10_combout\,
	datab => \inst2|v_count[9]~1_combout\,
	datac => \inst2|v_count\(5),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[5]~7_combout\);

-- Location: LCFF_X26_Y14_N29
\inst2|v_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(5));

-- Location: LCCOMB_X27_Y14_N8
\inst2|v_count[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[8]~10_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~16_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~1_combout\,
	datab => \inst2|Add1~16_combout\,
	datac => \inst2|v_count\(8),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[8]~10_combout\);

-- Location: LCFF_X27_Y14_N9
\inst2|v_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(8));

-- Location: LCCOMB_X27_Y14_N30
\inst2|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\inst2|LessThan1~1_combout\ & (\inst2|LessThan1~0_combout\ & !\inst2|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~1_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|v_count\(8),
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X27_Y14_N24
\inst2|v_count[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~1_combout\ = ((!\inst2|LessThan1~2_combout\ & (!\inst2|process_0~10_combout\ & !\inst2|process_0~9_combout\))) # (!\inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|LessThan1~2_combout\,
	datac => \inst2|process_0~10_combout\,
	datad => \inst2|process_0~9_combout\,
	combout => \inst2|v_count[9]~1_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst2|v_count[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[4]~5_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~8_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~8_combout\,
	datab => \inst2|v_count[9]~1_combout\,
	datac => \inst2|v_count\(4),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[4]~5_combout\);

-- Location: LCFF_X26_Y14_N1
\inst2|v_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(4));

-- Location: LCCOMB_X25_Y14_N24
\inst2|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = ((\inst2|v_count\(1) & ((\inst2|v_count\(2)) # (!\inst2|v_count\(0)))) # (!\inst2|v_count\(1) & ((!\inst2|v_count\(2))))) # (!\inst2|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(3),
	datab => \inst2|v_count\(0),
	datac => \inst2|v_count\(1),
	datad => \inst2|v_count\(2),
	combout => \inst2|process_0~7_combout\);

-- Location: LCCOMB_X25_Y14_N26
\inst2|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = ((\inst2|v_count\(4)) # ((\inst2|v_count\(9)) # (\inst2|process_0~7_combout\))) # (!\inst2|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~0_combout\,
	datab => \inst2|v_count\(4),
	datac => \inst2|v_count\(9),
	datad => \inst2|process_0~7_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: LCFF_X25_Y14_N27
\inst2|vert_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vert_sync~regout\);

-- Location: LCFF_X25_Y14_N17
\inst2|vert_sync_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|vert_sync~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vert_sync_out~regout\);

-- Location: LCCOMB_X26_Y14_N6
\inst2|v_count[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|v_count[6]~8_combout\ = (\inst2|v_count[9]~1_combout\ & (\inst2|Add1~12_combout\ & ((\inst2|process_0~11_combout\)))) # (!\inst2|v_count[9]~1_combout\ & (((\inst2|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~12_combout\,
	datab => \inst2|v_count[9]~1_combout\,
	datac => \inst2|v_count\(6),
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[6]~8_combout\);

-- Location: LCFF_X26_Y14_N7
\inst2|v_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|v_count[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|v_count\(6));

-- Location: LCCOMB_X25_Y14_N6
\inst2|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~1_combout\ = (\inst2|v_count\(3)) # ((\inst2|v_count\(1)) # ((\inst2|v_count\(0)) # (\inst2|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(3),
	datab => \inst2|v_count\(1),
	datac => \inst2|v_count\(0),
	datad => \inst2|v_count\(2),
	combout => \inst2|LessThan6~1_combout\);

-- Location: LCCOMB_X25_Y14_N10
\inst2|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~2_combout\ = (!\inst2|v_count\(9) & (((!\inst2|v_count\(4) & !\inst2|LessThan6~1_combout\)) # (!\inst2|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~0_combout\,
	datab => \inst2|v_count\(4),
	datac => \inst2|v_count\(9),
	datad => \inst2|LessThan6~1_combout\,
	combout => \inst2|LessThan6~2_combout\);

-- Location: LCFF_X25_Y14_N31
\inst2|pixel_row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|v_count\(6),
	sload => VCC,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(6));

-- Location: LCFF_X25_Y14_N3
\inst2|pixel_row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|v_count\(0),
	sload => VCC,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(0));

-- Location: LCFF_X25_Y14_N5
\inst2|pixel_row[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|v_count\(5),
	sload => VCC,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(5));

-- Location: LCFF_X25_Y14_N19
\inst2|pixel_row[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|v_count\(4),
	sload => VCC,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(4));

-- Location: LCCOMB_X25_Y14_N20
\inst4|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|always0~0_combout\ = (\inst2|pixel_row\(1)) # ((\inst2|pixel_row\(0)) # ((\inst2|pixel_row\(5)) # (\inst2|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(1),
	datab => \inst2|pixel_row\(0),
	datac => \inst2|pixel_row\(5),
	datad => \inst2|pixel_row\(4),
	combout => \inst4|always0~0_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst2|pixel_row[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[7]~feeder_combout\ = \inst2|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(7),
	combout => \inst2|pixel_row[7]~feeder_combout\);

-- Location: LCFF_X25_Y14_N23
\inst2|pixel_row[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_row[7]~feeder_combout\,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(7));

-- Location: LCFF_X25_Y14_N13
\inst2|video_on_v\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|LessThan6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|video_on_v~regout\);

-- Location: LCCOMB_X25_Y14_N28
\inst2|pixel_row[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[8]~feeder_combout\ = \inst2|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(8),
	combout => \inst2|pixel_row[8]~feeder_combout\);

-- Location: LCFF_X25_Y14_N29
\inst2|pixel_row[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_row[8]~feeder_combout\,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(8));

-- Location: LCCOMB_X25_Y14_N12
\inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (!\inst2|pixel_column\(6) & (!\inst2|pixel_row\(7) & (\inst2|video_on_v~regout\ & !\inst2|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(6),
	datab => \inst2|pixel_row\(7),
	datac => \inst2|video_on_v~regout\,
	datad => \inst2|pixel_row\(8),
	combout => \inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (\inst~0_combout\ & (((!\inst4|always0~1_combout\ & !\inst4|always0~0_combout\)) # (!\inst2|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|always0~1_combout\,
	datab => \inst2|pixel_row\(6),
	datac => \inst4|always0~0_combout\,
	datad => \inst~0_combout\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst2|pixel_column[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[5]~feeder_combout\ = \inst2|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(5),
	combout => \inst2|pixel_column[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N18
\inst2|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~0_combout\ = ((!\inst2|h_count\(8) & !\inst2|h_count\(7))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(9),
	datac => \inst2|h_count\(8),
	datad => \inst2|h_count\(7),
	combout => \inst2|LessThan5~0_combout\);

-- Location: LCFF_X24_Y14_N29
\inst2|pixel_column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_column[5]~feeder_combout\,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(5));

-- Location: LCFF_X24_Y14_N9
\inst2|pixel_column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(2),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(2));

-- Location: LCFF_X22_Y14_N11
\inst2|h_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|h_count\(3));

-- Location: LCCOMB_X24_Y14_N4
\inst2|pixel_column[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[3]~feeder_combout\ = \inst2|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(3),
	combout => \inst2|pixel_column[3]~feeder_combout\);

-- Location: LCFF_X24_Y14_N5
\inst2|pixel_column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_column[3]~feeder_combout\,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(3));

-- Location: LCFF_X24_Y14_N3
\inst2|pixel_column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(1),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(1));

-- Location: LCCOMB_X24_Y14_N6
\inst4|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst2|pixel_column\(4) & (\inst2|pixel_column\(2) & (\inst2|pixel_column\(3) & \inst2|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(4),
	datab => \inst2|pixel_column\(2),
	datac => \inst2|pixel_column\(3),
	datad => \inst2|pixel_column\(1),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~5_combout\ = (\inst~2_combout\ & ((!\inst4|LessThan0~0_combout\) # (!\inst2|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~2_combout\,
	datab => \inst2|pixel_column\(5),
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst~5_combout\);

-- Location: LCCOMB_X24_Y14_N12
inst1 : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = LCELL((GLOBAL(\inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\) & (\inst~1_combout\ & \inst~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datac => \inst~1_combout\,
	datad => \inst~5_combout\,
	combout => \inst1~combout\);

-- Location: CLKCTRL_G6
\inst1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y9_N0
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0) $ (VCC)
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0),
	datad => VCC,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X42_Y9_N18
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X42_Y9_N2
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- ((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => VCC,
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCFF_X42_Y9_N3
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1));

-- Location: LCCOMB_X42_Y9_N4
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
-- (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ (GND))) # (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
-- !\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2),
	datad => VCC,
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCFF_X42_Y9_N5
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2));

-- Location: LCCOMB_X42_Y9_N6
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & 
-- ((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3),
	datad => VCC,
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X42_Y9_N8
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
-- (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ $ (GND))) # (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
-- (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ & VCC))
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
-- !\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4),
	datad => VCC,
	cin => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	cout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: LCFF_X42_Y9_N9
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4));

-- Location: LCFF_X42_Y9_N7
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3));

-- Location: LCCOMB_X42_Y9_N30
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
-- (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & (!\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5),
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4),
	datac => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2),
	datad => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3),
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X42_Y9_N24
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\ = (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0_combout\) # 
-- ((\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ & (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~0_combout\,
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\,
	datac => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0),
	combout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: LCFF_X42_Y9_N1
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

-- Location: LCFF_X42_Y9_N11
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5));

-- Location: M4K_X41_Y9
\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "estagio:inst6|sr:inst|lpm_shiftreg:LPM_SHIFTREG_component|altshift_taps:dffs_rtl_0|shift_taps_q1m:auto_generated|altsyncram_k981:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 60,
	port_a_logical_ram_width => 2,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 60,
	port_b_logical_ram_width => 2,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \inst1~clkctrl_outclk\,
	portadatain => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X40_Y9_N9
\inst6|inst4|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst4|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X40_Y9_N8
\inst6|inst1|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add4~1_combout\ = \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\ $ (\inst6|inst4|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	datac => \inst6|inst4|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst6|inst1|Add4~1_combout\);

-- Location: LCFF_X40_Y9_N15
\inst6|inst4|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst6|inst4|LPM_SHIFTREG_component|dffs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst4|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X40_Y9_N14
\inst6|inst1|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add5~1_cout\ = CARRY(\inst6|inst4|LPM_SHIFTREG_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst4|LPM_SHIFTREG_component|dffs\(0),
	datad => VCC,
	cout => \inst6|inst1|Add5~1_cout\);

-- Location: LCCOMB_X40_Y9_N18
\inst6|inst1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add5~4_combout\ = ((\inst6|inst1|Add4~0_combout\ $ (\inst6|inst1|Add3~0_combout\ $ (!\inst6|inst1|Add5~3\)))) # (GND)
-- \inst6|inst1|Add5~5\ = CARRY((\inst6|inst1|Add4~0_combout\ & ((\inst6|inst1|Add3~0_combout\) # (!\inst6|inst1|Add5~3\))) # (!\inst6|inst1|Add4~0_combout\ & (\inst6|inst1|Add3~0_combout\ & !\inst6|inst1|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add4~0_combout\,
	datab => \inst6|inst1|Add3~0_combout\,
	datad => VCC,
	cin => \inst6|inst1|Add5~3\,
	combout => \inst6|inst1|Add5~4_combout\,
	cout => \inst6|inst1|Add5~5\);

-- Location: LCCOMB_X40_Y9_N20
\inst6|inst1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add5~6_combout\ = \inst6|inst1|Add3~2_combout\ $ (\inst6|inst1|Add5~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add3~2_combout\,
	cin => \inst6|inst1|Add5~5\,
	combout => \inst6|inst1|Add5~6_combout\);

-- Location: LCCOMB_X40_Y14_N14
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode70w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode70w[3]~0_combout\ = (!\inst2|pixel_row\(5) & (!\inst2|pixel_row\(6) & \inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode70w[3]~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst2|pixel_column[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[0]~feeder_combout\ = \inst2|h_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(0),
	combout => \inst2|pixel_column[0]~feeder_combout\);

-- Location: LCFF_X24_Y14_N25
\inst2|pixel_column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_column[0]~feeder_combout\,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(0));

-- Location: LCFF_X24_Y14_N11
\inst2|pixel_column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(4),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(4));

-- Location: LCFF_X24_Y14_N15
\inst2|pixel_column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|h_count\(6),
	sload => VCC,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(6));

-- Location: LCCOMB_X23_Y14_N26
\inst2|pixel_column[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[7]~feeder_combout\ = \inst2|h_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(7),
	combout => \inst2|pixel_column[7]~feeder_combout\);

-- Location: LCFF_X23_Y14_N27
\inst2|pixel_column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_column[7]~feeder_combout\,
	ena => \inst2|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_column\(7));

-- Location: LCFF_X25_Y14_N25
\inst2|pixel_row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst2|v_count\(1),
	sload => VCC,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(1));

-- Location: LCCOMB_X25_Y14_N8
\inst2|pixel_row[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[2]~feeder_combout\ = \inst2|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(2),
	combout => \inst2|pixel_row[2]~feeder_combout\);

-- Location: LCFF_X25_Y14_N9
\inst2|pixel_row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_row[2]~feeder_combout\,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(2));

-- Location: LCCOMB_X25_Y14_N0
\inst2|pixel_row[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[3]~feeder_combout\ = \inst2|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(3),
	combout => \inst2|pixel_row[3]~feeder_combout\);

-- Location: LCFF_X25_Y14_N1
\inst2|pixel_row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|pixel_row[3]~feeder_combout\,
	ena => \inst2|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|pixel_row\(3));

-- Location: M4K_X41_Y16
\inst3|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000001FFFFFFFFFF000040000000003FFFFFFFFFFFFFF808000F8000000004800000007FFFFFFF7E0000000000000004000000000100000000070000000040000000003FBFFFFFFC0000081000000000000400000000000080000000000000000000001FFFFFFFF800000000000000000000000000000080000000000000000000000007FFFFFFE020001000000000000000008000040000000000000000004000000013FFFFEFC000000000000000080000000000000000000000000000200020000001FF7FFF8000000000000000000000000000000000000000000000000002840001FFFFFF00000010200010000000000000000000000000000000000000",
	mem_init0 => X"000000003FFFFC00000000000000000800008000000100400000000000000000000000001FFFFC00000000000001000000000000000000000000000000008000000000000FFFF0000000000000000000000004000000000000000000000000000000000007FFC0000000000000000000000000000000000000000000000000008000000011DF80000000000000000000000000000000000000000000000000000000000000FB000000000000000000000000000000000010000000000000000001800000007E00040000000000000000000000000004000000000000000000800000200000180000000000000000100100000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode70w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y14_N4
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode53w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode53w\(3) = (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) & !\inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(6),
	datac => \inst2|pixel_row\(5),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode53w\(3));

-- Location: M4K_X17_Y16
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000002000000000084000000000000000000000000000000000000000020000000000000000000000000000000000000400000000000000004000000000000000000000000000000000000000100000000000000000000000000000000000000000000800000000001020000000000400000000000000000000020000000000000000001000000000280000100000400010000000000000000000000000000000000000000000000000010000000000000000000000000000000000006000000200000000000000000000000000000000000000200000200000000000000000000040000000000000000000100001001004000000000000",
	mem_init0 => X"02000000000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000000000000010000000020000000000000000000000000040000000000000000000000000000001000000000000000000420000040000000000000000000000010000000000000000000000000000000000000000002000000000000000000000000000000000000000000010000000004000000000000000000000000000000000000000000000000000200000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode53w\(3),
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X40_Y14_N17
\inst3|altsyncram_component|auto_generated|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst2|pixel_row\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCFF_X40_Y14_N29
\inst3|altsyncram_component|auto_generated|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst3|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X40_Y14_N6
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode80w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode80w[3]~0_combout\ = (\inst2|pixel_row\(5) & (!\inst2|pixel_row\(6) & !\inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode80w[3]~0_combout\);

-- Location: M4K_X41_Y14
\inst3|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000FFFEFFEFFFFFFF0000001080003FFFFFFFFFFFFFF800FFFFFFF8000200000000FFFFFFFFFFFFFF0000000000003FFBFFFFFFFFFFF8007FFFFFE0000000000001FFFFFFFFFFFFFF8000000000003FFFFFFFFFFFFFF8003FFFFFE0000000000001FFFFFFFFFFFFFF8000000000003FFFFFFFFFFFFFF8041FFFFFC000000C000001FFFFF7FFFFFFFF8000000000003FFFFFFFFFFFFFD8001FFF7FC0000000000001FFFFFFFFFFFFFF8000000040003FFFFFFFFFFFFFF8004FFFFF80000000000003FFFFFFDFFFFFFFC010000000003FFFFFFFFFFFFFF80007FF7F00000000000003FFFDFFFFFFFFFFC000800010003FFFFFDFFFFFFFF80007FBFE0000000000",
	mem_init0 => X"00037FFFFFFFFFFFFFE000000000003FFFFFFFFFFFFFF80003FFFC00000000000001FFFFFFFFFFFFFF8000000000003FFFFFDFFFFFFFF80001FFFC00808000000000FFFFFFFFFFFFFF0100000000003FFFFFFFFFFFFB780000FFF8000000000000007F7DFFFFFFFFFE0000000080003FFFFFFFFFFFFFF80000FFF8000000000000003FFFFFFFFFFFFC0001000000003FFFFFFFFFFFFFF800007FF0000000000000000FFFBFFFFFFFF80000000000003FFFFFFBFFFFFFF800003FE00000000000000007FFFFFFFFFFE00000000000003FFFFFFFFFFFFFF800001FC00000000000000003FFFFFFFEFFC00000000000003FFFF7FFFFFFFFF800001FC00100000100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode80w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y14_N28
\inst3|altsyncram_component|auto_generated|mux2|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst3|altsyncram_component|auto_generated|ram_block1a2~portadataout\))) # 
-- (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst3|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \inst3|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datac => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	combout => \inst3|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X40_Y14_N2
\inst3|altsyncram_component|auto_generated|deep_decode|w_anode90w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|deep_decode|w_anode90w[3]~0_combout\ = (\inst2|pixel_row\(5) & (!\inst2|pixel_row\(6) & \inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(5),
	datac => \inst2|pixel_row\(6),
	datad => \inst2|pixel_row\(4),
	combout => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode90w[3]~0_combout\);

-- Location: M4K_X41_Y17
\inst3|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000007FFFFFFFFFFEBFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFF00004000000FFFFFEFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF7FFFFFFEF00000000000FFFFFF7FEFFF07FFFBFFFFFFFFFEFFFFFFFFFFFFBFFFFFFFFFFFE00020001000FFFFFFFFFFFF01FFFFFFFFFFFFFFDFFFFFFFFFFF9FFFFFFFFFFFC00000000000FFFFDFFFFFFF007FFFFFFFFEFFFFFFFFFFFFFFFF1FFFBFFFFFFFC00000000001FFFFBFFFFFFF800FFFFFFFFFF3FFFFFFFBFFFFFF8FFFFFFFFFFFC00000000001FEFFFFFFFFFF8001FFFFFFFF83FFFFFFFFFFFFFF87FFFFFFFFFF008000000001FFFFFFFFFF7F800017FFF7F803FFFFFFFFFDFFFF83FFFFFFFFFE0000000",
	mem_init0 => X"00007FFFFFFFFFB7FC000007FFE20037FFDFFFFFFFFFF83FFFFFFFFFE004000000003FFFFFFFFFFFFC0000000000003FFFFFFFFFFFFFF81FFFFDFFFFC020000000003FFFFFFFCFFFFC0000000000003FFFFFFFFFFFFFF80FFFFFFFFF8000000000007FFFFFFFFFFFFC0000000000003FFFFFFFFFEFFFF807FFFFFFFF0000000400007FFFFFFFFFFFFE0000100000003FFFFFFFFFFFFFF807FFFFFFFF0000000000007FFFFFFFFFFFFE00000000000037FFFFFFFFFFFFF803FFFFFFFE0000000020007FFFFFFFFFFFFE0000000004003FFFFFFFFFFFFFF801FFFFFFFC000000000000FBFFFDFFFFFFFF0000000000003FFFFFFFFFFFFFF800FFFFFFF800000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Imagem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MM:inst3|altsyncram:altsyncram_component|altsyncram_q771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1~clkctrl_outclk\,
	ena0 => \inst3|altsyncram_component|auto_generated|deep_decode|w_anode90w[3]~0_combout\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y14_N30
\inst3|altsyncram_component|auto_generated|mux2|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst3|altsyncram_component|auto_generated|mux2|_~2_combout\ & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # (!\inst3|altsyncram_component|auto_generated|mux2|_~2_combout\ & (\inst3|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))) # 
-- (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\inst3|altsyncram_component|auto_generated|mux2|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \inst3|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datac => \inst3|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	combout => \inst3|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCFF_X40_Y14_N5
\inst3|altsyncram_component|auto_generated|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst2|pixel_row\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: LCFF_X40_Y14_N23
\inst3|altsyncram_component|auto_generated|out_address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst3|altsyncram_component|auto_generated|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X40_Y14_N22
\inst8|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|out~0_combout\ = (!\SW~combout\(0) & ((\inst3|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\inst3|altsyncram_component|auto_generated|mux2|_~1_combout\)) # (!\inst3|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\inst3|altsyncram_component|auto_generated|mux2|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|mux2|_~1_combout\,
	datab => \inst3|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datac => \inst3|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \SW~combout\(0),
	combout => \inst8|out~0_combout\);

-- Location: LCCOMB_X40_Y9_N30
\inst8|out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|out~2_combout\ = (\inst8|out~0_combout\) # ((\inst8|out~1_combout\ & !\inst6|inst1|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|out~1_combout\,
	datac => \inst6|inst1|Add5~6_combout\,
	datad => \inst8|out~0_combout\,
	combout => \inst8|out~2_combout\);

-- Location: LCCOMB_X42_Y7_N2
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0) $ (VCC)
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0),
	datad => VCC,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X42_Y7_N4
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCFF_X42_Y7_N5
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1));

-- Location: LCCOMB_X42_Y7_N6
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ 
-- $ (GND))) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2) & 
-- !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X42_Y7_N8
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCFF_X42_Y7_N9
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3));

-- Location: LCCOMB_X42_Y7_N10
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ 
-- $ (GND))) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ & VCC))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4) & 
-- !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X42_Y7_N12
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X42_Y7_N14
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ 
-- $ (GND))) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ & VCC))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ = CARRY((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & 
-- !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\);

-- Location: LCFF_X42_Y7_N15
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6));

-- Location: LCCOMB_X42_Y7_N16
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\);

-- Location: LCFF_X42_Y7_N17
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7));

-- Location: LCFF_X42_Y7_N11
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4));

-- Location: LCCOMB_X42_Y7_N0
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1_combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7) & 
-- (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5),
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(7),
	datac => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(6),
	datad => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(4),
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1_combout\);

-- Location: LCFF_X42_Y7_N7
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2));

-- Location: LCCOMB_X42_Y7_N28
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2_combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3) & (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(3),
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0),
	datac => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(2),
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X42_Y7_N18
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ 
-- $ (GND))) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8) & (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ & VCC))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\ = CARRY((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8) & 
-- !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\);

-- Location: LCFF_X42_Y7_N19
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8));

-- Location: LCCOMB_X42_Y7_N20
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\)) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9) & 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\) # (GND)))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\ = CARRY((!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\) # 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita8~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X42_Y7_N22
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
-- (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\ $ (GND))) # (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
-- (!\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\ & VCC))
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\ = CARRY((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
-- !\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10),
	datad => VCC,
	cin => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~COUT\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~combout\,
	cout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~COUT\);

-- Location: LCFF_X42_Y7_N23
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10));

-- Location: LCFF_X42_Y7_N21
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9));

-- Location: LCCOMB_X43_Y7_N24
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11) & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10) & 
-- (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9) & \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11),
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(10),
	datac => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(9),
	datad => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(8),
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X42_Y7_N30
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\ = (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0_combout\) # 
-- ((\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1_combout\ & (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2_combout\ & 
-- \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~0_combout\,
	datab => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~1_combout\,
	datac => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~2_combout\,
	datad => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\,
	combout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: LCFF_X42_Y7_N3
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(0));

-- Location: LCFF_X42_Y7_N13
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(5));

-- Location: LCFF_X42_Y7_N25
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_reg_bit4a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	datain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|cntr1|safe_q\(11));

-- Location: M4K_X41_Y7
\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sr4096:inst9|lpm_shiftreg:LPM_SHIFTREG_component|altshift_taps:dffs_rtl_0|shift_taps_35m:auto_generated|altsyncram_0j81:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4093,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4093,
	port_b_logical_ram_width => 1,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \inst1~clkctrl_outclk\,
	portadatain => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X40_Y9_N27
\inst6|inst|LPM_SHIFTREG_component|dffs[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs\(62));

-- Location: LCFF_X40_Y9_N11
\inst6|inst|LPM_SHIFTREG_component|dffs[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst6|inst|LPM_SHIFTREG_component|dffs\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst|LPM_SHIFTREG_component|dffs\(61));

-- Location: LCFF_X40_Y9_N23
\inst6|inst3|LPM_SHIFTREG_component|dffs[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst3|LPM_SHIFTREG_component|dffs\(62));

-- Location: LCFF_X40_Y9_N13
\inst6|inst3|LPM_SHIFTREG_component|dffs[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	sdata => \inst6|inst3|LPM_SHIFTREG_component|dffs\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst3|LPM_SHIFTREG_component|dffs\(61));

-- Location: LCCOMB_X40_Y9_N10
\inst6|inst1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add1~0_combout\ = \inst6|inst|LPM_SHIFTREG_component|dffs\(62) $ (\inst6|inst|LPM_SHIFTREG_component|dffs\(61) $ (\inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|LPM_SHIFTREG_component|dffs\(62),
	datac => \inst6|inst|LPM_SHIFTREG_component|dffs\(61),
	datad => \inst9|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \inst6|inst1|Add1~0_combout\);

-- Location: LCCOMB_X40_Y9_N24
\inst6|inst1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|Add3~0_combout\ = \inst6|inst1|Add1~1_combout\ $ (((\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) & ((\inst6|inst1|Add1~0_combout\) # (\inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))) # 
-- (!\inst6|inst3|LPM_SHIFTREG_component|dffs\(61) & (\inst6|inst1|Add1~0_combout\ & \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add1~1_combout\,
	datab => \inst6|inst3|LPM_SHIFTREG_component|dffs\(61),
	datac => \inst6|inst1|Add1~0_combout\,
	datad => \inst6|inst|LPM_SHIFTREG_component|dffs_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \inst6|inst1|Add3~0_combout\);

-- Location: LCCOMB_X40_Y9_N22
\inst8|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|out~1_combout\ = (\inst6|inst1|Add5~4_combout\ & (\SW~combout\(0) & ((\inst6|inst1|Add5~2_combout\) # (\inst6|inst3|LPM_SHIFTREG_component|dffs\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|Add5~2_combout\,
	datab => \inst6|inst1|Add5~4_combout\,
	datac => \inst6|inst3|LPM_SHIFTREG_component|dffs\(62),
	datad => \SW~combout\(0),
	combout => \inst8|out~1_combout\);

-- Location: LCCOMB_X40_Y9_N6
\inst~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~4_combout\ = (\inst~3_combout\ & ((\inst8|out~0_combout\) # ((\inst8|out~1_combout\ & !\inst6|inst1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~3_combout\,
	datab => \inst8|out~1_combout\,
	datac => \inst6|inst1|Add5~6_combout\,
	datad => \inst8|out~0_combout\,
	combout => \inst~4_combout\);

-- Location: LCCOMB_X40_Y9_N4
\inst2|blue_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|blue_out~feeder_combout\ = \inst~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst~4_combout\,
	combout => \inst2|blue_out~feeder_combout\);

-- Location: LCFF_X40_Y9_N5
\inst2|blue_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|blue_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|blue_out~regout\);

-- Location: LCCOMB_X40_Y9_N2
\inst2|green_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|green_out~feeder_combout\ = \inst~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst~4_combout\,
	combout => \inst2|green_out~feeder_combout\);

-- Location: LCFF_X40_Y9_N3
\inst2|green_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|green_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|green_out~regout\);

-- Location: LCFF_X40_Y9_N7
\inst2|red_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|video_PLL_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|red_out~regout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|horiz_sync_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vert_sync_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|blue_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|green_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|red_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));
END structure;


