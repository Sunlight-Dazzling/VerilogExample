module seg_led_static_top(
	//输入信号定义
	input sys_clk,//系统时钟信号
	input sys_rst_n,//系统复位信号
	
	//输出信号定义
	//output sel,//数码管显示控制（位选信号）
	output [6:0] sel_led//数码管显示数据（段选信号）
	
);

//参数数据类型的数据定义
//时间的计算：填写的数值=需要的时间/（20ns）
parameter TIME_SHOW=25'd25000_000;//每个数字显示的时间
//线网类型数据定义
//wire add_flag;//增1标志信号
reg add_flag;
//*************************
//     main code
//*************************
//数码管静态显示模块例化
seg_led_static u_seg_led_static(
	.clk (sys_clk),
	.rst_n (sys_rst_n),
	
	//.sel (sel),
	.sel_led (sel_led),
	.add_flag (add_flag)
);
//计时模块例化
time_count #(.MAX_NUM(TIME_SHOW)
) u_time_count(
	.clk (sys_clk),
	.rst_n (sys_rst_n),
	
	.flag (add_flag)
);

endmodule