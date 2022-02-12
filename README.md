# M1-Hardware-RNG
Implements the M1's Hardware Random Number Generator in ARM assembly.

Import these macros into your assembler file and then call it like this:
RNDR [0-31] 

for example, if you want to put a random number in x14:
RNDR #14

if you want the reseeded RNG call it like this:
RNDRRS [0-31]

for example, if you want to put the random reseeded number in x14:
RNDRRS #13

Here is the disassembled code (objdump -d):

Disassembly of section __TEXT,__text:

0000000000000000 <ltmp0>:
       0: 14 24 3b d5  	mrs	x20, S3_3_C2_C4_0
       4: 00 00 00 00  	udf	#0
  
That is the correct instruction in Little Endian.
