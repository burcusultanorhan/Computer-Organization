`define DELAY 20
module MIPS_testbench();

	reg clk;
	
	MIPS myMIPS(clk);
	
	initial clk = 0;
	
	initial begin
		$readmemb("registers.txt", myMIPS.myRegister.registers);
		$readmemb("memory.txt", myMIPS.myMemory.myDataMemory);
		$readmemb("instructionMemory.txt", myMIPS.myInstruction.instructions);
		
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;	
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;
		
		$writememb("registersOutput.txt", myMIPS.myRegister.registers);
		$writememb("memoryOutput.txt", myMIPS.myMemory.myDataMemory);
		
	end
	
	initial begin
	$monitor("time= %2d, clock= %1b, PC= %10b, instruction= %32b,\nopcode= %6b, rs= %4b, rt= %4b, rd= %4b, func= %6b, imm= %16b\ndata1= %16b, data2= %16b,\nwritten data= %16b,\nALUop= %3b, ALUcontrol= %3b, ALUresult= %16b, Destination result = %16b\nRegDst= %1b, ALUsrc= %1b, MemtoReg= %1b, RegWrite= %1b,MemRead= %1b, MemWrite= %1b, Branch= %1b, NotBranch= %1b, Jump= %1b\n\n",
	$time, clk, myMIPS.programCounter, myMIPS.instruction, myMIPS.instruction[31:26], myMIPS.instruction[25:22], myMIPS.instruction[21:18], myMIPS.instruction[17:14], myMIPS.instruction[7:4], myMIPS.instruction[17:2],
	myMIPS.data1, myMIPS.data2, myMIPS.writtenData, myMIPS.ALUOp, myMIPS.ALUctrl, myMIPS.result, myMIPS.correctSource, myMIPS.regDst, myMIPS.ALUsrc, myMIPS.MemtoReg, myMIPS.RegWrite, myMIPS.MemRead, myMIPS.MemWrite, myMIPS.Branch, myMIPS.NotBranch, myMIPS.Jump);
	end

		
endmodule