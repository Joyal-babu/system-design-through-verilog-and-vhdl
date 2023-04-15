module square_3bit_tb;
  reg [2:0]a;
  wire [5:0]y;
  
  square_3bit tb1 ( .y(y), .a(a) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial 
    begin
          a=3'b000;
      #10 a=3'b001;
      #10 a=3'b010;     
      #10 a=3'b011;
      #10 a=3'b100;
      #10 a=3'b101;
      #10 a=3'b111;
      
      #30 $finish();
      
    end
endmodule
