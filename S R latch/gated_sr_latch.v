module sr_latch(
  input S,
  input R,
  input E,
  output Q,
  output Qbar
);
  
  wire w1,w2;
  
  nand g1( w1, S, E );
  nand g2( w2, R, E );
  nand g3( Q, w1, Qbar );
  nand g4( Qbar, w2, Q );
  
endmodule
