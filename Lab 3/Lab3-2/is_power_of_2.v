`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:29 09/21/2018 
// Design Name: 
// Module Name:    is_power_of_2 
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
module is_power_of_2(input [3:0] I, output Y );
	wire wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8;
	
	not not1(wire1, I[3]);
	not not2(wire2, I[2]);
	not not3(wire3, I[1]);
	not not4(wire4, I[0]);
	
	and and1(wire5, wire1, wire2, wire3, I[0]);
	and and2(wire6, wire1, wire2, I[1], wire4);
	and and3(wire7, wire1, I[2], wire3, wire4);
	and and4(wire8, I[3], wire2, wire3, wire4);
	
	or or1(Y, wire5, wire6, wire7, wire8);	
	
	
endmodule
