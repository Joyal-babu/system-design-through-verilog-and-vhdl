comparator is a logical circuit which compares the two numbers and the outcome of this comparator can be 


   1.EQUAL
   
   2.GREATER
   
   3.SMALLER

The above design takes two one bit inputs and compare them.

A=a0,  B=b0.


	1.A=B, then the xnor of a0 and b0 will give a high output.
	2.A>B, the only condition is a0=1 and b0=0. Hence G=a0 & b0_bar.
	3.A<B, the only condition is a0=0 and b0=1. Hence L=a0_bar & b0.
	




> 1 BIT COMPARATOR

![1 bit comparator](https://user-images.githubusercontent.com/123290522/231233108-cebeeb9d-8746-42c0-a453-41ca2de147ab.jpeg)
>>[CLICK HERE](https://circuitverse.org/simulator/edit/1-bit-comparator-ce862a8a-d25d-437b-a6ad-1ceb150bef04) to launch the circuit.

>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/231234172-616e404b-1548-4638-a829-7329cc90bf87.png)


# XNOR - EQUALITY DETECTOR
  If 2 input to the XNOR gate are equal then output = 1.
  
  
![xnor](https://user-images.githubusercontent.com/123290522/231228752-c76b6847-098f-4f6e-8953-8f31314fd253.jpeg)
