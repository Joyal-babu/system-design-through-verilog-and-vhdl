module mux_2x1 ( i0, i1, s, y );
  input i0;
  input i1;
  input s;
  output y;
  
  wire w;
  
  not n1 ( w, s );
  
  bufif1 b1 ( y, i0, w );
  bufif1 b2 ( y, i1, s );
  
endmodule
