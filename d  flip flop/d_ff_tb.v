module dff_tb;
  wire q,qbar;
  reg clk,d,reset;
  
  dff tb1( .q(q), .qbar(qbar), .clk(clk), .d(d), .reset(reset) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  always #10 clk<=~clk;
  always #40 d<=~d;
  initial 
  begin
      clk<=1'b1;
      d<=1'b0;
      reset<=1'b1;
      #30 reset<=1'b0;
      #400 $finish;
  end
 endmodule
