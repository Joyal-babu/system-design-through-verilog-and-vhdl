module rc_4bit_tb;
reg clk,reset;
reg [3:0]t;
wire [3:0]q;

rc_4bit tb1( .t(t), .clk(clk), .reset(reset), .q(q) );

always #5 clk=~clk;

initial 
  begin
   clk<=1'b0;
   t<=4'b1111;
   reset<=1'b1;
   #300 reset<=1'b0;
  end
endmodule
