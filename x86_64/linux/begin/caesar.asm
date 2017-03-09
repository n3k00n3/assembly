;---------------------------------------------------
; First version - key = 1
; usage: ./caesar < message.txt > encrypted_msg.txt
;---------------------------------------------------

[BITS 64]

section .bss

    buffer resb 1

section .text

global main:

main:

    push rbp
    mov rbp, rsp

readInput:
    mov rax, 0x0
    mov rdi, 0x0
    mov rsi, buffer
    mov rdx, 0x1
    syscall

    cmp rax, 0x0
    je exit

caesar:

    cmp byte [buffer], 0x41
    jb write
    cmp byte [buffer], 0x7a
    ja write

    add byte [buffer], 0x1

write:
    mov rax, 0x1
    mov rdi, 0x1
    mov rsi, buffer
    mov rdx, 0x1
    syscall

    jmp  readInput

exit:
    mov rsp, rbp
    pop rbp
    ret

