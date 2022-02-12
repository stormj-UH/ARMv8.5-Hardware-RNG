.arch armv8.5-a+memtag+rng
; This instruction set avaialbe on M1 has hardware random number generation!
; Do they automatically use the vector registers??
; We'll just add a macro here to insert byte literals.
.macro RNDR Xregister_in_hex
    .dword 0xD53B2400 | \Xregister_in_hex
.endm
RNDR 0x14
/* 
opCode              
0b110101010011
then 
op0	    op1	    CRn	    CRm	    op2
0b11	0b011	0b0010	0b0100	0b000

and then following both of those:

0bxxxx where xxxx is x0-31

op0=3 is equivalent to o0=1, final form:

0xD53B2400 & x[0..31]

*/
