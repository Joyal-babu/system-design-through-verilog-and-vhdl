module comp_1bit_tb;
  reg A,B;
  wire G,L,E;
  
  comp_1bit tb1 ( .G(G), .L(L), .E(E), .A(A), .B(B) );
  
  initial 
    begin
      $dumpfile("dum.vcd");
      $dumpvars(1);
    end
  initial
    begin
          A=0; B=0;
      #10 A=0; B=1; 
      #10 A=1; B=0;
      #10 A=1; B=1;
      #20 $finish;
      
      
    end 
endmodule
