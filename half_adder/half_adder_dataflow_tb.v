module HA_DF_tb;
  reg in1_tb, in2_tb;
  wire sum_tb, carry_tb;
  
  HA_DF tb1(.sum(sum_tb), .carry(carry_tb), .in1(in1_tb), .in2(in2_tb));
            
 initial
   begin 
     $dumpfile("dump.vcd");
     $dumpvars(1);
   end
 initial
   begin
     
          in1_tb=0; in2_tb=0;
      #10 in1_tb=0; in2_tb=1;
      #10 in1_tb=1; in2_tb=0;
      #10 in1_tb=1; in2_tb=1;
      
      #30 $finish();
   end
endmodule
