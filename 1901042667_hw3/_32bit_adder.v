module _32bit_adder (A,B,Cin,Sum,Cout);
	input [15:0] A,B;
	input Cin;
	output Cout;
	output [15:0] Sum;
	wire C1,C2,C3;

	_8bit_adder F0(A[7:0],B[7:0],Cin,Sum[7:0],C1),
					F1(A[15:8],B[15:8],C1,Sum[15:8],Cout);

endmodule