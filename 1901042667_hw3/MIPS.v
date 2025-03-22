module MIPS(clock);

	input clock;
	wire[31:0] instruction;
	wire[15:0] writtenData, data1, data2, result, myOutput, correctSource, finalOutput;
	reg[9:0] programCounter;
	wire[3:0] destinationRegister;
	wire[2:0] ALUOp, ALUctrl;
	wire regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump;
	initial programCounter = 10'b0;
	
	
	instructionMemory myInstruction(programCounter, clock, instruction); //done
	
	MainControl myMainControl(instruction[31:26], regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump, ALUOp); //done
	
	SelectDestination Selection1(regDest, instruction[21:18], instruction[17:14], destinationRegister); //done
	
	registerOperations myRegister(writtenData, instruction[25:22], instruction[21:18], destinationRegister, RegWrite, clock, data1, data2); //done
	
	ALUControl myALUControl(ALUOp, instruction[9:4], ALUctrl); //done
	
	mux2x1 SelectSource(data2, instruction[17:2], ALUsrc, correctSource); //done
	
	ALU32bit myALU(data1, correctSource, ALUctrl, result); //done
	
	memoryOperations myMemory(memRead, memWrite, clock, result, data2, myOutput); //done
	
	
	always @(negedge clock )begin
		programCounter <= programCounter+1'b1;
	end
	
	
endmodule