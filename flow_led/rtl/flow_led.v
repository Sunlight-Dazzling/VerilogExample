module flow_led( 
	input sys_clk , //系统时钟
	input sys_rst_n, //系统复位，低电平有效
	 
	output reg [3:0] led //4个LED灯 
	);
 
//计数器
reg [23:0] counter;

//*****************************************************
//** main code
//***************************************************** 
 
//计数器对系统时钟计数，计时0.2秒
always @(posedge sys_clk or negedge sys_rst_n) begin
	if (!sys_rst_n)
	//复位为0时，计数器归0
		counter <= 24'd0;
	else if (counter < 24'd1000_0000)
	//else if (counter < 24'd10)
	//复位为1时，计数器逐步加1
		counter <= counter + 1'b1;
	else
		counter <= 24'd0;
end

//通过移位寄存器控制IO口的高低电平，从而改变LED的显示状态
always @(posedge sys_clk or negedge sys_rst_n) begin
	if (!sys_rst_n)
	//led初始设置为0001
		led <= 4'b0001;
	else if(counter == 24'd1000_0000)
	//else if(counter == 24'd10)
	//计数器每计数完成一次，led进行一次移位操作，采用位拼接方式
		led[3:0] <= {led[2:0],led[3]};
	else
	//计数器处于计数过程，led保持原状
		led <= led;
end

endmodule