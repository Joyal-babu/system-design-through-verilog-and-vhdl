module comp_2bit_tb;
  reg [1:0]P,Q;
  wire E2,G2,L2;
  
  comp_2bit tb1( .G2(G2), .L2(L2), .E2(E2), .P(P), .Q(Q) );
  
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial 
    begin
       
          P=2'b00; Q=2'b00;
      #10 P=2'b00; Q=2'b01;
      #10 P=2'b10; Q=2'b11;
      #10 P=2'b11; Q=2'b00;
      #10 P=2'b01; Q=2'b11;
      #10 P=2'b11; Q=2'b11;
      
      #20 $finish();
      
    end 
endmodule
