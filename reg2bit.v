`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alexander Barunin
// 
// Create Date:    16:21:51 04/30/2016 
// Design Name: 
// Module Name:    reg2bit 
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
module reg2bit(
    input wire clk,
	 input wire rst,
    input wire [1:0] inQ,
    output reg [1:0] outQ
    );
	 
	 always @(negedge clk)
	 begin
	   outQ <=inQ;
	   if(rst==0) outQ <= 2'b00;
	 end


endmodule
