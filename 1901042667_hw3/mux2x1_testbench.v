`define DELAY 20
module mux2x1_testbench();

	reg [15:0]  a,b;
	reg signal;
	wire [15:0] R;

	mux2x1 myMux(a,b,signal,R);
	initial begin
		signal=1'b0;
		a = 16'b0101010101010101;
		b = 16'b1010111010101011;
		#`DELAY;
		signal=1'b1;
		a = 16'b0101010101010101;
		b = 16'b1111001010111010;
		#`DELAY;
	end

	initial begin
		$monitor("time = %2d ,a=%16b,b=%16b, Selection=%1b ,Result=%16b", $time,a,b,signal,R);
	end
	
endmodule