`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:09 09/21/2018 
// Design Name: 
// Module Name:    bit_scan_reverse 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bit_scan_reverse(input [3:0] fourBitInput, output reg [1:0] Y);
	always @(fourBitInput)
  begin
	Y[1] <= fourBitInput[2] | fourBitInput[3];
	Y[0] <= fourBitInput[3] | fourBitInput[1] & ~fourBitInput[2];
	
  end
  
endmodule
