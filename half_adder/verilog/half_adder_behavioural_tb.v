module HA_BM_TB;
  reg in1, in2;
  wire carry, sum;
  
  HA_BM tb1(.in1(in1), .in2(in2), .sum(sum), .carry(carry));
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
         in1=0; in2=0;
     #10 in1=0; in2=1;
     #10 in1=1; in2=0;
     #10 in1=1; in2=1;
      
     #30 $finish();
    end
endmodule
