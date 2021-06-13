module uart(
	input clk,
	input reset_n,
	//uart的接收和发送端
	input rxd,//接收
	output txd//发送
);

system_qsys u0 (
        .clk_clk       (clk),       //   clk.clk
        .reset_reset_n (reset_n), // reset.reset_n
        .uart_rxd      (rxd),      //  uart.rxd
        .uart_txd      (txd)       //      .txd
    );

endmodule