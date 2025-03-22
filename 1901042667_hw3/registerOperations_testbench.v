`define DELAY 20
module registerOperations_testbench();

	reg [3:0] rs, rt, rd;
	wire [15:0] output1, output2;
	reg [15:0] data;
	reg RegWrite, clock;

	registerOperations myRegister(data, rs, rt, rd, RegWrite, clock, output1, output2);
		

	initial begin

		$readmemb("registers.txt", myRegister.registers);
		
		data = 16'b0000000111110000;
		rs = 4'b0001; 
		rt = 4'b0010;
		rd = 4'b0011;
		RegWrite = 1'b0;
		clock = 1'b1;
	
		#`DELAY;
		
		data = 16'b0000001111000011;
		rs = 4'b011; 
		rt = 4'b100;
		rd = 4'b011;
		RegWrite = 1'b1;
		clock = 1'b0; 
		 
		#`DELAY;

		$writememb("registersOutput.txt", myRegister.registers);

	end

	initial
	begin
		$monitor("time = %2d, clock = %1b rs = %4b, rt = %4b, output1 = %16b, output2 = %16b, rd = %3b , data = %16b, RegWrite = %1b", $time, clock, rs, 
		rt, output1, output2, rd, data, RegWrite);
	end

endmodule