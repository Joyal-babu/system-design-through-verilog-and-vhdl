module HA_GL (in1, in2, sum, carry);
  input in1,in2;
  output sum,carry;
  
  xor G0(sum, in1, in2);
  and G1(carry, in1, in2);
  
endmodule
