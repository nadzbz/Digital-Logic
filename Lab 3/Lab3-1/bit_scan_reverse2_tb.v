`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:58:07 09/21/2018
// Design Name:   bit_scan_reverse
// Module Name:   U:/UB/Digital Logic and Design/Verilog/Lab3-1/bit_scan_reverse2_tb.v
// Project Name:  Lab3-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_scan_reverse
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit_scan_reverse2_tb;

	// Inputs
	reg [0:3] fourBitInput;

	// Outputs
	wire [1:0] Y;

	// Instantiate the Unit Under Test (UUT)
	bit_scan_reverse uut (
		.fourBitInput(fourBitInput), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		fourBitInput = 0;

		// Wait 100 ns for global reset to finish
		#10 fourBitInput = 4'b0000;
		#10 fourBitInput = 4'b1000;
		#10 fourBitInput = 4'b0100;
		#10 fourBitInput = 4'b0010;
		#10 fourBitInput = 4'b0001;
		#10 fourBitInput = 4'b1010;
		#10 fourBitInput = 4'b1111;
	end 
	initial begin
		$monitor("bit_scan_reverse(4'b%b) = %d ", fourBitInput,Y); 
	end
      
endmodule

