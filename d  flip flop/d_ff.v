module dff( output reg q,output wire qbar, input d,clk,reset );
  
  assign qbar = ~q;
  
  always @ ( posedge clk )
  begin
      if(reset)
      begin
        q<=0;
      end
      else
      begin
        q<=d;
      end
  end
endmodule
