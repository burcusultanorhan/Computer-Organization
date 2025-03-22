module _32bit_sub (A, B, Cin, Result, Cout);
	input [15:0] A, B;
	input Cin;
	output Cout;
	output [15:0] Result;
	
	wire [15:0] _xor;
	wire [15:0] _add;
	reg [15:0] one=16'b1111_1111_1111_1111;
	reg [15:0] _one=16'b0000_0000_0000_0001;
	wire  _carryOut;
	
	
	_32bit_xor g0(one, B, _xor[15:0]);
	_32bit_adder g1(_one, _xor, Cin, _add, _carryOut);
	_32bit_adder g2(A,  _add, Cin, Result, Cout);

endmodule 