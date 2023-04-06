<h1>Implementing Ripple carry adder by instantiating full adders.</h1>

>'n' bit RCA require 'n' full adders

Ripple carry adder also has some drawback called carry propagation

 To get the carry and final sum, it will take the propagation
 delay of 'n' fulladders.To avoid these we use CARRY LOOK AHEAD ADDER.
 
 NB: can go with half adder instead of full adder fa1.
     when using full adder cin is fixed at logic zero.

![4 bit RCA](https://user-images.githubusercontent.com/123290522/229582767-abd77251-a1c6-48fa-968a-f2c1f220d458.png)
