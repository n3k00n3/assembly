;----------------------------------------------------------------
;   This code is to show how ifs and elses works in asm code.
;----------------------------------------------------------------

section .data

    max dw 0x1
section .bss

section .text
    global main

else: 
    mov [max], rbx
    jmp exit

main:
    push rbp
    mov rbp, rsp
    
    xor rax, rax

    mov rax, 0x5
    mov rbx, 0xa

    cmp rax, rbx
    jle else
    mov [max], rax

exit:
    mov rsp, rbp
    pop rbp
    ret

