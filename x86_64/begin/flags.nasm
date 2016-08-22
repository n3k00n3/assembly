;---------------------------------------------------------------------
;           Program to use CMP and see how CF and ZF works
;---------------------------------------------------------------------

global main

section .text

main:

    push rbp
    mov  rbp, rsp

    ; using different values
    mov  rax, 11
    mov  rbx, 15
    cmp  rbx, rax

    ;using the same value
    clc
    mov  rax, 10
    mov  rbx, 10
    cmp  rbx, rax


    mov rsp, rbp
    pop rbp
    ret

