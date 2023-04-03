module RCA_4bit_tb;
  reg cin;
  reg  [3:0]A;
  reg  [3:0]B;
  wire [4:0]sum1;
  
  RCA_4bit tb1 (.sum1(sum1), .A(A), .B(B) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
          A=4'b0000;  B=4'b0000;
      #10 A=4'b0001;  B=4'b0010;
      #10 A=4'b0100;  B=4'b0101;
      #10 A=4'b1100;  B=4'b0011;
      #10 A=4'b1110;  B=4'b1101;
      #10 A=4'b1111;  B=4'b0111;
      #10 A=4'b1111;  B=4'b1111;
      #10 A=4'b1101;  B=4'b0111;
      #10 A=4'b1000;  B=4'b1111;
      #10 A=4'b1001;  B=4'b1111;
      #10 A=4'b1111;  B=4'b1001;
      
      #30 $finish();
      
    end 
endmodule
