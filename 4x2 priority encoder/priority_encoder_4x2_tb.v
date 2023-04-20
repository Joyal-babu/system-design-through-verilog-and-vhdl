module priority_encoder_4x2_tb;
  reg  [3:0]x;
  reg  e;
  wire [1:0]y;
  
  priority_encoder_4x2 tb1 ( .x(x), .e(e), .y(y) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
      
            x = 4'b0000; e = 0;
      #10   x = 4'b0000; e = 1;
      #10   x = 4'b0001; e = 1;
      #10   x = 4'b0010; e = 1;
      #10   x = 4'b0011; e = 1;
      #10   x = 4'b0100; e = 1;
      #10   x = 4'b0101; e = 1;
      #10   x = 4'b0110; e = 1;
      #10   x = 4'b1000; e = 1;
      #10   x = 4'b1001; e = 1;
      #10   x = 4'b1100; e = 1;
      #10   x = 4'b1111; e = 1;
      
      #30 $finish;
    end
endmodule
