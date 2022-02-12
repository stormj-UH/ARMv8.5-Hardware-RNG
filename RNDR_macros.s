.arch armv8.5-a+memtag+rng
; This instruction set avaialbe on M1 has hardware random number generation!
; Do they automatically use the vector registers??
; We'll just add a macro here to insert byte literals.

.macro RNDR register
    mrs    \register, S3_3_C2_C4_0
.endm
; example: RNDR x1

.macro RNDRRS register
    mrs    \register, S3_3_C2_C4_1
.endm
; example: RNDRRS x1
