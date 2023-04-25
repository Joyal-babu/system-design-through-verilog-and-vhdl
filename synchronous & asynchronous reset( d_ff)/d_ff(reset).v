module d_ff( 
  input  clk,
  input  reset,
  input  d,
  output reg q1,
  output reg q2
  );
  
  always @ ( posedge clk )                   // synchronous reset
  begin
    if(reset)    // active high reset
      q1 <= 1'b0;
    else
      q1 <= d;
  end
  
  always @ ( posedge clk or posedge reset )  // asynchronous reset
  begin
    if(reset)
      q2 <= 1'b0;
    else
      q2 <= d;
  end
endmodule
