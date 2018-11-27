`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:23 11/26/2018
// Design Name:   alu
// Module Name:   U:/UB/Digital Logic and Design/Verilog/ALU/alu_testbench.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_testbench;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [1:0] ALUControl;

	// Outputs
	wire [31:0] Result;
	wire [3:0] ALUFlags;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.ALUControl(ALUControl), 
		.Result(Result), 
		.ALUFlags(ALUFlags)
	);

	initial begin
		// Initialize Inputs

		
		
		// 0 TEST
		#100;
		
		a = 32'h00000000;
		b = 32'h00000000;
		ALUControl = 0;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		
		a = 32'h00000000;
		b = 32'hFFFFFFFF;
		ALUControl = 0;
		
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		
		#100
		
		a = 32'h00000001;
		b = 32'hFFFFFFFF;
		ALUControl = 0;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h000000FF;
		b = 32'h00000001;
		ALUControl = 0;
		
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		//1 TEST
		#100
		a = 32'h00000000;
		b = 32'h00000000;
		ALUControl = 1;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000000;
		b = 32'hFFFFFFFF;
		ALUControl = 1;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000001;
		b = 32'h00000001;
		ALUControl = 1;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000100;
		b = 32'h00000001;
		ALUControl = 1;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
//AND Test
		#100
		a = 32'hFFFFFFFF;
		b = 32'hFFFFFFFF;
		ALUControl = 2'b10;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		
		#100
		a = 32'hFFFFFFFF;
		b = 32'h12345678;
		ALUControl = 2'b10;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h12345678;
		b = 32'h87654321;
		ALUControl = 2'b10;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000000;
		b = 32'hFFFFFFFF;
		ALUControl = 2'b10;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
//OR Test
		a = 32'hFFFFFFFF;
		b = 32'hFFFFFFFF;
		ALUControl = 2'b11;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h12345678;
		b = 32'h87654321;
		ALUControl = 2'b11;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000000;
		b = 32'hFFFFFFFF;
		ALUControl = 2'b11;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		#100
		a = 32'h00000000;
		b = 32'h00000000;
		ALUControl = 2'b11;
		$display("Result is: %h and ALUFlag is: %d", Result,ALUFlags) ;
		


		
	end
      
endmodule

