In these circuit,ie parrallel adder/substractor uses 2's COMPLIMENT method  for substraction.A control signal "M" is used for distinguish Addition and Substraction operation.

  M=0 -> ADDITION
  
  M=1 -> SUBSTRACTION 

When M=0, the output of 4 XOR Gates (X1,X2,X3,X4) will be same as the input to them, ie the second operand (B1).

When M=1, the output of 4 XOR Gates (X1,X2,X3,X4) will be same as the 1'S COMPLIMENT of the input to them, ie the second operand (B1).we then ADD 1(M) with the LSB.This will give as the 2'S COMPLIMENT.

### Conditions for EAC

1.If EAC=1 after addition then this EAC is transferred to the lower RCA stage MSB (Sum2[4],The final result will be 5 bit).

2.If EAC=1 after subtraction then EAC is simply neglected(result is positive, Just transfer the result from first RCA stage to second RCA           stage, no need to find the 2's COMPLIMENT to get the final result).The output of the 4 XOR Gates (X5,X6,X7,X8) will be the same as the input to     them, ie the final result.

3.If EAC=0 after subtraction then the result is negative(need to find the 2's COMPLIMENT to get the final result).The output of the 4 XOR Gates     (X5,X6,X7,X8) will be the 1's COMPLIMENT of the input to them, 1(M1) is added to the LSB to get the final result ie 2's COMPLIMENT of the first   stage result.

This conditions are achieved using 8 XOR gates(X1-X8),2 NOT gates(N1,N2) and 2 AND gates(G1,G2).

The second RCA stage is actually used to find the 2's compliment if the result is negative, with one of its inputs always 0(G).




