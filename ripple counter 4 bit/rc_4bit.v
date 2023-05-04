module rc_4bit(
    input [3:0]t,
    input clk,reset,
    output  [3:0]q
    );
    /* initial
     begin
     q<=4'b0000;
     end*/
    
    t_ff t1(q[0],t[0],clk,reset);
    t_ff t2(q[1],t[1],q[0],reset);
    t_ff t3(q[2],t[2],q[1],reset);
    t_ff t4(q[3],t[3],q[2],reset);
    
endmodule


module t_ff(
         output  q,
         input t,clk,reset
         );
         
         wire w1;
         assign w1=t^q;
         d_ff d1(q,w1,clk,reset);
endmodule
         
         
module d_ff(
       output reg q,
       input d,clk,reset
       );
             
       always@(negedge clk)
        begin
          if(reset)
            q<=1'b0;
          else
             q<=d;
       end
endmodule
