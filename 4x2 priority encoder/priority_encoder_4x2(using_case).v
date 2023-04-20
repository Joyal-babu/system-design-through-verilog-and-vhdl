module priority_encoder_4x2 ( x, y, valid );
  input      [3:0]x;
  output reg [1:0]y;
  output reg valid;
  
  always @ ( x )
    begin
      
          casex(x)
            4'b1xxx:begin
                     valid <= 1;    //highest priority
                     y     <= 2'b11;
                    end
            4'b01xx:begin
                     valid <= 1;
                     y     <= 2'b10;
                    end
            4'b001x:begin
                     valid <= 1;
                     y     <= 2'b01;
                    end
            4'b0001:begin
                     valid <= 1;
                     y     <= 2'b00; //lowest priority
                    end
            4'b0000:begin
                     valid <= 0;
                     y     <= 2'bxx;// no inputs high
                    end
          endcase
       
      
    end
endmodule
