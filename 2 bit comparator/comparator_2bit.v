//2bit comparator

module comp_2bit( G2,L2,E2,P,Q );
  
  input  [1:0]P,Q;
  output E2,G2,L2;
  
  wire e0,e1,g0,g1,l0,l1;
  
  comp_1bit C0 ( g0,l0,e0,P[0],Q[0] );//instantiating 1 bit comparators
  comp_1bit C1 ( g1,l1,e1,P[1],Q[1] );
  
  assign E2=e0&e1;
  assign G2=(e1&g0)|g1;
  assign L2=l1|(e1&l0);
  
endmodule
  
  //1bit comparator

module comp_1bit( G, L, E, A, B );
  output G,L,E;
  input A,B;
  wire Bbar,Abar;
  
  not x1(Abar,A);
  not x2(Bbar,B);
  
  
  xnor x3(E,A,B);
  and  x4(G,A,Bbar);
  and  x5(L,Abar,B);
  
  // another way
  //assign E=A~^B; a XNOR b, a equals b
 // assign G=A&~B; a > b
  //assign L=~A&B; a < b
  
endmodule
