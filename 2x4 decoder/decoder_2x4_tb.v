module decoder_2x4_tb;
  reg  [1:0]x;
  reg  e;
  wire [3:0]y;
  
  decoder_2x4 tb1 (.y(y), .x(x), .e(e));
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
          x=2'b00; e=1;
      #10 x=2'b01; e=1;
      #10 x=2'b10; e=1;
      #10 x=2'b11; e=1;
      #10 x=2'b10; e=0;
      #10 x=2'b01; e=0;
      #10 x=2'b00; e=0;
      
      #20 $finish();
    end
endmodule
