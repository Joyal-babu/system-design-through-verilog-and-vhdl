module mat_mul_tb;
  reg  [31:0]A;
  reg  [31:0]B;
  wire [31:0]R;

  mat_mul tb1 ( .A(A), .B(B), .R(R) );
  
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial
  begin
    A = { 8'd1,8'd2,8'd3,8'd4 };
    B = { 8'd5,8'd6,8'd7,8'd8 };
    
    #20 A = { 8'd10,8'd11,8'd12,8'd13 };
        B = { 8'd14,8'd15,8'd16,8'd17 };
    
  end
endmodule
