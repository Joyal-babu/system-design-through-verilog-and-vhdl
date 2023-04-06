module sub_2s_comp( res2, cout2, A2, B2 );
  
  output [3:0]res2;
  output cout2;
  input  [3:0]A2;
  input  [3:0]B2;
  
  wire [3:0]Bbar;
  wire [3:0]p;
  wire [3:0]q;
  wire [3:0]r = 4'b0000;
  wire coutb;
  wire cout1;
  
  parameter cin1 = 1'b1; //to find 2's complement of second operand ie 1's complement + 1
  
  
  not n0( Bbar[0], B2[0] );
  not n1( Bbar[1], B2[1] );
  not n2( Bbar[2], B2[2] );
  not n3( Bbar[3], B2[3] );
  
  RCA_4bit rca1 ( p, cout1, A2, Bbar, cin1 ); //instantiating RCA
  
  not n4( coutb,cout1 );
  
  xor x0( q[0], p[0], coutb );
  xor x1( q[1], p[1], coutb );
  xor x2( q[2], p[2], coutb );
  xor x3( q[3], p[3], coutb );
  
  RCA_4bit rca2 ( res2, cout2, q, r, coutb ); //instantiating RCA
   
endmodule


// RIPPLE CARRY ADDER

  module RCA_4bit ( sum1, cout, A, B, cin );
  
  output [3:0]sum1;
  output cout;
  input  [3:0]A;
  input  [3:0]B;
  input  cin;

  wire c1, c2, c3; //internal connections, defined them as wires 
  
  
  FA fa1 ( sum1[0], c1,   A[0], B[0], cin ); //instantiating full adders
  FA fa2 ( sum1[1], c2,   A[1], B[1], c1 );
  FA fa3 ( sum1[2], c3,   A[2], B[2], c2 );
  FA fa4 ( sum1[3], cout, A[3], B[3], c3 );
  
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
