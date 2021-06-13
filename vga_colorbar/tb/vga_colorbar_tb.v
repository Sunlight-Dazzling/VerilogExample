`timescale 1ns/1ps

module vga_colorbar_tb();
//激励信号定义 
reg				tb_clk  	;
reg				tb_rst_n	;

//输出信号定义	 
wire	[15:0]	tb_vga_rgb_dout	;
wire	    	tb_h_sync          ;
wire            tb_v_sync          ;

//时钟周期参数定义					        
parameter		CLOCK_CYCLE = 15;   //65Mhz 
                                          
vga_colorbar u_vga_colorbar(			      
.clk		    (tb_clk			),			      
.rst_n		    (tb_rst_n		),			      
.vga_rgb_dout	(tb_vga_rgb_dout),			      
.h_sync		    (tb_h_sync		),			      
.v_sync		    (tb_v_sync		)		      		      
);
//产生时钟							       		
initial tb_clk = 1'b0;		       		
always #(CLOCK_CYCLE/2) tb_clk = ~tb_clk;  		
                                                   
//产生激励							       		
initial  begin						       		
    tb_rst_n = 1'b0;															
    #(CLOCK_CYCLE*20);	
    #2;			            
    tb_rst_n = 1'b1;
    // #(CLOCK_CYCLE*1000);
    // $stop;							                                                         
end 									       	
endmodule	



