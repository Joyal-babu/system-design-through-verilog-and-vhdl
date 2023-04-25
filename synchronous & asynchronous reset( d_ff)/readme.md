<h2>RESET</h2>

Reset is a signal that is used to initialize the hardware, as the design does not have a way to do self initialization. That means, reset forces the design to a known state.
In simulation, usually it is activated at the beginning, but in real hardware, reset is usually activated to power up the circuits.

There are two types of resets used in hardware designs. They are synchronous and asynchronous resets.

<H2>SYNCHRONOUS RESET</H2>

Synchronous reset means reset is sampled with respect to clock. In other words, when reset is enabled, it will not be effective till the next active clock edge.
To get the effect of reset, reset should be wide enough to be captured by the next posedge of clk.
 
     In the above example, q1 will be changed only with the posedge of clk.

<H4>ADVANTAGES</H4>

   1. Gives a completely synchronous circuit.
   2. Provides filtering for the reset signal, So circuit will not be affected by glitches.

<H4>DISADVANTAGES</H4>

   1. Reset needs to be stretched, if it is not long enough to be seen at the active clock edge.
   2. Requires presence of clock to reset the circuit.
   3. It is slow.
   4. Synthesis will not be able to easily differentiate reset from other signals. So this has to be taken care while doing synthesis. Otherwise it may lead to timing issues.


<h2>ASYNCHRONOUS RESET</h2>

In asynchronous reset, reset is sampled independent of clk. That means, when reset is enabled it will be effective immediately and will not check or wait for the clock edges.
 
       In the above example, q2 is following an asynchronous reset.
       
<H4>ADVANTAGES</H4>

  1. Reset gets the highest priority.
  2. It is fast.
  3. Does not require presence of clock to reset the circuit.

<H4>DISADVANTAGES</H4>

  1. Reset line is sensitive to glitches.
  2. May have metastability issues

>WAVEFORM

![waveform](https://user-images.githubusercontent.com/123290522/234358146-f8523c8b-e428-41d5-8b97-c4e946339454.png)








