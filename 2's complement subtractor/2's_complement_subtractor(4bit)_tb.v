module sub_2s_comp_tb;
  wire   [3:0]res2;
  wire   cout2;
  reg    [3:0]A2;
  reg    [3:0]B2;
  
  sub_2s_comp tb1 ( .res2(res2), .cout2(cout2), .A2(A2), .B2(B2) );
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
    
           A2=4'b0000;  B2=4'b0000; 
      #100 A2=4'b1001;  B2=4'b1000; 
      #100 A2=4'b1000;  B2=4'b1001; 
      #100 A2=4'b1100;  B2=4'b0011; 
      #100 A2=4'b1110;  B2=4'b1101; 
      #100 A2=4'b1111;  B2=4'b0111; 
      #100 A2=4'b1111;  B2=4'b1111; 
      #100 A2=4'b1101;  B2=4'b0111; 
      #100 A2=4'b1000;  B2=4'b1111; 
      #100 A2=4'b1001;  B2=4'b1111; 
      #100 A2=4'b1111;  B2=4'b1001; 
    
      
    end
endmodule
