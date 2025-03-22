module ALU32bit(A,B,Op,Result);

	input [15:0] A,B;
	input [2:0] Op;
	output [15:0] Result;
	wire C0,C1;
	wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7;
	
	_32bit_adder g0(A,B,0,R0,C);
	_32bit_sub g2(A,B,0,R1,C1);
	_32bit_xor g1(A,B,R3);
	_32bit_and g5(A,B,R4);
	_32bit_or g6(A,B,R5);
	_32bit_slt g3(A,B,R6);
	_32bit_nor g4(A,B,R7);
	
	mux8x1 g7(R0,R1,R2,R3,R4,R5,R6,R7,Op,Result);
	
endmodule