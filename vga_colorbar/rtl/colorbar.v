`include "param.v"
module colorbar( 
    input				clk	,
    input				rst_n	,
    //vag_driver
    input               rd_req  ,         
    output	reg	[23:0]	rgb_dout //rgb565格式
);	
    //中间信号定义		 
    //中间信号定义		 
    reg		[12:0]	h_cnt       ;//行计数器
    wire            add_h_cnt   ;
    wire            end_h_cnt   ;

    reg		[10:0]	v_cnt       ;//场计数器
    wire	    	add_v_cnt   ;   
    wire	        end_v_cnt   ;

//行计数器h_cnt
    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            h_cnt <= 0;
        end 
        else if(add_h_cnt)begin 
            if(end_h_cnt)begin 
                h_cnt <= 0;
            end
            else begin 
                h_cnt <= h_cnt + 1;
            end 
        end
    end 
    assign add_h_cnt = rd_req;
    assign end_h_cnt = add_h_cnt && h_cnt == `H_ACTIVE-1;


//场计数器v_cnt
    always @(posedge clk or negedge rst_n)begin 
        if(!rst_n)begin
            v_cnt <= 0;
        end 
        else if(add_v_cnt)begin 
            if(end_v_cnt)begin 
                v_cnt <= 0;
            end
            else begin 
                v_cnt <= v_cnt + 1;
            end 
        end
    end 
    assign add_v_cnt = end_h_cnt;
    assign end_v_cnt = add_v_cnt && v_cnt == `V_ACTIVE - 1;

//rgb_dout
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
                rgb_dout <= 0;
            end 
            else if(h_cnt <=256-1 )begin 
                rgb_dout <= `RED;
            end 
            else if(h_cnt <=512-1 )begin 
                rgb_dout <= `GREEN;
            end 
            else if(h_cnt <=768 -1 )begin 
                rgb_dout <= `BULE;
            end 
            else if(h_cnt <=1024 -1)begin 
                rgb_dout <= `WHITE;
            end 
    end                   
endmodule