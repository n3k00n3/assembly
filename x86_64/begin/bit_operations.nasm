;-------------------------------------------------------
;       Code to see how works bit operations
;       I am analysing my codes using GDB
;        You can use another debugger
;-------------------------------------------------------

global main

section .text

main:

    push rbp
    mov rbp, rsp

    xor rax, rax
    mov ax, 0xa
    shl ax, 0x1
    shl ax, 0x1
    shl ax, 0x2
    
    mov ax, 0x20
    shr ax, 0x1
    shr ax, 0x1
    shr ax, 0x2

    mov rsp, rbp
    pop rbp
    ret
