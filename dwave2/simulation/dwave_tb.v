
`timescale 1ns / 1ns

module dwave_tb;
    reg clk,d;
    wire q;

    dwave u1(.d(d),.clk(clk),.q(q));

    initial
    begin
        clk = 1;
        d <= 0;
        forever
        begin
            #60 d <= 1;//?????? 
            #22 d <= 0;
            #2  d <= 1;
            #2  d <= 0;
            #16 d <= 0;//??16ns????????????????
        end
    end

    always #20 clk <= ~clk;//????20ns,????40ns?????
endmodule