// 4x2 priority encoder with active high enable

module priority_encoder_4x2 ( x, y , e );
  input  [3:0]x;
  input  e;
  output reg [1:0]y;
  
  always @( e, x )
    begin
      if( e == 1 )
        begin
          
          if( x[3] == 1'b1 )
            y <= 2'b11;
          else if ( x[2] == 1'b1 )
            y <= 2'b10;
          else if ( x[1] == 1'b1 )
            y <= 2'b01;
          else if ( x[0] == 1'b1 )
            y <= 2'b00;
          else
            y <= 2'bxx;
                   
        end
      
      else
         y = 2'bxx;
    end
endmodule
