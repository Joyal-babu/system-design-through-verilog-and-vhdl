Take two 4 bit inputs and compare them to produce three outputs,only one output high at a time.

         A=a3a2a1a0  ,   B=b3b2b1b0

         1.A=B, only if a3=b3 AND a2=b2 AND a1=b1 AND a0=b0 ie, E = e3 & e2& e0 & e1.
         
         2.A>B,      if a3>b3 OR      
                     a3=b3 AND a2>b2 OR
                     a3=b3 AND a2=b2 AND a1>b1 OR
                     a3=b3 AND a2=b2 AND a1=b1 AND a0>b0 ie, G=g3 | (e3&g2) | (e3&e2&g1) | (e3&e2&e1&g0).
                     
         3.A<B,      if a3<b3 OR      
                     a3=b3 AND a2<b2 OR
                     a3=b3 AND a2=b2 AND a1<b1 OR
                     a3=b3 AND a2=b2 AND a1=b1 AND a0<b0 ie, G=l3 | (e3&l2) | (e3&e2&l1) | (e3&e2&e1&l0).
