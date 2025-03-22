module full_adder(A, B, Cin, Sum, Cout);
	input A, B, Cin;
	output Sum, Cout;
	wire C, carryOut_1, carryOut_2;

	half_adder sum_1(A, B, C, carryOut_1);
	half_adder sum_2(C, Cin, Sum, carryOut_2);

	or totalCarryOut(Cout, carryOut_2, carryOut_1);

endmodule