module dff( output reg q, input d,clk,reset );
  
  always @ ( posedge clk )
  begin
      if(reset)
        q <= 0;
      else
        q <= d;
  end
endmodule
