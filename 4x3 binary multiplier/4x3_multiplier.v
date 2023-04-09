//4x3 multiplier

module multiplier_4x3 ( M, C, D );
  output [6:0]M;// max limit 4(bit)x3(bit) -> 15(1111)*7(111)=105(1101001) , 7bit
  input  [3:0]C;
  input  [2:0]D;
  
  wire [11:0]w;
  wire [4:0]p;
   
  and a1  ( M[0], C[0], D[0] );
  and a2  ( w[0], C[1], D[0] );
  and a3  ( w[1], C[2], D[0] );
  and a4  ( w[2], C[3], D[0] );
  
  assign w[3]=0;
  
  and a5  ( w[4], C[0], D[1] );
  and a6  ( w[5], C[1], D[1] );
  and a7  ( w[6], C[2], D[1] );
  and a8  ( w[7], C[3], D[1] );
  
  and a9  ( w[8], C[0], D[2] );
  and a10 ( w[9], C[1], D[2] );
  and a11 ( w[10], C[2], D[2] );
  and a12 ( w[11], C[3], D[2] );
  
  RCA_4bit rca1( p[4:0], w[3:0], w[7:4] );
  
  assign M[1]=p[0];
  
  RCA_4bit rca2( M[6:2], p[4:1], w[11:8] );
  
endmodule

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

  


