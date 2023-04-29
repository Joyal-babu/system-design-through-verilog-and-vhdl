One of the main disadvantages of standard digital encoders is that they can generate the wrong output code when there is more than one input present at logic level “1”.
Another disadvantage is that it is not configured to give an output when none of the inputs are logic "1".

To overcome these disadvantages we use PRIORITY ENCODERS.

4x2 priority encoder got 4 inputs and 2 outputs 

INPUTS - x3, x2, x1, x0 
OUTPUTS - y1, y0

Among the four inputs 'x3' got the highest priority and 'x0' got the lowest priority.If x3 is HIGH then the priority encoder will give an output of [1:0]y = 11 without checking the other inputs.

#### PRIORITY LIST    -    X3>X2>X1>X0

And we assign don't care values to the output whenever none of the inputs are HIGH.

>TRUTH TABLE

![4x2 priority encoder TT](https://user-images.githubusercontent.com/123290522/233391555-723c4295-eb6f-4a3f-aa0c-610f98997852.jpg)

------
>4X2 PRIORITY ENCODER

![4x2 priority encoder (1)](https://user-images.githubusercontent.com/123290522/233391637-1c8df245-cfb1-4ef2-b2ab-150e1e320fe5.jpeg)
>> [CLICK HERE](https://circuitverse.org/simulator/edit/4x2-priority-encoder-6798ca46-193d-48ea-b1de-019b446fe15a) to launch the circuit.
------

>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/233391697-1add9cd5-777e-42b2-9d8d-2d84145d0174.png)
