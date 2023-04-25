module dff( output reg q,qbar, input d,clk,reset );
  
  
  
  always @ ( posedge clk )
  begin
      if(reset)
      begin
        q<=0;
        qbar<=1;
      end
      else
      begin
        q<=d;
        qbar<=!d;
      end
  end
endmodule
