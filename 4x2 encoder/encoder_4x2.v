module encoder_4x2( input x0,x1,x2,x3, output [1:0]y );
  
  or g1( y[0],x1,x3);
  or g2( y[1],x2,x3);
  
endmodule
