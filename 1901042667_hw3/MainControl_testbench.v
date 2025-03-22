`define DELAY 20
module MainControl_testbench(); 

	reg [5:0] opcode;
	wire regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump;
	wire [2:0] ALUOp;

	MainControl a0(opcode, regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump, ALUOp);

	initial begin
	opcode = 6'b000000;
	#`DELAY;
	opcode = 6'b001000;
	#`DELAY;
	opcode = 6'b001100;
	#`DELAY;
	opcode = 6'b001101;
	#`DELAY;
	opcode = 6'b100011;
	#`DELAY;
	opcode = 6'b101011;
	#`DELAY;
	opcode = 6'b000100;
	#`DELAY;
	opcode = 6'b000101;
	#`DELAY;
	opcode = 6'b100011;
	#`DELAY;
	opcode = 6'b001010;
	#`DELAY;
	opcode = 6'b000011;
	#`DELAY;
	end

	initial begin
	$monitor("time= %2d,\nopcode= %6b,\nRegDst= %1b,\nALUsrc= %1b,\nMemtoReg= %1b,\nRegWrite= %1b,\nMemRead= %1b,\nMemWrite= %1b,\nBranch= %1b,\nNotBranch= %1b,\nJump= %1b,\nALUop= %3b\n",
	$time, opcode, regDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, NotBranch, Jump, ALUOp);
	end 
 
endmodule