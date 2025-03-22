module SelectDestination(regDest, rt, rd, myDestination);

	input [3:0] rt, rd;
	input regDest;
	output [3:0] myDestination;
	
	wire [3:0] and1, and2;
	wire notRegDest;
	not not0(notRegDest, regDest);
	
	genvar i;
	generate 
		for(i=0; i<4; i=i+1)
		begin : andgen
			and a0(and1[i], rt[i], notRegDest);
			and a4(and2[i], rd[i], regDest);
			or o0(myDestination[i], and1[i], and2[i]);
		end
	endgenerate

endmodule