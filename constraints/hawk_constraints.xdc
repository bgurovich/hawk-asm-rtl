set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

# Switches
set_property PACKAGE_PIN V17 [get_ports YP]					
	set_property IOSTANDARD LVCMOS33 [get_ports YP]
set_property PACKAGE_PIN V16 [get_ports NS]					
	set_property IOSTANDARD LVCMOS33 [get_ports NS]
	
#Buttons
set_property PACKAGE_PIN U18 [get_ports clk]						
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	
# LEDs
set_property PACKAGE_PIN U16 [get_ports W]					
	set_property IOSTANDARD LVCMOS33 [get_ports W]
set_property PACKAGE_PIN E19 [get_ports DNW]					
	set_property IOSTANDARD LVCMOS33 [get_ports DNW]
set_property PACKAGE_PIN U19 [get_ports RL]					
	set_property IOSTANDARD LVCMOS33 [get_ports RL]
set_property PACKAGE_PIN V19 [get_ports YL]					
	set_property IOSTANDARD LVCMOS33 [get_ports YL]	

set_property PACKAGE_PIN P3 [get_ports present_state[0]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[0]]
set_property PACKAGE_PIN N3 [get_ports present_state[1]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[1]]
set_property PACKAGE_PIN P1 [get_ports present_state[2]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[2]]
set_property PACKAGE_PIN L1 [get_ports present_state[3]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[3]]
	
	
	
# clr_count
set_property PACKAGE_PIN W17 [get_ports clr_count[0]]
set_property IOSTANDARD LVCMOS33 [get_ports clr_count[0]]
set_property PACKAGE_PIN W15 [get_ports clr_count[1]]
set_property IOSTANDARD LVCMOS33 [get_ports clr_count[1]]
set_property PACKAGE_PIN V15 [get_ports clr_count[2]]
set_property IOSTANDARD LVCMOS33 [get_ports clr_count[2]]
set_property PACKAGE_PIN W14 [get_ports clr_count[3]]
set_property IOSTANDARD LVCMOS33 [get_ports clr_count[3]]
# inc_count
set_property PACKAGE_PIN W13 [get_ports inc_count[0]]
set_property IOSTANDARD LVCMOS33 [get_ports inc_count[0]]
set_property PACKAGE_PIN V2 [get_ports inc_count[1]]
set_property IOSTANDARD LVCMOS33 [get_ports inc_count[1]]
set_property PACKAGE_PIN T3 [get_ports inc_count[2]]
set_property IOSTANDARD LVCMOS33 [get_ports inc_count[2]]
set_property PACKAGE_PIN T2 [get_ports inc_count[3]]
set_property IOSTANDARD LVCMOS33 [get_ports inc_count[3]]
#count
set_property PACKAGE_PIN U14 [get_ports count[0]]
set_property IOSTANDARD LVCMOS33 [get_ports count[0]]
set_property PACKAGE_PIN V14 [get_ports count[1]]
set_property IOSTANDARD LVCMOS33 [get_ports count[1]]
set_property PACKAGE_PIN V13 [get_ports count[2]]
set_property IOSTANDARD LVCMOS33 [get_ports count[2]]
set_property PACKAGE_PIN V3 [get_ports count[3]]
set_property IOSTANDARD LVCMOS33 [get_ports count[3]]
#next_state
#set_property PACKAGE_PIN W7 [get_ports next_state[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports next_state[0]]
#set_property PACKAGE_PIN W6 [get_ports next_state[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports next_state[1]]
#set_property PACKAGE_PIN U8 [get_ports next_state[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports next_state[2]]
#set_property PACKAGE_PIN V8 [get_ports next_state[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports next_state[3]]

set_property PACKAGE_PIN J1 [get_ports next_state[0]]
set_property IOSTANDARD LVCMOS33 [get_ports next_state[0]]
set_property PACKAGE_PIN L2 [get_ports next_state[1]]
set_property IOSTANDARD LVCMOS33 [get_ports next_state[1]]
set_property PACKAGE_PIN J2 [get_ports next_state[2]]
set_property IOSTANDARD LVCMOS33 [get_ports next_state[2]]
set_property PACKAGE_PIN G2 [get_ports next_state[3]]
set_property IOSTANDARD LVCMOS33 [get_ports next_state[3]]