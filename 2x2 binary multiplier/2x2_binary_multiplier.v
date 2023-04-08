//2bit multiplier

module multiplier_2x2 ( M, A, B );
  output [3:0]M;//max case (2bit) - 3x3=9 -> 1001(4 bit) 
  input  [1:0]A;
  input  [1:0]B;
  
  wire [3:0]W;
  
  and a1( M[0],A[0],B[0] );
  and a2( W[0],A[0],B[1] );
  and a3( W[1],A[1],B[0] );
  and a4( W[2],A[1],B[1] );
  
  HA H1( M[1],W[3],W[0],W[1] );//instantiating half adders
  HA H2( M[2],M[3],W[3],W[2] );
  
endmodule

// HALF ADDER

module HA ( sum, carry, in1, in2 );
  input in1,in2;
  output sum,carry;
  
  xor G0(sum, in1, in2);
  and G1(carry, in1, in2);
  
endmodule
