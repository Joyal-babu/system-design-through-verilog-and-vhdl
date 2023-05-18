`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 12:51:49
// Design Name: 
// Module Name: mux_2x1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_2x1_tb;
  reg  a,b,s;
  wire y;
  
  mux_2x1 tb1( .a(a), .b(b), .s(s), .y(y) );
  
  initial  begin
     
          a=1'b0; b=1'b0; s=1'b0;
      #10 a=1'b0; b=1'b0; s=1'b1;
      #10 a=1'b0; b=1'b1; s=1'b0;
      #10 a=1'b1; b=1'b1; s=1'b1;
      #10 a=1'b1; b=1'b0; s=1'b0;
      #10 a=1'b0; b=1'b1; s=1'b1;
      
      #30 $finish();
      
  end
endmodule
