;-----------------------------------------
; This code is a simple array in asm
;-----------------------------------------

section .data
    a: db "abcd", 0xa
    len: equ $-a

section .bss
    b: resb len

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    xor rcx, rcx
    mov rsi, [a]
    mov rdi, [b]
    mov rdx, len

more:
    mov rax,[a+rcx]
    mov [b+rcx], rax
    inc rcx
    cmp rcx, rdx
    jne more
    xor eax, eax

    ;print b
    mov rax, 1
    mov rdi, 1
    mov rsi, b
    mov rdx, len
    syscall

exit:
    mov rsp, rbp
    pop rbp
    ret
