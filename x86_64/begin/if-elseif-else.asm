;----------------------------------------------------------------
;   This code is to show how ifs and elses works in asm code.
;----------------------------------------------------------------

section .data
section .bss

section .text
    global main

main:
    push rbp
    mov rbp, rsp
    
    xor rax, rax

    mov rax, 0x5
    mov rbx, 0xa
    mov rcx, 0x2

    cmp rax, rbx
    jle elseif
    mov rdx, 0x1
    jmp exit

elseif:
    cmp rax, rcx
    jge else
    mov rdx, 0x2
    jmp exit

else:
    mov rdx, 0x3

exit:
    mov rsp, rbp
    pop rbp
    ret

