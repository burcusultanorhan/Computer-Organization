module half_adder(A, B, Sum, Cout);
	input A, B;
	output Sum, Cout;

	xor totalSum(Sum, A, B);
	and totalCarry(Cout, A, B);

endmodule 