One of the main disadvantages of standard digital encoders is that they can generate the wrong output code when there is more than one input present at logic level “1”.
Another disadvantage is that it is not configured to give an output when none of the inputs are logic "1".

To overcome these disadvantages we use ### PRIORITY ENCODERS.

4x2 priority encoder got 4 inputs and 2 outputs 

INPUTS - x3, x2, x1, x0 
OUTPUTS - y1, y0

Among the four inputs 'x3' got the highest priority and 'x0' got the lowest priority.If x3 is HIGH then the priority encoder will give an output of [1:0]y = 11 without checking the other inputs.

#### PRIORITY LIST    -    X3>X2>X1>X0

And we assign don't care values to the output whenever none of the inputs are HIGH.

