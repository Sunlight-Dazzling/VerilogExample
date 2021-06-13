
module dwave(d,clk,q);
    input d;
    input clk;
    output q;

    reg q;

    always @ (posedge clk)//我们用正的时钟沿做它的敏感信号
    begin
        q <= d;//上升沿有效的时候，把d捕获到q
    end


endmodule

