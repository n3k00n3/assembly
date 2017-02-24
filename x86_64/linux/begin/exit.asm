[BITS 64]

section .text
        global main

main:
    mov rax, 0x60
    mov rdi, 0x00
    syscall
