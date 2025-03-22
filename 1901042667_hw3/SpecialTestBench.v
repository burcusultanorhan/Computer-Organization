`define DELAY 20
module SpecialTestBench();

	reg clk;
	
	MIPS theMIPS(clk);
	
	initial clk = 0;
	
	initial begin
		$readmemb("registers.txt", theMIPS.myRegister.registers);
		$readmemb("memory.txt", theMIPS.myMemory.myDataMemory);
		$readmemb("specialInstruction.txt", theMIPS.myInstruction.instructions);
		
		clk = ~clk; #`DELAY;
		clk = ~clk; #`DELAY;	
		clk = ~clk; #`DELAY;
		
		$writememb("registersOutput.txt", theMIPS.myRegister.registers);
		$writememb("memoryOutput.txt", theMIPS.myMemory.myDataMemory);
	end

endmodule