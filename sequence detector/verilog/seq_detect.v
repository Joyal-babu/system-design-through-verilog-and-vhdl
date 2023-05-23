`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 13:05:41
// Design Name: 
// Module Name: seq_detect
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


module seq_detect(
    input x,
    input clk,
    input reset,
    output wire y
    );
    
    parameter s0 = 2'b00,
              s1 = 2'b01,
              s2 = 2'b10,
              s3 = 2'b11;
              
   reg [1:0] state, next_state;
   
   assign y = (next_state == s3);
   
   always @ (posedge clk, negedge reset) // active low reset
   begin
       if(reset == 0)
       begin
           next_state <= s0;
           state      <= s0;
       end
       else
       begin
         case(next_state)
             s0 : begin
                    if(x)
                       next_state <= s1;
                    else
                       next_state <= s0;
                  end
             s1 : begin
                    if(x)
                      next_state <= s2;
                    else
                      next_state <= s0;
                  end  
             s2 : begin
                    if(x)
                      next_state <= s3;
                    else
                      next_state <= s0;
                  end
             s3 : begin
                    if(x)
                      next_state <= s3;
                    else
                      next_state <= s0;
                  end 
         endcase
       end
   end           
endmodule
