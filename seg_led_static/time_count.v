module time_count(
	//系统时钟
	input clk,//时钟信号
	input rst_n,//复位信号
	
	//用户接口
	output reg flag//计满标志

);

//参数定义
parameter MAX_NUM=25000_000;//计数最大计数（0.5s）

reg [24:0] counter;//时钟分频计数器


//********************
//         main code
//********************

//计数,每计数0.5s，改变flag的值为1,并把计数器置为0
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		flag <= 1'b0;
		counter <= 24'b0;
	end
	else if(counter < MAX_NUM - 1'b1) begin
		flag <= 1'b0;
		counter <= counter + 1'b1;
	end
	else begin
		flag <= 1'b1;
		counter <= 24'b0;
	end
end

endmodule
	





