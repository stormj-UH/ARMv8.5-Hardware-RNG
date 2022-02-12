# ARMv8.5-Hardware-RNG
Implements the ARMv8.5 Hardware Random Number Generator in ARM assembly.

Import these macros into your assembler file and then call it like this:
RNGR x[0-32]
RNGRRS x[0-32]

For example:
       RNGR x1       ; load 64 random bits into 64-bit register x1
       RNGRRS x2     ; load 64 re-seeded random bits into 64-bit register x2
