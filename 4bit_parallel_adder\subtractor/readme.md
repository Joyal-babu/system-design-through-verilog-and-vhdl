Binary substraction can be done using ADDERS

* 1'S COMPLIMENT METHOD
* 2'S COMPLIMENT METHOD

### 1'S COMPLIMENT METHOD

   Keep the first binary digit as it is and ADD the 1's compliment of the other binary digit.
		
		
#### END AROUND CARRY

   * If EAC = 1 -> Then the result is POSITIVE - TO get the final result ADD the EAC to LSB of summation result.
   * If EAC = 0 -> Then the result is NEGATIVE - To get the final result take the 1'S COMPLIMENT of summation result.


### 2'S COMPLIMENT METHOD

   Keep the first binary digit as it is and ADD the 2's compliment of the other binary digit.
		
		
#### END AROUND CARRY

   * If EAC = 1 -> Then the result is POSITIVE - TO get the final result just IGNORE the EAC of summation result.
   * If EAC = 0 -> Then the result is NEGATIVE - To get the final result take the 2'S COMPLIMENT of summation result.


   **Most of the processors use 2'S COMPLIMENT type of substraction,if any intermediate overflows occurs we can simply neglect them.
	 
	 
In the above parrallel adder/substractor uses 2's COMPLIMENT method for substraction.A control signal "M" is used for distinguish Addition and Substraction operation.

  M=0 -> ADDITION 
	M=1 -> SUBSTRACTION 

When M=0, the output of 4 XOR Gates (X1,X2,X3,X4) will be same as the input to them, ie the second operand (B1).
When M=1, the output of 4 XOR Gates (X1,X2,X3,X4) will be same as the 1'S COMPLIMENT of the input to them, ie the second operand (B1).we then ADD 1(M) with the LSB.This will give as the 2'S COMPLIMENT.
