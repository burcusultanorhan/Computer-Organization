module _32bit_or(A,B,F);
	input [15:0] A,B;
	output [15:0] F;

	or g15(F[15],A[15],B[15]);
	or g14(F[14],A[14],B[14]);
	or g13(F[13],A[13],B[13]);	
	or g12(F[12],A[12],B[12]);
	or g11(F[11],A[11],B[11]);
	or g10(F[10],A[10],B[10]);
	or g9(F[9],A[9],B[9]);	
	or g8(F[8],A[8],B[8]);
	or g7(F[7],A[7],B[7]);
	or g6(F[6],A[6],B[6]);
	or g5(F[5],A[5],B[5]);	
	or g4(F[4],A[4],B[4]);
	or g3(F[3],A[3],B[3]);
	or g2(F[2],A[2],B[2]);
	or g1(F[1],A[1],B[1]);	
	or g0(F[0],A[0],B[0]);
	
endmodule 