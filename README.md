# M1-Hardware-RNG
Implements the M1's Hardware Random Number Generator in ARM assembly.

Import this macro into your assembler file and then call it like this:
RNDR [0-31] 

for example, if you want to put a random number in x14
RNDR #14
