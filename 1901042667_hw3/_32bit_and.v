module _32bit_and(A,B,F);
	input [15:0] A,B;
	output [15:0] F;

	and g15(F[15],A[15],B[15]);
	and g14(F[14],A[14],B[14]);
	and g13(F[13],A[13],B[13]);	
	and g12(F[12],A[12],B[12]);
	and g11(F[11],A[11],B[11]);
	and g10(F[10],A[10],B[10]);
	and g9(F[9],A[9],B[9]);	
	and g8(F[8],A[8],B[8]);
	and g7(F[7],A[7],B[7]);
	and g6(F[6],A[6],B[6]);
	and g5(F[5],A[5],B[5]);	
	and g4(F[4],A[4],B[4]);
	and g3(F[3],A[3],B[3]);
	and g2(F[2],A[2],B[2]);
	and g1(F[1],A[1],B[1]);	
	and g0(F[0],A[0],B[0]);
	
endmodule