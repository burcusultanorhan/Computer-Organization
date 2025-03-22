module registerOperations(data, rs, rt, rd, RegWrite, clock, output1, output2);
	input[15:0] data;
	input[3:0] rs, rt, rd;
	input RegWrite, clock;
	output[15:0] output1, output2;

	reg[15:0] registers [15:0];

	assign output1 = registers[rs];
	assign output2 = registers[rt];
	
	always@(posedge clock) begin
		
		if(RegWrite) begin
			registers[rd] = data;
		end
	
	end
	
endmodule