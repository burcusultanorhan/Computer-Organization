module _32bit_adder (A,B,Cin,Sum,Cout);
	input [31:0] A,B;
	input Cin;
	output Cout;
	output [31:0] Sum;
	wire C1,C2,C3;

	_8bit_adder F0(A[7:0],B[7:0],Cin,Sum[7:0],C1),
					F1(A[15:8],B[15:8],C1,Sum[15:8],C2),
					F2(A[23:16],B[23:16],C2,Sum[23:16],C3),
					F3(A[31:24],B[31:24],C3,Sum[31:24],Cout);
endmodule