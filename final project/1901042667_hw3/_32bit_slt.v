module _32bit_slt(A, B, Result);
	input [15:0] A, B;
	output [15:0] Result;
	wire [15:0] w;
	wire cout,cout1;
	
	_32bit_sub f(A,B,0,w,cout);
	_32bit_adder f1(16'd0,{15'd0,w[15]},16'd0,Result,cout1);

endmodule