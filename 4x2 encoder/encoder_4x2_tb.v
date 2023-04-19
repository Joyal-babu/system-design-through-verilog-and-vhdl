module encoder_4x2_tb;
  wire [1:0]y;
  reg x0,x1,x2,x3;
  
  encoder_4x2 tb1( .y(y), .x0(x0), .x1(x1), .x2(x2), .x3(x3) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
          x0=1; x1=0; x2=0; x3=0;
      #10 x0=0; x1=1; x2=0; x3=0;
      #10 x0=0; x1=0; x2=1; x3=0;
      #10 x0=0; x1=0; x2=0; x3=1;
      
      #20 $finish;
      
    end 
endmodule
