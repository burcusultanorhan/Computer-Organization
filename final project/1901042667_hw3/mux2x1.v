module mux2x1(D0,D1,S,F);
input [15:0] D0, D1;
input S;
output [15:0]F;

	
	wire [15:0]wAnd1;
	wire [15:0]wAnd2;
	wire sNot;
	
	
	not g0(sNot, S);
	
	and g1(wAnd1[0],sNot,D0[0]);
	and g2(wAnd1[1],sNot,D0[1]);
	and g3(wAnd1[2],sNot,D0[2]);
	and g4(wAnd1[3],sNot,D0[3]);
	and g5(wAnd1[4],sNot,D0[4]);
	and g6(wAnd1[5],sNot,D0[5]);
	and g7(wAnd1[6],sNot,D0[6]);
	and g8(wAnd1[7],sNot,D0[7]);
	and g9(wAnd1[8],sNot,D0[8]);
	and g10(wAnd1[9],sNot,D0[9]);
	and g11(wAnd1[10],sNot,D0[10]);
	and g12(wAnd1[11],sNot,D0[11]);
	and g13(wAnd1[12],sNot,D0[12]);
	and g14(wAnd1[13],sNot,D0[13]);
	and g15(wAnd1[14],sNot,D0[14]);
	and g16(wAnd1[15],sNot,D0[15]);
	
	
	and g01(wAnd2[0],S,D1[0]);
	and g02(wAnd2[1],S,D1[1]);
	and g03(wAnd2[2],S,D1[2]);
	and g04(wAnd2[3],S,D1[3]);
	and g05(wAnd2[4],S,D1[4]);
	and g06(wAnd2[5],S,D1[5]);
	and g07(wAnd2[6],S,D1[6]);
	and g08(wAnd2[7],S,D1[7]);
	and g09(wAnd2[8],S,D1[8]);
	and g010(wAnd2[9],S,D1[9]);
	and g011(wAnd2[10],S,D1[10]);
	and g012(wAnd2[11],S,D1[11]);
	and g013(wAnd2[12],S,D1[12]);
	and g014(wAnd2[13],S,D1[13]);
	and g015(wAnd2[14],S,D1[14]);
	and g016(wAnd2[15],S,D1[15]);

	
	_32bit_or g00(wAnd1, wAnd2, F);
	
endmodule