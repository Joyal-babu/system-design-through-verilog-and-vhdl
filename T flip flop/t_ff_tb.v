module t_ff_tb;
  reg t,clk,reset;
  wire q;
  
  
  t_ff tb1(.t(t),.clk(clk),.reset(reset),.q(q));
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  always #10clk<=~clk;
  
  initial
    begin
      
      clk<=1'b1;
      reset<=1'b1;
      t<=1'b0;
      
      #30 reset<=1'b0;
      
      #45 t<=~t;
      #20 t<=~t;
      #65 t<=~t;
      
    end
endmodule
