module t_ff(
             input t,
             input clk,
             input reset,
             output q
);
  
  wire dt;
  assign dt=t^q;         // d = q XOR t
  
  dff d1(q,dt,clk,reset);//instantiating d flip-flop
  
endmodule

//d flip-flop

module dff( output reg q, input d,clk,reset );
  
    always @ ( posedge clk )
    begin
      
      if(reset)
        q<=0;
      else
        q<=d;
      
    end
  
endmodule
