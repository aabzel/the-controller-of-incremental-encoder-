`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alexander Barunin
//
// Create Date:   16:24:04 04/30/2016
// Design Name:   reg2bit
// Module Name:   C:/Xilinx/Built_in/Encoder_controller/reg2bit_tb.v
// Project Name:  Encoder_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg2bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg2bit_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] inQ;

	// Outputs
	wire [1:0] outQ;

	// Instantiate the Unit Under Test (UUT)
	reg2bit uut (
		.clk(clk), 
		.rst(rst), 
		.inQ(inQ), 
		.outQ(outQ)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		inQ = 0;

		// Wait 100 ns for global reset to finish
		#1;
		#1; clk =0;
		#1; clk =1; rst=0;
		#1; clk =0;		
		#1; inQ <=2'd0;
		#1; clk =0;
		#1; clk =1; rst=1;
		#1; clk =0;
		#1; inQ <=2'd1;
		#1; clk =0;
		#1; clk =1;
		#1; clk =0;
		#1; inQ <=2'd2;
		#1; clk =0;
		#1; clk =1;
		#1; clk =0;
		#1; inQ <=2'd3;
	   #1; clk =0;
		#1; clk =1;
		#1; clk =0;
		#1; inQ <=2'd0;
		#1; clk =0;
		#1; clk =1;
		#1; clk =0;
        
		// Add stimulus here

	end
      
endmodule

