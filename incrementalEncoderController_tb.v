`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alexander Barunin
//
// Create Date:   16:44:22 04/30/2016
// Design Name:   incrementalEncoderController
// Module Name:   C:/Xilinx/Built_in/Encoder_controller/incrementalEncoderController_tb.v
// Project Name:  Encoder_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: incrementalEncoderController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module incrementalEncoderController_tb;

	// Inputs
	reg clk;
	reg rst;
	reg A;
	reg B;
	reg [31:0] cnt;

	// Outputs
	wire dir;
	wire clkEnable;
   wire [1:0] curState;
   wire [31:0] cntEnc;
	
	// Instantiate the Unit Under Test (UUT)
	incrementalEncoderController uut (
		.clk(clk), 
		.rst(rst),
		.A(A), 
		.B(B), 
		.dir(dir), 
		.clkEnable(clkEnable),
		.curState(curState),
		.cnt(cntEnc)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		A   = 0;
		B   = 0;
      cnt = 0;

		// Wait 100 ns for global reset to finish
		#1;
		
		forever
		begin
		#1 clk = 0;
		#1 clk = 1;
		cnt=cnt+1;
		if(cnt==3)rst = 0;
		if(cnt==5)rst = 1;
		
		if(cnt==10)A = 1;
		if(cnt==20)B = 0;
	   if(cnt==30) B = 1;
      if(cnt==40) A = 1;		
      if(cnt==50) A = 0;		
		if(cnt==60) B = 1;
      if(cnt==70) A = 0;		
		if(cnt==80) B = 0;	
		if(cnt==90) B = 1;
		if(cnt==100) A = 0;	
      if(cnt==110) A = 1;
      if(cnt==120) B = 1;
      if(cnt==130) B = 0;		
		if(cnt==140) A = 1;
      if(cnt==150) B = 0;		
		if(cnt==160) A = 0;		
		  
		end
		
		

		
		
		

		
		
		// Add stimulus here

	end
      
endmodule

