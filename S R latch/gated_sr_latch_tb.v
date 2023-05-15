module sr_latch_tb;
  reg  S;
  reg  R;
  reg  E;
  wire Q;
  wire Qbar;
  
  sr_latch tb1 ( .S(S), .R(R), .E(E), .Q(Q), .Qbar(Qbar) );
  
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial 
  begin
        S=1'b0; R=1'b0; E=1'b0;
    #100 S=1'b0; R=1'b0; E=1'b1;
    #100 S=1'b0; R=1'b1; E=1'b1;
    #100 S=1'b1; R=1'b0; E=1'b1;
    #100 S=1'b1; R=1'b1; E=1'b1;
    #100 S=1'b1; R=1'b0; E=1'b0;
    #100 S=1'b0; R=1'b1; E=1'b0;
    
   // #30 $finish;
  end
endmodule
