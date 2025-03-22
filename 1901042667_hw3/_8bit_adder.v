module _8bit_adder (A,B,Cin,Sum,Cout);
	input [7:0] A,B;
	input Cin;
	output Cout;
	output [7:0] Sum;
	wire C1;
	 
	_4bit_adder A0(A[3:0],B[3:0],Cin,Sum[3:0],C1),
					A1(A[7:4],B[7:4],C1,Sum[7:4],Cout);
				
endmodule 