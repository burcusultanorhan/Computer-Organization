module instructionMemory(ProgramCounterAddress, clk, theInstruction);
	
	input [9:0] ProgramCounterAddress;
	input clk;
	output reg[31:0] theInstruction;
	
	reg [31:0] instructions [1024:0];

	always@(posedge clk) begin
		theInstruction = instructions[ProgramCounterAddress];
	end


endmodule