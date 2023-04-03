// RIPPLE CARRY ADDER

module RCA_4bit ( sum1, A, B );
  
  output [4:0]sum1;
  input  [3:0]A;
  input  [3:0]B;

  parameter cin=0; //carryin of the lsb bit , always taken as 0
  
  wire c1, c2, c3; //internal connections, defined them as wires 
  
  
  FA fa1 ( sum1[0], c1, A[0], B[0], cin ); //instantiating full adders
  FA fa2 ( sum1[1], c2, A[1], B[1], c1  );
  FA fa3 ( sum1[2], c3, A[2], B[2], c2  );
  FA fa4 ( sum1[3], sum1[4], A[3], B[3], c3 );
  
endmodule

// FULL ADDER

module FA (s, c, x, y, z);
  input  x, y, z;
  output s, c;
  
  wire w1, w2, w3;
  
  HA H1 ( w1, w2, x, y ); //instantiating halfadder
  HA H2 ( s, w3, w1, z );
  or o1 ( c, w2, w3 );
  
endmodule

// HALF ADDER

module HA ( sum, carry, in1, in2 );
  input in1,in2;
  output sum,carry;
  
  xor G0(sum, in1, in2);
  and G1(carry, in1, in2);
  
endmodule
  
  
