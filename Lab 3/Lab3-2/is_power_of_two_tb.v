`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:38:02 09/21/2018
// Design Name:   is_power_of_2
// Module Name:   U:/UB/Digital Logic and Design/Verilog/Lab3-2/is_power_of_two_tb.v
// Project Name:  Lab3-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: is_power_of_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module is_power_of_two_tb;

	// Inputs
	reg [3:0] I;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	is_power_of_2 uut (
		.I(I), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		I=4'b1000;
		#10
		I=4'b0010;
		#10
		I=4'b1010;
		#10
		I=4'b1001;

	end
	initial begin
		$monitor("%b is a power of 2: %b",I,Y);
	end
      
endmodule

