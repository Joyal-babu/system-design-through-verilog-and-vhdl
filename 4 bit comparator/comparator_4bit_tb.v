module comp_4bit_tb;
  reg [3:0]P,Q;
  wire E2,G2,L2;
  
  comp_4bit tb1( .G2(G2), .L2(L2), .E2(E2), .P(P), .Q(Q) );
  
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
       
          P=4'b0000; Q=4'b0000;
      #10 P=4'b0011; Q=4'b0100;
      #10 P=4'b1010; Q=4'b1100;
      #10 P=4'b1100; Q=4'b0011;
      #10 P=4'b0111; Q=4'b1111;
      #10 P=4'b1101; Q=4'b1101;
      
      #20 $finish();
      
    end 
endmodule
