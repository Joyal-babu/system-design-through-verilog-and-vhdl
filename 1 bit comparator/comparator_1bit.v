//1 bit comparator

module comp_1bit( G, L, E, A, B );
  output G,L,E;
  input A,B;
  
  assign E=A~^B; // a XNOR b, a equals b
  assign G=A&~B; // a > b
  assign L=~A&B; // a < b
  
endmodule
