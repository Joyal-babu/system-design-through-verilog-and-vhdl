Take two 2 bit inputs and compare them to produce three outputs,only one output high at a time.

         A=a1a0  ,   B=b1b0

         1.A=B, only if a1=b1 and a0=b0 , E=e0 & e1.
         2.A>B,      if a1>b1 or      
                     a1=b1 and a0>b0 , G=g1 | (e1&g0).
         3.A<B,      if a1<  b1 or
                     a1=b1 and a0<b0 , L=l1 | (e1&l0).



>2 BIT COMPARATOR

![2 bit comparator](https://user-images.githubusercontent.com/123290522/231825181-5cf96a24-f2b6-4208-a84c-13914466d2f2.jpeg)
>>[CLICK HERE](https://circuitverse.org/simulator/edit/2-bit-comparator-60e548cf-487b-49fc-839e-2aa87733ce24) to launch the circuit.


>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/231826245-3f01fe71-ddcd-41e3-9b3b-b765fe91dd03.png)
