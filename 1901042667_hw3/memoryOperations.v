module memoryOperations(memRead, memWrite, clk, aluResult, myData, myOutput);

	input memRead, memWrite, clk;
	input[15:0] aluResult, myData;
	output[15:0] myOutput;
	
	
	reg[15:0] myDataMemory [65536:0];
	
	assign myOutput = myDataMemory[aluResult];
	always@(posedge clk) begin
		if(memWrite) begin
			myDataMemory[aluResult] = myData;
		end
	end
	

endmodule