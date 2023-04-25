module d_ff_tb;
  reg  clk;
  reg  reset;
  reg  d;
  wire q1;
  wire q2;
  
  d_ff tb1 ( .clk(clk), .reset(reset), .d(d), .q1(q1), .q2(q2) );
  
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  always #5  clk <= ~clk;
  always #50 d   <= ~d;
  
  initial 
  begin
    clk   <= 1'b0;
    d     <= 1'b0;
    reset <= 1'b1;
    #20 reset <= 1'b0;
    #80 reset <= 1'b1;
    #40 reset <= 1'b0;
    #50 $finish;
  end
endmodule
