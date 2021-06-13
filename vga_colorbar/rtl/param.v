`define  RED        24'b11111111_00000000_00000000
`define  GREEN      24'b00000000_11111111_00000000
`define  BULE       24'b00000000_00000000_11111111
`define  WHITE      24'b00000000_00000000_00000000

`define  RESOLUTION 640*480  //显示分辨率


//VGA参数   
`define H_SYNC      136     //行同步
`define H_BACK      160     //行同步
`define H_ACTIVE    1024    //行有效数据
`define H_FRONT     24      //行显示前沿  
`define H_TOTAL     1344    //行扫描周期

`define V_SYNC      6       //场同步
`define V_BACK      29      ///场显示后沿
`define V_ACTIVE    768     //场有效数据
`define V_FRONT     3       //场显示前沿
`define V_TOTAL     806     //场扫描周期                         
    