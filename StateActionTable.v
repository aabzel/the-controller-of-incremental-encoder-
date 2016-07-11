`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alexander Barunin
// 
// Create Date:    15:10:05 04/30/2016 
// Design Name: 
// Module Name:    StateActionTable 
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
module StateActionTable(
    input wire clk,


	 input wire [3:0] input_bus,
	 output reg [3:0] output_bus

	 
    );
	 //input_bus[0]  q1
	 //input_bus[1]  q0
	 //input_bus[2]  B
	 //input_bus[3]  A
	 
	 //result[0] Q1
	 //result[1] Q0
	 //result[2] ClkEnable
	 //result[3] Dir
	 
	 
	 //wire [3:0] input_bus;
	 //input_bus={A, B, q0, q1}; //конкатенация
	 
	 always @(posedge clk) 
	 begin 
	  case (input_bus)
      4'd0: output_bus  <= 4'b0000;
      4'd1: output_bus  <= 4'b0100;
      4'd2: output_bus  <= 4'b1100;
      4'd3: output_bus  <= 4'b0011;
      4'd4: output_bus  <= 4'b1101;
      4'd5: output_bus  <= 4'b0001;
      4'd6: output_bus  <= 4'b0010;
      4'd7: output_bus  <= 4'b0101;
      4'd8: output_bus  <= 4'b0110;
      4'd9: output_bus  <= 4'b0001;
	  4'd10: output_bus <= 4'b0010;
	  4'd11: output_bus <= 4'b1110;
	  4'd12: output_bus <= 4'b0000;
	  4'd13: output_bus <= 4'b1111;
	  4'd14: output_bus <= 4'b0111;
	  4'd15: output_bus <= 4'b0011;
     endcase
	 end	 
endmodule
