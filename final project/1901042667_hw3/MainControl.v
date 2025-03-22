module MainControl(OpCode, regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump, ALUOp);
	
	input[5:0] OpCode;
	output regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump;
	output[2:0] ALUOp;
	
	wire rType, addi, andi, ori, lw, sw, beq, bne, slti, j, jal;
	
	wire[5:0] Notopcode;
	
	genvar i;
	generate 
		for(i=0; i<6; i=i+1)
		begin : andgen
			not n0(Notopcode[i], OpCode[i]);
		end
	endgenerate
	

	and a0(rType, Notopcode[5], Notopcode[4], Notopcode[3], Notopcode[2], Notopcode[1], Notopcode[0]); 
	and a1(addi, Notopcode[5], Notopcode[4], OpCode[3], Notopcode[2], Notopcode[1], Notopcode[0]);  
	and a2(andi, Notopcode[5], Notopcode[4], OpCode[3], OpCode[2], Notopcode[1], Notopcode[0]);	
	and a3(ori, Notopcode[5], Notopcode[4], OpCode[3], OpCode[2], Notopcode[1], OpCode[0]);     
	and a4(lw, OpCode[5], Notopcode[4], Notopcode[3], Notopcode[2], OpCode[1], OpCode[0]);
	and a5(sw, OpCode[5], Notopcode[4], OpCode[3], Notopcode[2], OpCode[1], OpCode[0]);
	and a6(beq, Notopcode[5], Notopcode[4], Notopcode[3], OpCode[2], Notopcode[1], Notopcode[0]); 
	and a7(bne, Notopcode[5], Notopcode[4], Notopcode[3], OpCode[2], Notopcode[1], OpCode[0]);     
	and a8(slti, Notopcode[5], Notopcode[4], OpCode[3], Notopcode[2], Notopcode[1], Notopcode[0]);
	and a9(j, Notopcode[5], Notopcode[4], Notopcode[3], Notopcode[2], OpCode[1], Notopcode[0]);
	and a10(jal, Notopcode[5], Notopcode[4], Notopcode[3], Notopcode[2], OpCode[1], OpCode[0]);	

	or o0(regDst, 0, rType);
	or o1(ALUsrc, 0, addi, andi, ori, lw, sw, slti);
	or o2(MemtoReg, 0, lw);
	or o3(RegWrite, 0, rType, addi, andi, ori, lw, slti);
	or o4(MemRead, 0, lw);
	or o5(MemWrite, 0, sw);
	or o6(Branch, 0, beq);
	or o7(NotBranch, 0, bne);
	or o8(Jump, 0, j, jal);
	or o9(ALUOp[2], 0, rType, andi, ori, slti);
	or o10(ALUOp[1], 0, rType, beq, bne, slti);
	or o11(ALUOp[0], 0, rType, ori);

	
endmodule