
//行为描述的方式
module full_adder(
	//输入信号，ain表示被加数，bin表示加数，cin表示低位向高位的进位
	input ain,bin,cin,
	//输出信号,cout表示向高位的进位，sum表示本位的相加和
	output reg cout,sum

);
reg s1,s2,s3;
always @(ain or bin or cin) begin
	sum=(ain^bin)^cin;
	s1=ain&cin;
	s2=bin&cin;
	s3=ain&bin;
	cout=(s1|s2)|s3;
end
endmodule

/*
//结构描述方式
module full_adder(
	//输入信号，ain表示被加数，bin表示加数，cin表示低位向高位的进位
	input ain,bin,cin,
	//输出信号,cout表示向高位的进位，sum表示本位的相加和
	output cout,sum
);
wire m1,m2,m3,m4,s;
//异或运算
xor(s,ain,bin);
xor(sum,s,cin);
//与运算
and(m1,ain,bin);
and(m2,ain,cin);
and(m3,bin,cin);
//或运算
or(m4,m1,m2);
or(cout,m4,m3);
endmodule

*/
