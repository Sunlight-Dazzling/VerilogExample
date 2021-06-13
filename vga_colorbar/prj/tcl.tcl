#参数导入脚本；

set_location_assignment PIN_E1 -to clk
set_location_assignment PIN_E15 -to rst_n

#set_location_assignment PIN_M2 -to uart_rx
#set_location_assignment PIN_G1 -to uart_tx

#LED
#set_location_assignment PIN_D16 -to led[3]
#set_location_assignment PIN_F15 -to led[2]
#set_location_assignment PIN_F16 -to led[1]
#set_location_assignment PIN_G15 -to led[0]

#KEY
#set_location_assignment PIN_M15 -to key_in[2]
#set_location_assignment PIN_M16 -to key_in[1]
#set_location_assignment PIN_E16 -to key_in[0]

#数码管选段
#set_location_assignment PIN_B7 -to seg_dig[0]
#set_location_assignment PIN_A8 -to seg_dig[1]
#set_location_assignment PIN_A6 -to seg_dig[2]
#set_location_assignment PIN_B5 -to seg_dig[3]
#set_location_assignment PIN_B6 -to seg_dig[4]
#set_location_assignment PIN_A7 -to seg_dig[5]
#set_location_assignment PIN_B8 -to seg_dig[6]
#set_location_assignment PIN_A5 -to seg_dig[7]

#数码管片选
#set_location_assignment PIN_A4 -to seg_sel[0]
#set_location_assignment PIN_B4 -to seg_sel[1]
#set_location_assignment PIN_A3 -to seg_sel[2]
#set_location_assignment PIN_B3 -to seg_sel[3]
#set_location_assignment PIN_A2 -to seg_sel[4]
#set_location_assignment PIN_B1 -to seg_sel[5]


#set_location_assignment PIN_J1 -to BUZZER

#eeprom
#set_location_assignment PIN_L2 -to i2c_sda
#set_location_assignment PIN_L1 -to i2c_scl

#flash
#set_location_assignment PIN_H2    -to miso   
#set_location_assignment PIN_C1    -to mosi
#set_location_assignment PIN_H1    -to sclk
#set_location_assignment PIN_D2    -to cs_n

#sdram
 
# set_location_assignment PIN_R4   -to   sdram_clk   
# set_location_assignment PIN_R14  -to   sdram_cke   
# set_location_assignment PIN_T6   -to   sdram_cs_n  
# set_location_assignment PIN_R6   -to   sdram_ras_n 
# set_location_assignment PIN_T5   -to   sdram_cas_n 
# set_location_assignment PIN_N1   -to   sdram_we_n  
# set_location_assignment PIN_R7   -to   sdram_bank[0]  
# set_location_assignment PIN_T7   -to   sdram_bank[1]
# set_location_assignment PIN_T8   -to   sdram_addr[0]  
# set_location_assignment PIN_P9   -to   sdram_addr[1]
# set_location_assignment PIN_T9   -to   sdram_addr[2]
# set_location_assignment PIN_R9   -to   sdram_addr[3]
# set_location_assignment PIN_L16  -to   sdram_addr[4]
# set_location_assignment PIN_L15  -to   sdram_addr[5]
# set_location_assignment PIN_N16  -to   sdram_addr[6]
# set_location_assignment PIN_N15  -to   sdram_addr[7]
# set_location_assignment PIN_P16  -to   sdram_addr[8]
# set_location_assignment PIN_P15  -to   sdram_addr[9]
# set_location_assignment PIN_R8   -to   sdram_addr[10]
# set_location_assignment PIN_R16  -to   sdram_addr[11]
# set_location_assignment PIN_T15  -to   sdram_addr[12]
# set_location_assignment PIN_N2   -to   sdram_dqm[0]
# set_location_assignment PIN_T14  -to   sdram_dqm[1]      
# set_location_assignment PIN_R5   -to   sdram_dq[0]  
# set_location_assignment PIN_T4   -to   sdram_dq[1]     
# set_location_assignment PIN_T3   -to   sdram_dq[2]   
# set_location_assignment PIN_R3   -to   sdram_dq[3]   
# set_location_assignment PIN_T2   -to   sdram_dq[4]   
# set_location_assignment PIN_R1   -to   sdram_dq[5]   
# set_location_assignment PIN_P2   -to   sdram_dq[6]   
# set_location_assignment PIN_P1   -to   sdram_dq[7]   
# set_location_assignment PIN_R13  -to   sdram_dq[8]   
# set_location_assignment PIN_T13  -to   sdram_dq[9]   
# set_location_assignment PIN_R12  -to   sdram_dq[10]   
# set_location_assignment PIN_T12  -to   sdram_dq[11]   
# set_location_assignment PIN_T10  -to   sdram_dq[12]   
# set_location_assignment PIN_R10  -to   sdram_dq[13]   
# set_location_assignment PIN_T11  -to   sdram_dq[14]   
# set_location_assignment PIN_R11  -to   sdram_dq[15] 

#vga

set_location_assignment PIN_C15  -to   vga_rgb_dout[0]  
set_location_assignment PIN_B16  -to   vga_rgb_dout[1]  
set_location_assignment PIN_A15  -to   vga_rgb_dout[2]
set_location_assignment PIN_B14  -to   vga_rgb_dout[3]
set_location_assignment PIN_A14  -to   vga_rgb_dout[4]
set_location_assignment PIN_B13  -to   vga_rgb_dout[5]
set_location_assignment PIN_A13  -to   vga_rgb_dout[6]
set_location_assignment PIN_B12  -to   vga_rgb_dout[7]
set_location_assignment PIN_A12  -to   vga_rgb_dout[8]
set_location_assignment PIN_B11  -to   vga_rgb_dout[9]
set_location_assignment PIN_A11  -to   vga_rgb_dout[10]
set_location_assignment PIN_B10  -to   vga_rgb_dout[11]
set_location_assignment PIN_A10  -to   vga_rgb_dout[12]
set_location_assignment PIN_B9   -to   vga_rgb_dout[13]
set_location_assignment PIN_A9   -to   vga_rgb_dout[14]
set_location_assignment PIN_C8   -to   vga_rgb_dout[15]
set_location_assignment PIN_C16  -to   h_sync	    
set_location_assignment PIN_D15  -to   v_sync	
