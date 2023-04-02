//code for full adder
module FA (s, c, x, y, z);
  input  x, y, z;
  output s, c;
  
  wire w1, w2, w3;
  
  HA H1 ( w1, w2, x, y ); //instantiating halfadder
  HA H2 ( s, w3, w1, z );
  or ( c, w2, w3 );
  
endmodule



// code for half adder
module HA ( sum, carry, in1, in2 );
  input in1,in2;
  output sum,carry;
  
  xor G0(sum, in1, in2);
  and G1(carry, in1, in2);
  
endmodule
