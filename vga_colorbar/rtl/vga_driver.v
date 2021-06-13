`include "param.v"
module vga_driver( 
    input				clk          ,
    input				rst_n	     ,

    //colorbar
    input		[23:0]	rgb_din		 ,
    output  wire     rd_req          ,

   

    //VGA
    output	reg	[23:0]	vga_rgb_dout	,
    output	reg	    	h_sync          ,
    output	reg	    	v_sync          

);								   
    //中间信号定义		 
    reg		[10:0]	vga_h_cnt           ;  //行扫描周期
    wire            add_vga_h_cnt       ;
    wire            end_vga_h_cnt       ;

    reg		[9:0]	vga_v_cnt           ;  //场扫描周期
    wire            add_vga_v_cnt       ;
    wire            end_vga_v_cnt       ;   

    reg	            h_sync_r0           ;
    reg	            v_sync_r0           ;
    reg	            h_sync_r1           ;
    reg	            v_sync_r1           ;
    wire            h_vld               ; //行有效数据
    wire            v_vld               ; //场有效数据

    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            vga_h_cnt <= 0;
        end 
        else if(add_vga_h_cnt)begin 
            if(end_vga_h_cnt)begin 
                vga_h_cnt <= 0;
            end
            else begin 
                vga_h_cnt <= vga_h_cnt + 1;
            end 
        end
    end 
    assign add_vga_h_cnt = 1'b1;
    assign end_vga_h_cnt = add_vga_h_cnt && vga_h_cnt == `H_TOTAL-1;

    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            vga_v_cnt <= 0;
        end 
        else if(add_vga_v_cnt)begin 
            if(end_vga_v_cnt)begin 
                vga_v_cnt <= 0;
            end
            else begin 
                vga_v_cnt <= vga_v_cnt + 1;
            end 
        end
    end 
    assign add_vga_v_cnt = end_vga_h_cnt;
    assign end_vga_v_cnt = add_vga_v_cnt && vga_v_cnt == `V_TOTAL -1 ;

    assign h_vld = (vga_h_cnt >= (`H_SYNC + `H_BACK)) && (vga_h_cnt < (`H_TOTAL - `H_FRONT));
    assign v_vld = (vga_v_cnt >= (`V_SYNC + `V_BACK)) && (vga_v_cnt < (`V_TOTAL - `V_FRONT));

//rd_req
    assign rd_req = (h_vld & v_vld)?1'b1:1'b0;
    // always @(posedge clk or negedge rst_n)begin 
    //         if(!rst_n)begin
    //             rd_req <= 1'b0;
    //         end 
    //         else if(h_vld && v_vld)begin 
    //             rd_req <= 1'b1;
    //         end 
    //         else begin 
    //             rd_req <= 1'b0 ;
    //         end 
    // end

//vga_rgb_dout
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
                vga_rgb_dout <= 0;
            end 
            else begin 
                vga_rgb_dout <= rgb_din;
            end 
    end
    // assign  vga_rgb_dout = rd_req ? rgb_din:16'b0;

//h_sync
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin

                h_sync_r0 <= 1'b0;
            end 
            else if(vga_h_cnt == `H_SYNC-1)begin 
                h_sync_r0 <= 1'b1;
            end 
            else if(end_vga_h_cnt)begin 
                h_sync_r0 <= 1'b0;
            end 
    end
    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            h_sync_r1 <= 1'b0;
            h_sync    <= 1'b0;
        end 
        else begin 
            h_sync_r1 <= h_sync_r0;
            h_sync    <= h_sync_r1;
        end 
    end
//v_sync
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
                v_sync_r0 <= 1'b0;
            end 
            else if(vga_v_cnt == `V_SYNC-1 && end_vga_h_cnt)begin 
                v_sync_r0 <= 1'b1;
            end 
            else if(end_vga_v_cnt)begin 
                v_sync_r0 <= 1'b0;
            end 
    end
    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            v_sync_r1 <= 1'b0;
            v_sync    <= 1'b0;
        end 
        else begin 
            v_sync_r1 <= v_sync_r0;
            v_sync    <= v_sync_r1;
        end 
    end
	 
endmodule
