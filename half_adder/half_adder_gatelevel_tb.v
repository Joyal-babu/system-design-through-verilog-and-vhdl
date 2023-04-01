module HA_GL_tb;
  
  reg in1_tb, in2_tb; 
  wire sum_tb, carry_tb;    // declaring local variables,which are used inside this tb
  HA_GL TB1( .carry(carry_tb), .sum(sum_tb), .in1(in1_tb), .in2(in2_tb) );
  
  /*
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end 
  */    //code for waveform in EDA PLAYGROUND
  
  
  initial 
    begin
          in1_tb=0; in2_tb=0;
      #10 in1_tb=0; in2_tb=1;
      #10 in1_tb=1; in2_tb=0;
      #10 in1_tb=1; in2_tb=1;
      
      #30 $finish();
    end
endmodule
