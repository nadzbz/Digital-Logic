`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:43 09/22/2018 
// Design Name: 
// Module Name:    equal8bit 
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
module equal8bit(input [7:0]a, [7:0] b, output z);
wire wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8;
equal equal1(.z(wire1),.a(a[0]),.b(b[0]));
equal equal2(.z(wire2),.a(a[1]),.b(b[1]));
equal equal3(.z(wire3),.a(a[2]),.b(b[2]));
equal equal4(.z(wire4),.a(a[3]),.b(b[3]));
equal equal5(.z(wire5),.a(a[4]),.b(b[4]));
equal equal6(.z(wire6),.a(a[5]),.b(b[5]));
equal equal7(.z(wire7),.a(a[6]),.b(b[6]));
equal equal8(.z(wire8),.a(a[7]),.b(b[7]));

assign z = wire1 & wire2 & wire3 & wire4 & wire5 & wire6 & wire7 & wire8;

endmodule
