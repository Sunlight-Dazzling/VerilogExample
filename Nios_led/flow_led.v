module hello_world(
	input clk,
	input reset_n,
	output  [3:0] led
);

system_qsys u0 (
        .clk_clk       (clk),       //   clk.clk
        .reset_reset_n (reset_n), // reset.reset_n
        .led_export    (led)     //   led.export
    );


endmodule