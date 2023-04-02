module FA_tb;
  reg x,y,z;
  wire s,c;
  
  FA tb1 ( .s(s), .c(c), .x(x), .y(y), .z(z) );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
       
          x=0; y=0; z=0;
      #10 x=0; y=0; z=1;
      #10 x=0; y=1; z=0;
      #10 x=0; y=1; z=1;
      #10 x=1; y=0; z=0;
      #10 x=1; y=0; z=1;
      #10 x=1; y=1; z=0;
      #10 x=1; y=1; z=1;
      
      #30 $finish();
      
    end
endmodule
