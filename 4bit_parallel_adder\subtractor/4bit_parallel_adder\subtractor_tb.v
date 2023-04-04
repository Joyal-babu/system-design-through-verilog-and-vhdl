module Para_ADD_SUB_tb;
  wire   [4:0]sum2;
  reg    [3:0]A1;
  reg    [3:0]B1;
  reg    M;
  
  Para_ADD_SUB tb1 ( .sum2(sum2), .A1(A1), .B1(B1), .M(M) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
    
          A1=4'b0000;  B1=4'b0000; M=0;
      #10 A1=4'b1111;  B1=4'b1111; M=0;
      #10 A1=4'b0100;  B1=4'b0101; M=0;
      #10 A1=4'b1100;  B1=4'b0011; M=0;
      #10 A1=4'b1110;  B1=4'b1101; M=0;
      #10 A1=4'b1111;  B1=4'b0111; M=1;
      #10 A1=4'b1111;  B1=4'b1111; M=1;
      #10 A1=4'b1101;  B1=4'b0111; M=1;
      #10 A1=4'b1000;  B1=4'b1111; M=1;
      #10 A1=4'b1001;  B1=4'b1111; M=1;
      #10 A1=4'b1111;  B1=4'b1001; M=1;
    
      #30 $finish();
    end
endmodule
