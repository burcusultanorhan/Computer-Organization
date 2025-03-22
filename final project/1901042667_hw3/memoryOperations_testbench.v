`define DELAY 20
module memoryOperations_testbench();

	reg [15:0] address;
	reg [15:0] data;
	reg MemRead, MemWrite, clk;
	
	wire [15:0] myOutput;

	memoryOperations myMemory(MemRead, MemWrite, clk, address, data, myOutput);

	
	initial begin
	
		$readmemb("memory.txt", myMemory.myDataMemory);

		clk = 1'b1;
		address = 32'b1;
		data = 32'b11111;
		MemRead = 1;
		MemWrite = 0;
		
		#`DELAY;
		
		clk = 1'b0;
		MemWrite = 1;
		
		#`DELAY;
		
		clk = 1'b1;
		
		#`DELAY; 
		
		clk = 1'b0;
		address = 32'b10;
		data = 32'hdef0123e;
		MemRead = 1;
		MemWrite = 1;
		
		#`DELAY; 
		
		clk = 1'b1;
		MemWrite = 1;
		
		#`DELAY; 
		
		clk = 1'b0;
		address = 32'b111;
		data = 32'hcda3421c;
		MemRead = 1;
		MemWrite = 1;
		
		#`DELAY; 
		
		clk = 1'b1;
		MemWrite = 1;
		
		#`DELAY; 

		$writememb("memoryOutput.txt", myMemory.myDataMemory);

	end


	initial begin
		$monitor("time = %2d, address = %16b, data = %16b, myOutput = %16b, MemRead = %1b, MemWrite = %1b, clk = %1b", 
		$time, address, data, data, MemRead, MemWrite, clk);
	end

endmodule