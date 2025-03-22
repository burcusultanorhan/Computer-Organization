module mux4x1(D0,D1,D2,D3,S,F);
input [15:0] D0, D1, D2, D3;
input [1:0]S;
output [15:0]F;

	wire [15:0] wMux1;
	wire [15:0] wMux2;
	mux2x1 g0(D0,D1,S[0],wMux1);
	mux2x1 g1(D2,D3,S[0],wMux2);
	mux2x1 g2(wMux1,wMux2,S[1],F);


endmodule 