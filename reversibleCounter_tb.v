`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:05:08 04/30/2016
// Design Name:   reversibleCounter
// Module Name:   C:/Xilinx/Built_in/Encoder_controller/reversibleCounter_tb.v
// Project Name:  Encoder_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reversibleCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reversibleCounter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg enable;
	reg dir;
	
	reg [31:0] cnter;

	// Outputs
	wire [31:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	reversibleCounter uut (
		.clk(clk), 
		.rst(rst), 
		.enable(enable), 
		.dir(dir), 
		.cnt(cnt)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		enable = 0;
		dir = 0;
		cnter=0;

		// Wait 100 ns for global reset to finish
		#10;
        
		forever
		begin
		#1 clk = 0;
		#1 clk = 1;
		
		cnter=cnter+1;
		if(cnter==3)rst = 0;
		if(cnter==5)rst = 1;
		
		if(cnter==10)  dir = 1;
		if(cnter==20)  dir = 0;
	   if(cnter==30)  dir = 1;
      if(cnter==40)  dir = 0;		
      if(cnter==50)begin  dir = 0;	enable = 1;	end
		if(cnter==60)begin  dir = 0; enable = 0;end
      if(cnter==70)  dir = 0;		
		if(cnter==80)  dir = 0;	
		if(cnter==90)  dir = 1;
		if(cnter==100) dir = 1;	
      if(cnter==110)begin   dir = 1;enable = 1;end
      if(cnter==120)begin   dir = 1;enable = 0;end
      if(cnter==130) dir = 1;		
		if(cnter==140)begin   dir = 0;enable = 1;end
      if(cnter==150)begin   dir = 0;enable = 0;	end
		if(cnter==160) dir = 0;		
		  
		end
		  
		  
		// Add stimulus here

	end
      
endmodule

