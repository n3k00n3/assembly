;---------------------------------------------------------------------
;               This a simple skeleton of asm code
; This file is a skeleton that can be used to start assembly programs.
;---------------------------------------------------------------------

global main

section .text

main:

    push rbp
    mov  rbp, rsp

    mov rax, 42
    neg rax
    add rax, 42


    mov rsp, rbp
    pop rbp
    ret

section .data
    
    snippet db "KANGAROO"


section .bss
;
; uninitialized dais put in the bss segment
