module decoder_3x8_tb;
  reg [2:0]x1;
  wire [7:0]y1;
  
  decoder_3x8 tb1 ( .y1(y1), .x1(x1) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
          x1=3'b000;
      #10 x1=3'b001;
      #10 x1=3'b010;
      #10 x1=3'b011;
      #10 x1=3'b100;
      #10 x1=3'b101;
      #10 x1=3'b110;
      #10 x1=3'b111;
      
      #20 $finish();
      
    end 
endmodule
