;----------------------------------------------------------------
;   This code is to show how ifs and elses works in asm code.
;----------------------------------------------------------------

section .data

    temp dw 1
section .bss

section .text
    global main

bla: mov rax, 50
    jmp exit

main:

    push rbp
    mov rbp, rsp

    mov rax, 15
    mov rbx, 15

    cmp rax, rbx
    jge bla
    mov [temp], rax

exit:
    mov rsp, rbp
    pop rbp
    ret

