Take two 2 bit inputs and compare them to produce three outputs,only one output high at a time.

   A=a1a0  ,   B=b1b0

   1.A=B, only if a1=b1 and a0=b0 , E=e0 & e1.
   2.A>B,      if a1>b1 or      
               a1=b1 and a0>b0 , G=g1 | (e1&g0).
   3.A<B,      if a1<  b1 or
               a1=b1 and a0<b0 , L=l1 | (e1&l0).
