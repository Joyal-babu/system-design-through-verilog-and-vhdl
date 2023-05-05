`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 14:40:26
// Design Name: 
// Module Name: seq_detect_tb
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


module seq_detect_tb;
    reg  x;
    reg  clk;
    reg  reset;
    wire y;
    
    seq_detect dut ( .x(x), .clk(clk), .reset(reset), .y(y) );
    
    always #5 clk <= ~clk;
    
    initial 
    begin
    clk   <= 1'b0;
    reset <= 1'b0;
    x     <= 1'b0;
    
    #500 reset <= 1'b1;
         x     <= 1'b1;
    #30  x     <= 1'b1;
    #30  x     <= 1'b0;
    #30  x     <= 1'b1;
    #30  x     <= 1'b0;
    #30  x     <= 1'b1;
    #30  x     <= 1'b1;
    #30  x     <= 1'b0;
    #30  x     <= 1'b1;
    #30  x     <= 1'b1;
    end
     
endmodule
