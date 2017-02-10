;--------------------------------------------
; This is another way to write array in asm
;--------------------------------------------


section .data
    a: db "abcde", 0xa
    len: equ $-a

section .bss
    b: resb len

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    mov rsi, a
    mov rdi, b
    mov rcx, len

nextElement:
    lodsb
    stosb
    loop nextElement

exit:
    mov rsp, rbp
    pop rbp
    ret
