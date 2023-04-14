//4bit comparator

module comp_4bit( G2,L2,E2,P,Q );
  
  input  [3:0]P,Q;
  output E2,G2,L2;
  
  wire [3:0]e,g,l;
  
  comp_1bit C1 ( g[0],l[0],e[0],P[0],Q[0] );//instantiating 1bit comp.
  comp_1bit C2 ( g[1],l[1],e[1],P[1],Q[1] );
  comp_1bit C3 ( g[2],l[2],e[2],P[2],Q[2] );
  comp_1bit C4 ( g[3],l[3],e[3],P[3],Q[3] );
  
 assign E2=e[0]&e[1]&e[2]&e[3];
 assign G2=g[3]|(e[3]&g[2])|(e[3]&e[2]&g[1])|(e[3]&e[2]&e[1]&g[0]);
 assign L2=l[3]|(e[3]&l[2])|(e[3]&e[2]&l[1])|(e[3]&e[2]&e[1]&l[0]);
  
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

