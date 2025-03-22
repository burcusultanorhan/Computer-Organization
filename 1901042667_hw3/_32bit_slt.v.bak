module _32bit_slt(A, B, Result);
	input [31:0] A, B;
	output [31:0] Result;
	wire [31:0] w;
	wire cout,cout1;
	
	_32bit_sub f(A,B,0,w,cout);
	_32bit_adder f1(32'd0,{31'd0,w[31]},32'd0,Result,cout1);

endmodule