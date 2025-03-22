`define DELAY 20
module ALU32bit_testbench(); 
	reg [15:0] a,b;
	reg [2:0] op;
	wire [15:0] sum;

	ALU32bit g1(a,b,op,sum);
	initial begin
	a = 16'b0000000000000011; b = 16'b0000000000000001; op = 000;
	#`DELAY;
	a = 16'b1111100000000011; b = 16'b1111111111111111; op = 001;
	#`DELAY;
	a = 16'b0000000000000011; b = 16'b0000000000000001; op = 011;
	#`DELAY;
	a = 16'b0000000000000000; b = 16'b0000000000000001; op = 100;
	#`DELAY;
	a = 16'b1001010100000000; b = 16'b1111110010100001; op = 101;
	#`DELAY;
	a = 16'b1001010100000000; b = 16'b1111110010100001; op = 110;
	#`DELAY;
	a = 16'b1001010100000000; b = 16'b1111110010100001; op = 111;
	#`DELAY;
	end
	 
	 
	initial
	begin
	$monitor("time = %2d, a =%16b, b=%16b, op=%3b, sum=%16b", $time, a, b, op, sum);
	end
 
endmodule