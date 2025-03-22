module _4bit_adder (A,B,Cin,Sum,Cout);
	input [3:0] A,B;
	input Cin;
	output Cout;
	output [3:0] Sum;
	wire C1,C2,C3;  
	
	full_adder FA0(A[0], B[0], Cin, Sum[0], C1),
					FA1(A[1], B[1], C1, Sum[1], C2),
					FA2(A[2], B[2], C2, Sum[2], C3),
					FA3(A[3], B[3], C3, Sum[3], Cout);
				
endmodule