`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Alexander Barunin
// 
// Create Date:    16:29:34 04/30/2016 
// Design Name: 
// Module Name:    incrementalEncoderController 
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
module incrementalEncoderController(
    input wire clk,
	 input wire rst,
    input wire  A,
    input wire  B,
	 
    output wire dir,
    output wire clkEnable,
	 output wire [1:0] curState,
	 output wire [31:0] cnt
    );
	 wire [3:0] StateActOut;
	 wire [1:0] outQ;
	 //wire [3:0] input_bus ={outQ[0],outQ[1],B,A };
	 wire [3:0] input_bus ={A,B,outQ[1],outQ[0] };
	 wire [1:0] inQ={StateActOut[1], StateActOut[0]};
	 
	 StateActionTable uut1 (
		.clk(clk), 
		.input_bus(input_bus), 
		.output_bus(StateActOut)
	 );
	
	reg2bit uut2 (
		.clk(clk), 
		.rst(rst),
		.inQ(inQ), 
		.outQ(outQ)
	);
	
	reversibleCounter uut3 (
		.clk(clk), 
		.rst(rst), 
		.enable(clkEnable), 
		.dir(dir), 
		.cnt(cnt)
	);
	
	assign dir = {StateActOut[3]};
	assign clkEnable = {StateActOut[2]};
	assign curState = {outQ[1], outQ[0]};
	
endmodule
