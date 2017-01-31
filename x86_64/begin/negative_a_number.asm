
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

