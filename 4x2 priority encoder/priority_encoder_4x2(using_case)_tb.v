module priority_encoder_4x2_tb;
  reg  [3:0]x;
  wire valid;
  wire [1:0]y;
  
  priority_encoder_4x2 tb1 ( .x(x), .valid(valid), .y(y) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
      
            x = 4'b0000; 
      #10   x = 4'b0001; 
      #10   x = 4'b0010; 
      #10   x = 4'b0011; 
      #10   x = 4'b0100; 
      #10   x = 4'b0101; 
      #10   x = 4'b0110; 
      #10   x = 4'b1000; 
      #10   x = 4'b1001; 
      #10   x = 4'b1100; 
      #10   x = 4'b1111; 
      
      #30 $finish;
    end
endmodule
