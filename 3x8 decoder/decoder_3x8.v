

//3x8 decoder

module decoder_3x8(y1,x1);
  output [7:0]y1;
  input  [2:0]x1;
  
  wire xb;
  
  not n1(xb,x1[2]);
  
  decoder_2x4 d1( y1[3:0],x1[1:0],xb );
  decoder_2x4 d2( y1[7:4],x1[1:0],x1[2] );
  
endmodule

//2x4 decoder

module decoder_2x4( y,x,e);
  output [3:0]y;
  input  [1:0]x;
  input e;
  
  assign y[0]=~x[1]&~x[0]&e;
  assign y[1]=~x[1]&x[0]&e;
  assign y[2]=x[1]&~x[0]&e;
  assign y[3]=x[1]&x[0]&e;
  
endmodule
