.data:
    _src: .word 1000
    _dst: .word 0
    
.text:
.global _start
_start:
    lw t0, _src
    
    lui a0, %hi(_dst)
    addi a0, a0, %lo(_dst)
    
    sw t0, 0(a0)