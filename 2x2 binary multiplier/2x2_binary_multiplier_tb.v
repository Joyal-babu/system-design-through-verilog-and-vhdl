module multiplier_2x2_tb;
  reg  [1:0]A,B;
  wire [3:0]M;
  
  multiplier_2x2 tb1( .M(M), .A(A), .B(B) );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
          A=2'b00; B=2'b00;
      #10 A=2'b01; B=2'b00;
      #10 A=2'b01; B=2'b01;
      #10 A=2'b01; B=2'b10;
      #10 A=2'b11; B=2'b10;
      #10 A=2'b11; B=2'b11;
      
      #30 $finish();
    end
endmodule
