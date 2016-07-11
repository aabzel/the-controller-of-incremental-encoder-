`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Alexander Barunin
// 
// Create Date:    17:58:21 04/30/2016 
// Design Name: 
// Module Name:    reversibleCounter 
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
module reversibleCounter(
    input wire clk,
    input wire rst,
    input wire enable,
    input wire dir,
    output reg [31:0] cnt
    );
	 
	 always @(negedge clk)
    begin
	   if(rst==0) cnt <= 32'b0;
	 	else
	 	  begin
	 	    if(enable)
			   begin
	 	        if(dir)
	 	        cnt <=cnt+1 ;
	 	        else
	 	        cnt <=cnt-1 ;
				end
	 	  end
    end	 
endmodule
