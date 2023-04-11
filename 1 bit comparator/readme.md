comparator is a logical circuit which compares the two numbers and the outcome of this comparator can be 
   1.EQUAL
   2.GREATER
   3.SMALLER

The above design takes two one bit inputs and compare them.

A=a0,  B=b0.


	1.A=B, then the xnor of a0 and b0 will give a high output.
	2.A>B, the only condition is a0=1 and b0=0. Hence G=a0 & b0_bar.
	3.A<B, the only condition is a0=0 and b0=1. Hence L=a0_bar & b0.


# XNOR - EQUALITY DETECTOR
  If 2 input to the XNOR gate are equal then output = 1.