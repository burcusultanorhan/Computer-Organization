module ALUControl(ALUop, func, ALUctrl);

	input[2:0] ALUop;
	input[5:0] func;
	output[2:0] ALUctrl;
	
	wire[2:0] notALUop;
	wire[5:0] notFunc;
	wire rAnd, rOr, rSlt, andi, ori, slti, rSll, rSrl, rSub, branch;
	
	genvar i;
	generate 
		for(i=0; i<3; i=i+1)
		begin : andgen
			not a0(notALUop[i], ALUop[i]);
		end
	endgenerate
	
	genvar j;
	generate 
		for(j=0; j<6; j=j+1)
		begin : andgen1
			not(notFunc[j], func[j]);
		end
	endgenerate
	
	
	and a0(rAnd, ALUop[2], ALUop[1], ALUop[0], func[5], notFunc[4], notFunc[3], func[2], notFunc[1], notFunc[0]);
	and a1(rOr, ALUop[2], ALUop[1], ALUop[0], func[5], notFunc[4], notFunc[3], func[2], notFunc[1], func[0]);
	and a2(rSlt, ALUop[2], ALUop[1], ALUop[0], func[5], notFunc[4], func[3], notFunc[2], func[1], notFunc[0]);
	and a3(andi, ALUop[2], notALUop[1], notALUop[0]);
	and a4(ori, ALUop[2], notALUop[1], ALUop[0]);
	and a5(slti, ALUop[2], ALUop[1], notALUop[0]);
	
	or o1(ALUctrl[2], 0, rAnd, rOr, rSlt, andi, ori, slti);
	
	
	and a6(rSll, ALUop[2], ALUop[1], ALUop[0], notFunc[5], notFunc[4], notFunc[3], notFunc[2], notFunc[1], notFunc[0]);
	and a7(rSrl, ALUop[2], ALUop[1], ALUop[0], notFunc[5], notFunc[4], notFunc[3], notFunc[2], func[1], notFunc[0]);
	
	or o2(ALUctrl[1], 0, rSll, rSrl, rSlt, slti);
	
	
	and a8(rSub, ALUop[2], ALUop[1], ALUop[0], func[5], notFunc[4], notFunc[3], notFunc[2], func[1], notFunc[0]);
	and a9(branch, notALUop[2], ALUop[1], notALUop[0]);
	
	or o3(ALUctrl[0], 0, rSub, rOr, ori, branch);
	
	
endmodule