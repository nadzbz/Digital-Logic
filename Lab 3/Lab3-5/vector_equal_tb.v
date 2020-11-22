`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:09:52 09/22/2018
// Design Name:   vector_equal
// Module Name:   U:/UB/Digital Logic and Design/Verilog/Lab3-5/vector_equal_tb.v
// Project Name:  Lab3-4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vector_equal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vector_equal_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	
	//Ouputs
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	vector_equal uut (
		.a(a),
		.b(b),
		.z(z)
	);

	initial begin
		// Add stimulus here
		a = 32'b10101010101110111100110011011101;
		b = 32'b10101010000100011100110011011101;
		#10
		a = 32'b10101010101110111100110011011101;
		b = 32'b00000000000100011100110011011101;
		#10
		a = 32'b10101010101110111100110000000000;
		b = 32'b00000000000100011100110011011101;
	end
   initial begin
		$monitor("vector_equal(0x%h,0x%h) = 0b%b",a,b,z);
	end
endmodule

