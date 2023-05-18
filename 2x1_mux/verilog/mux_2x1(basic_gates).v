module mux_2x1 (y,a,b,s);
  input a,b,s;
  output y;
  
  wire sbar,w1,w2;
  
  not g1(sbar,s);
  and g2(w1,sbar,a);
  and g3(w2,s,b);
  or  g4(y,w1,w2);
  
endmodule
