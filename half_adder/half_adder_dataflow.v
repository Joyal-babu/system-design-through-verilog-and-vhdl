module HA_DF(in1,in2,sum,carry);
  input in1, in2;
  output reg  sum, carry;
  
  assign sum=in1^in2;
  assign carry=in1&in2;
  
endmodule
