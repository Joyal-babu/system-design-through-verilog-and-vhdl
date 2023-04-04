//4 bit parallel adder/subtractor

module Para_ADD_SUB ( output [4:0]sum2, input [3:0]A1, input [3:0]B1,input wire M ); // M-control signal
 
  wire [4:0]Q;
  wire [3:0]P;
  wire [3:0]R;
  wire [3:0]G;
  
  xor X1 ( P[0], B1[0], M );
  xor X2 ( P[1], B1[1], M );
  xor X3 ( P[2], B1[2], M );
  xor X4 ( P[3], B1[3], M );
  
  RCA_4bit RCA1 ( Q, A1,P, M );// instantiating 4bit RCA for first stage
 
  wire t,t1,M1;
  not N1 ( t, Q[4] );
  and G1 ( M1, t, M ); // M1-control signal for second stage
   
  not N2(t1,M);
  and G2(sum2[4],t1,Q[4]);
    
  xor X5 ( R[0], Q[0], M1 );
  xor X6 ( R[1], Q[1], M1 );
  xor X7 ( R[2], Q[2], M1 );
  xor X8 ( R[3], Q[3], M1 );
   
  assign G[0]=0;
  assign G[1]=0;
  assign G[2]=0;
  assign G[3]=0;
  

  RCA_4bit RCA2 ( sum2[3:0], R, G, M1 );// instantiating 4bit RCA for second stage
  
endmodule

// RIPPLE CARRY ADDER

module RCA_4bit ( sum1, A, B, cin );
  output [4:0]sum1;
  input  [3:0]A;
  input  [3:0]B;
  input cin;
  
  
  
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
