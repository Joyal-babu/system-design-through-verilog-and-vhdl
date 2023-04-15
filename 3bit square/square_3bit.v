module square_3bit(y,a);
  input  [2:0]a;
  output [5:0]y;
  
  assign y= a*a;
  
endmodule
