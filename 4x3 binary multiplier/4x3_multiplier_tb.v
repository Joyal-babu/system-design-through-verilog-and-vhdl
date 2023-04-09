module multiplier_4x3_tb;
  reg  [3:0]C;
  reg  [2:0]D;
  wire [6:0]M;
  
  multiplier_4x3 tb1( .M(M), .C(C), .D(D) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
          C=4'b0000; D=3'b000;
      #10 C=4'b0001; D=3'b011;
      #10 C=4'b0110; D=3'b111;
      #10 C=4'b1010; D=3'b101;
      #10 C=4'b1111; D=3'b011;
      #10 C=4'b1101; D=3'b010;
      #10 C=4'b1111; D=3'b111;
      
      #30 $finish();
    end
endmodule
