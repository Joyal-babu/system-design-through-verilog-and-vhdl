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
                     
                     
                     

>4 BIT COMPARATOR

![4 bit comparator](https://user-images.githubusercontent.com/123290522/232124281-c30784fb-610a-4fdb-9dad-b0456a23adfc.jpeg)
>> [CLICK HERE](https://circuitverse.org/simulator/edit/4-bit-comparator-f3a26db6-48b1-42b4-9635-719672e68cad) to launch the circuit.
-------
>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/232124319-259f8d38-134e-428a-9fde-6688e60999e7.png)
