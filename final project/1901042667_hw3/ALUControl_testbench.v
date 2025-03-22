`define DELAY 20
module ALUControl_testbench();

	reg [2:0]AluOp;
	reg [5:0] func;
	wire [2:0] AluControl;

	ALUControl a0(AluOp,func,AluControl);
	initial begin
		AluOp = 3'b111;
		func = 6'b100000;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b100010;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b100100;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b100101;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b000000;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b000010;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b101010;
		#`DELAY;
		AluOp = 3'b111;
		func = 6'b001000;
		#`DELAY;
		AluOp = 3'b000;
		func = 6'b110110;
		#`DELAY;
		AluOp = 3'b100;
		func = 6'b110110;
		#`DELAY;
		AluOp = 3'b101;
		func = 6'b110110;
		#`DELAY;
		AluOp = 3'b010;
		func = 6'b110110;
		#`DELAY;
		AluOp = 3'b110;
		func = 6'b110110;
		#`DELAY;
	end

	initial begin
		$monitor("time= %2d,AluOp= %3b,func= %6b,AluControl= %3b\n",$time,AluOp,func,AluControl);
	end 

endmodule