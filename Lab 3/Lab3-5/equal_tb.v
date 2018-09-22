`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:25 09/21/2018
// Design Name:   equal
// Module Name:   U:/UB/Digital Logic and Design/Verilog/Lab3-4/equal_tb.v
// Project Name:  Lab3-4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: equal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module equal_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Instantiate the Unit Under Test (UUT)
	equal uut (
		.a(a),
		.b(b),
		.isEqual(isEqual)
	);

	initial begin

		a=8'b00000000;
		b=8'b00000000;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 8'b10000000;
		b = 8'b10000000;
		#10
		a = 8'b10100000;
		b = 8'b10100000;
		#10
		a = 8'b10110000;
		b = 8'b10110000;
		#10
		a = 8'b10010000;
		b = 8'b10000000;	

	end
	initial begin
		$monitor("isEqual a = %b & b = %b? : %b",a,b,isEqual);
	end
      
endmodule

