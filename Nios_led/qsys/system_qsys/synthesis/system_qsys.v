// system_qsys.v

// Generated using ACDS version 13.1 162 at 2021.04.21.13:31:12

`timescale 1 ps / 1 ps
module system_qsys (
		input  wire       clk_clk,       //   clk.clk
		input  wire       reset_reset_n, // reset.reset_n
		output wire [3:0] led_export     //   led.export
	);

	wire         nios2_data_master_waitrequest;                               // mm_interconnect_0:nios2_data_master_waitrequest -> nios2:d_waitrequest
	wire  [31:0] nios2_data_master_writedata;                                 // nios2:d_writedata -> mm_interconnect_0:nios2_data_master_writedata
	wire  [15:0] nios2_data_master_address;                                   // nios2:d_address -> mm_interconnect_0:nios2_data_master_address
	wire         nios2_data_master_write;                                     // nios2:d_write -> mm_interconnect_0:nios2_data_master_write
	wire         nios2_data_master_read;                                      // nios2:d_read -> mm_interconnect_0:nios2_data_master_read
	wire  [31:0] nios2_data_master_readdata;                                  // mm_interconnect_0:nios2_data_master_readdata -> nios2:d_readdata
	wire         nios2_data_master_debugaccess;                               // nios2:jtag_debug_module_debugaccess_to_roms -> mm_interconnect_0:nios2_data_master_debugaccess
	wire         nios2_data_master_readdatavalid;                             // mm_interconnect_0:nios2_data_master_readdatavalid -> nios2:d_readdatavalid
	wire   [3:0] nios2_data_master_byteenable;                                // nios2:d_byteenable -> mm_interconnect_0:nios2_data_master_byteenable
	wire  [31:0] mm_interconnect_0_led_s1_writedata;                          // mm_interconnect_0:led_s1_writedata -> led:writedata
	wire   [1:0] mm_interconnect_0_led_s1_address;                            // mm_interconnect_0:led_s1_address -> led:address
	wire         mm_interconnect_0_led_s1_chipselect;                         // mm_interconnect_0:led_s1_chipselect -> led:chipselect
	wire         mm_interconnect_0_led_s1_write;                              // mm_interconnect_0:led_s1_write -> led:write_n
	wire  [31:0] mm_interconnect_0_led_s1_readdata;                           // led:readdata -> mm_interconnect_0:led_s1_readdata
	wire         mm_interconnect_0_nios2_jtag_debug_module_waitrequest;       // nios2:jtag_debug_module_waitrequest -> mm_interconnect_0:nios2_jtag_debug_module_waitrequest
	wire  [31:0] mm_interconnect_0_nios2_jtag_debug_module_writedata;         // mm_interconnect_0:nios2_jtag_debug_module_writedata -> nios2:jtag_debug_module_writedata
	wire   [8:0] mm_interconnect_0_nios2_jtag_debug_module_address;           // mm_interconnect_0:nios2_jtag_debug_module_address -> nios2:jtag_debug_module_address
	wire         mm_interconnect_0_nios2_jtag_debug_module_write;             // mm_interconnect_0:nios2_jtag_debug_module_write -> nios2:jtag_debug_module_write
	wire         mm_interconnect_0_nios2_jtag_debug_module_read;              // mm_interconnect_0:nios2_jtag_debug_module_read -> nios2:jtag_debug_module_read
	wire  [31:0] mm_interconnect_0_nios2_jtag_debug_module_readdata;          // nios2:jtag_debug_module_readdata -> mm_interconnect_0:nios2_jtag_debug_module_readdata
	wire         mm_interconnect_0_nios2_jtag_debug_module_debugaccess;       // mm_interconnect_0:nios2_jtag_debug_module_debugaccess -> nios2:jtag_debug_module_debugaccess
	wire   [3:0] mm_interconnect_0_nios2_jtag_debug_module_byteenable;        // mm_interconnect_0:nios2_jtag_debug_module_byteenable -> nios2:jtag_debug_module_byteenable
	wire   [0:0] mm_interconnect_0_sysid_qsys_0_control_slave_address;        // mm_interconnect_0:sysid_qsys_0_control_slave_address -> sysid_qsys_0:address
	wire  [31:0] mm_interconnect_0_sysid_qsys_0_control_slave_readdata;       // sysid_qsys_0:readdata -> mm_interconnect_0:sysid_qsys_0_control_slave_readdata
	wire         nios2_instruction_master_waitrequest;                        // mm_interconnect_0:nios2_instruction_master_waitrequest -> nios2:i_waitrequest
	wire  [15:0] nios2_instruction_master_address;                            // nios2:i_address -> mm_interconnect_0:nios2_instruction_master_address
	wire         nios2_instruction_master_read;                               // nios2:i_read -> mm_interconnect_0:nios2_instruction_master_read
	wire  [31:0] nios2_instruction_master_readdata;                           // mm_interconnect_0:nios2_instruction_master_readdata -> nios2:i_readdata
	wire         nios2_instruction_master_readdatavalid;                      // mm_interconnect_0:nios2_instruction_master_readdatavalid -> nios2:i_readdatavalid
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest; // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;    // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire  [31:0] mm_interconnect_0_ram_s1_writedata;                          // mm_interconnect_0:ram_s1_writedata -> ram:writedata
	wire  [11:0] mm_interconnect_0_ram_s1_address;                            // mm_interconnect_0:ram_s1_address -> ram:address
	wire         mm_interconnect_0_ram_s1_chipselect;                         // mm_interconnect_0:ram_s1_chipselect -> ram:chipselect
	wire         mm_interconnect_0_ram_s1_clken;                              // mm_interconnect_0:ram_s1_clken -> ram:clken
	wire         mm_interconnect_0_ram_s1_write;                              // mm_interconnect_0:ram_s1_write -> ram:write
	wire  [31:0] mm_interconnect_0_ram_s1_readdata;                           // ram:readdata -> mm_interconnect_0:ram_s1_readdata
	wire   [3:0] mm_interconnect_0_ram_s1_byteenable;                         // mm_interconnect_0:ram_s1_byteenable -> ram:byteenable
	wire         irq_mapper_receiver0_irq;                                    // jtag_uart_0:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_d_irq_irq;                                             // irq_mapper:sender_irq -> nios2:d_irq
	wire         rst_controller_reset_out_reset;                              // rst_controller:reset_out -> [irq_mapper:reset, jtag_uart_0:rst_n, led:reset_n, mm_interconnect_0:nios2_reset_n_reset_bridge_in_reset_reset, nios2:reset_n, ram:reset, rst_translator:in_reset, sysid_qsys_0:reset_n]
	wire         rst_controller_reset_out_reset_req;                          // rst_controller:reset_req -> [nios2:reset_req, ram:reset_req, rst_translator:reset_req_in]
	wire         nios2_jtag_debug_module_reset_reset;                         // nios2:jtag_debug_module_resetrequest -> rst_controller:reset_in1

	system_qsys_nios2 nios2 (
		.clk                                   (clk_clk),                                               //                       clk.clk
		.reset_n                               (~rst_controller_reset_out_reset),                       //                   reset_n.reset_n
		.reset_req                             (rst_controller_reset_out_reset_req),                    //                          .reset_req
		.d_address                             (nios2_data_master_address),                             //               data_master.address
		.d_byteenable                          (nios2_data_master_byteenable),                          //                          .byteenable
		.d_read                                (nios2_data_master_read),                                //                          .read
		.d_readdata                            (nios2_data_master_readdata),                            //                          .readdata
		.d_waitrequest                         (nios2_data_master_waitrequest),                         //                          .waitrequest
		.d_write                               (nios2_data_master_write),                               //                          .write
		.d_writedata                           (nios2_data_master_writedata),                           //                          .writedata
		.d_readdatavalid                       (nios2_data_master_readdatavalid),                       //                          .readdatavalid
		.jtag_debug_module_debugaccess_to_roms (nios2_data_master_debugaccess),                         //                          .debugaccess
		.i_address                             (nios2_instruction_master_address),                      //        instruction_master.address
		.i_read                                (nios2_instruction_master_read),                         //                          .read
		.i_readdata                            (nios2_instruction_master_readdata),                     //                          .readdata
		.i_waitrequest                         (nios2_instruction_master_waitrequest),                  //                          .waitrequest
		.i_readdatavalid                       (nios2_instruction_master_readdatavalid),                //                          .readdatavalid
		.d_irq                                 (nios2_d_irq_irq),                                       //                     d_irq.irq
		.jtag_debug_module_resetrequest        (nios2_jtag_debug_module_reset_reset),                   //   jtag_debug_module_reset.reset
		.jtag_debug_module_address             (mm_interconnect_0_nios2_jtag_debug_module_address),     //         jtag_debug_module.address
		.jtag_debug_module_byteenable          (mm_interconnect_0_nios2_jtag_debug_module_byteenable),  //                          .byteenable
		.jtag_debug_module_debugaccess         (mm_interconnect_0_nios2_jtag_debug_module_debugaccess), //                          .debugaccess
		.jtag_debug_module_read                (mm_interconnect_0_nios2_jtag_debug_module_read),        //                          .read
		.jtag_debug_module_readdata            (mm_interconnect_0_nios2_jtag_debug_module_readdata),    //                          .readdata
		.jtag_debug_module_waitrequest         (mm_interconnect_0_nios2_jtag_debug_module_waitrequest), //                          .waitrequest
		.jtag_debug_module_write               (mm_interconnect_0_nios2_jtag_debug_module_write),       //                          .write
		.jtag_debug_module_writedata           (mm_interconnect_0_nios2_jtag_debug_module_writedata),   //                          .writedata
		.no_ci_readra                          ()                                                       // custom_instruction_master.readra
	);

	system_qsys_ram ram (
		.clk        (clk_clk),                             //   clk1.clk
		.address    (mm_interconnect_0_ram_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_ram_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_ram_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_ram_s1_write),      //       .write
		.readdata   (mm_interconnect_0_ram_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_ram_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_ram_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),      // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req)   //       .reset_req
	);

	system_qsys_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                             //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                     //               irq.irq
	);

	system_qsys_sysid_qsys_0 sysid_qsys_0 (
		.clock    (clk_clk),                                               //           clk.clk
		.reset_n  (~rst_controller_reset_out_reset),                       //         reset.reset_n
		.readdata (mm_interconnect_0_sysid_qsys_0_control_slave_readdata), // control_slave.readdata
		.address  (mm_interconnect_0_sysid_qsys_0_control_slave_address)   //              .address
	);

	system_qsys_led led (
		.clk        (clk_clk),                             //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_led_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_led_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_led_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_led_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_led_s1_readdata),   //                    .readdata
		.out_port   (led_export)                           // external_connection.export
	);

	system_qsys_mm_interconnect_0 mm_interconnect_0 (
		.clk_clk_clk                               (clk_clk),                                                     //                             clk_clk.clk
		.nios2_reset_n_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                              // nios2_reset_n_reset_bridge_in_reset.reset
		.nios2_data_master_address                 (nios2_data_master_address),                                   //                   nios2_data_master.address
		.nios2_data_master_waitrequest             (nios2_data_master_waitrequest),                               //                                    .waitrequest
		.nios2_data_master_byteenable              (nios2_data_master_byteenable),                                //                                    .byteenable
		.nios2_data_master_read                    (nios2_data_master_read),                                      //                                    .read
		.nios2_data_master_readdata                (nios2_data_master_readdata),                                  //                                    .readdata
		.nios2_data_master_readdatavalid           (nios2_data_master_readdatavalid),                             //                                    .readdatavalid
		.nios2_data_master_write                   (nios2_data_master_write),                                     //                                    .write
		.nios2_data_master_writedata               (nios2_data_master_writedata),                                 //                                    .writedata
		.nios2_data_master_debugaccess             (nios2_data_master_debugaccess),                               //                                    .debugaccess
		.nios2_instruction_master_address          (nios2_instruction_master_address),                            //            nios2_instruction_master.address
		.nios2_instruction_master_waitrequest      (nios2_instruction_master_waitrequest),                        //                                    .waitrequest
		.nios2_instruction_master_read             (nios2_instruction_master_read),                               //                                    .read
		.nios2_instruction_master_readdata         (nios2_instruction_master_readdata),                           //                                    .readdata
		.nios2_instruction_master_readdatavalid    (nios2_instruction_master_readdatavalid),                      //                                    .readdatavalid
		.jtag_uart_0_avalon_jtag_slave_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //       jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write       (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),       //                                    .write
		.jtag_uart_0_avalon_jtag_slave_read        (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),        //                                    .read
		.jtag_uart_0_avalon_jtag_slave_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                                    .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                                    .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                                    .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  //                                    .chipselect
		.led_s1_address                            (mm_interconnect_0_led_s1_address),                            //                              led_s1.address
		.led_s1_write                              (mm_interconnect_0_led_s1_write),                              //                                    .write
		.led_s1_readdata                           (mm_interconnect_0_led_s1_readdata),                           //                                    .readdata
		.led_s1_writedata                          (mm_interconnect_0_led_s1_writedata),                          //                                    .writedata
		.led_s1_chipselect                         (mm_interconnect_0_led_s1_chipselect),                         //                                    .chipselect
		.nios2_jtag_debug_module_address           (mm_interconnect_0_nios2_jtag_debug_module_address),           //             nios2_jtag_debug_module.address
		.nios2_jtag_debug_module_write             (mm_interconnect_0_nios2_jtag_debug_module_write),             //                                    .write
		.nios2_jtag_debug_module_read              (mm_interconnect_0_nios2_jtag_debug_module_read),              //                                    .read
		.nios2_jtag_debug_module_readdata          (mm_interconnect_0_nios2_jtag_debug_module_readdata),          //                                    .readdata
		.nios2_jtag_debug_module_writedata         (mm_interconnect_0_nios2_jtag_debug_module_writedata),         //                                    .writedata
		.nios2_jtag_debug_module_byteenable        (mm_interconnect_0_nios2_jtag_debug_module_byteenable),        //                                    .byteenable
		.nios2_jtag_debug_module_waitrequest       (mm_interconnect_0_nios2_jtag_debug_module_waitrequest),       //                                    .waitrequest
		.nios2_jtag_debug_module_debugaccess       (mm_interconnect_0_nios2_jtag_debug_module_debugaccess),       //                                    .debugaccess
		.ram_s1_address                            (mm_interconnect_0_ram_s1_address),                            //                              ram_s1.address
		.ram_s1_write                              (mm_interconnect_0_ram_s1_write),                              //                                    .write
		.ram_s1_readdata                           (mm_interconnect_0_ram_s1_readdata),                           //                                    .readdata
		.ram_s1_writedata                          (mm_interconnect_0_ram_s1_writedata),                          //                                    .writedata
		.ram_s1_byteenable                         (mm_interconnect_0_ram_s1_byteenable),                         //                                    .byteenable
		.ram_s1_chipselect                         (mm_interconnect_0_ram_s1_chipselect),                         //                                    .chipselect
		.ram_s1_clken                              (mm_interconnect_0_ram_s1_clken),                              //                                    .clken
		.sysid_qsys_0_control_slave_address        (mm_interconnect_0_sysid_qsys_0_control_slave_address),        //          sysid_qsys_0_control_slave.address
		.sysid_qsys_0_control_slave_readdata       (mm_interconnect_0_sysid_qsys_0_control_slave_readdata)        //                                    .readdata
	);

	system_qsys_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2_d_irq_irq)                 //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                      // reset_in0.reset
		.reset_in1      (nios2_jtag_debug_module_reset_reset), // reset_in1.reset
		.clk            (clk_clk),                             //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),      // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req),  //          .reset_req
		.reset_req_in0  (1'b0),                                // (terminated)
		.reset_req_in1  (1'b0),                                // (terminated)
		.reset_in2      (1'b0),                                // (terminated)
		.reset_req_in2  (1'b0),                                // (terminated)
		.reset_in3      (1'b0),                                // (terminated)
		.reset_req_in3  (1'b0),                                // (terminated)
		.reset_in4      (1'b0),                                // (terminated)
		.reset_req_in4  (1'b0),                                // (terminated)
		.reset_in5      (1'b0),                                // (terminated)
		.reset_req_in5  (1'b0),                                // (terminated)
		.reset_in6      (1'b0),                                // (terminated)
		.reset_req_in6  (1'b0),                                // (terminated)
		.reset_in7      (1'b0),                                // (terminated)
		.reset_req_in7  (1'b0),                                // (terminated)
		.reset_in8      (1'b0),                                // (terminated)
		.reset_req_in8  (1'b0),                                // (terminated)
		.reset_in9      (1'b0),                                // (terminated)
		.reset_req_in9  (1'b0),                                // (terminated)
		.reset_in10     (1'b0),                                // (terminated)
		.reset_req_in10 (1'b0),                                // (terminated)
		.reset_in11     (1'b0),                                // (terminated)
		.reset_req_in11 (1'b0),                                // (terminated)
		.reset_in12     (1'b0),                                // (terminated)
		.reset_req_in12 (1'b0),                                // (terminated)
		.reset_in13     (1'b0),                                // (terminated)
		.reset_req_in13 (1'b0),                                // (terminated)
		.reset_in14     (1'b0),                                // (terminated)
		.reset_req_in14 (1'b0),                                // (terminated)
		.reset_in15     (1'b0),                                // (terminated)
		.reset_req_in15 (1'b0)                                 // (terminated)
	);

endmodule
