`define DELAY 20
module instructionMemory_testbench();

	reg [9:0] PCaddress;
	wire [31:0] instruction;
	reg clock;


	instructionMemory myMemory(PCaddress, clock, instruction);

	initial clock = 0;

	initial begin
		
		$readmemb("instructionMemory.txt", myMemory.instructions);

		clock = ~clock;
		PCaddress = 10'b0000000000;
		#`DELAY;
		clock = ~clock;
		#`DELAY;
		clock = ~clock;
		PCaddress = 10'b0000000001;
		#`DELAY;
		clock = ~clock;
		#`DELAY;
		clock = ~clock;
		PCaddress = 10'b0000000010;
		#`DELAY;

	end

	initial begin
		$monitor("time= %2d, PC address= %10b, instruction= %32b, clk= %1b", $time, PCaddress, instruction, clock);
	end

endmodule