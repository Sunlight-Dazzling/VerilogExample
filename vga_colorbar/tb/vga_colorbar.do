vlib work
vmap work work
                                            
#编译testbench文件					       	
vlog    vga_colorbar_tb.v
#编译 	设计文件					       	 
vlog ../rtl/vga_colorbar.v
vlog ../rtl/colorbar.v
vlog ../rtl/vga_driver.v
vlog altera_mf.v
vlog ../ip/pll.v
                                                
#指定仿真顶层 							     
vsim -novopt work.vga_colorbar_tb 
#添加信号到波形窗 							  
add wave -position insertpoint sim:/vga_colorbar_tb//*