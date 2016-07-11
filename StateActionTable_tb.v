`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:31 04/30/2016
// Design Name:   StateActionTable
// Module Name:   C:/Xilinx/Built_in/Encoder_controller/StateActionTable_tb.v
// Project Name:  Encoder_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StateActionTable
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module StateActionTable_tb;

	// Inputs
	reg clk;
	reg [3:0] input_bus;

	// Outputs
	wire [3:0] result;

	// Instantiate the Unit Under Test (UUT)
	StateActionTable uut (
		.clk(clk), 
		.input_bus(input_bus), 
		.output_bus(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		input_bus = 0;

		// Wait 100 ns for global reset to finish

        
		#1;  
		input_bus =4'd0;
		#1;  
		clk = 0;
      #1;
		clk = 1;
		#1;
		input_bus =4'd1;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd2;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd3;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd4;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd5;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd6;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd7;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      
		#1;
		input_bus =4'd8;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd9;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd10;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd11;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd12;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd13;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd14;
		#1;  
		clk = 0;
      #1;
		clk = 1;
      #1;
		input_bus =4'd15;		
		#1;  
		clk = 0;
      #1;
		clk = 1;
		// Add stimulus here

	end
      
endmodule

