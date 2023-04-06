>Property of XOR gate

   if one of the input to a 2 input XOR gate is 0, then the output will be the second input.
  
   if one of the input to a 2 input XOR gate is 1, then the output will be the compliment of the second input.

![xor](https://user-images.githubusercontent.com/123290522/230448559-ae350860-267f-48e9-a6aa-0cb7a25542dc.jpeg)

## Binary subtraction can be done using ADDERS

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


   * Most of the processors use 2'S COMPLIMENT type of subtraction, if any intermediate overflows occurs we can simply neglect them.

>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/230449524-e31f81f9-8ba2-4c8b-8088-2ec33724ba53.png)

'cout1' is the EAC 
 cout1 = 1 => result is POSITIVE
 cout1 = 0 => result is NEGATIVE
