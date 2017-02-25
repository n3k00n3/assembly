;-----------------------
; Memory data examples
;-----------------------

section .data
    a dd 4
    b dd 4.4
    c times 10 dd 0x0
    d dw 1,2
    e db 0xfb
    f db "MemoryExample", 0x0a, 0x00
    j times 10 dq 0x0
    k db "Another String", 0x0a, 0x00

section .bss
    g resd 1
    h resd 10
    i resb 100
    l resw 5

section .text

    global main

    main:
        push rbp
        mov rbp, rsp
        sub rsp, 0x16

        xor eax, eax
        leave
        ret
