`define DELAY 20
module SelectDestination_testbench();

	reg [3:0]  rt, rd;
	reg RegDest;
	wire [3:0] myDestination;

	SelectDestination mySelectDest(RegDest, rt, rd, myDestination);
	initial begin
		RegDest=1'b0;
		rt = 4'b0101;
		rd = 4'b1011;
		#`DELAY;
		RegDest=4'b1;
		rt = 4'b0101;
		rd = 4'b1010;
		#`DELAY;
	end

	initial begin
		$monitor("time = %2d, rt=%4b, rd=%4b, regDest=%1b , Destination=%4b", $time, rt, rd, RegDest, myDestination);
	end

endmodule