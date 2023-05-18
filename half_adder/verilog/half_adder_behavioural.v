module HA_BM ( sum, carry, in1, in2 );
   input in1, in2;
   output carry, sum;
  
  assign {carry, sum}= in1+in2;
  
endmodule
