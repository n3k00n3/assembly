;-------------------------------------------------------------------
;                   Math using asm language
;--------------------------------------------------------------------

global main

section .text

main:
    push  rbp
    mov   rbp, rsp

    xor   rax, rax
    mov   rax, 2
    mov   rbx, [var2]

    ;add number
    add   rax, 0x2
    add   rbx, 0x5
    add   rbx, 0xc
    inc   rax

    ;sub number
    sub   rbx, rax
    dec   rbx

    ;multiplication
    mov   rax, 10
    mul   rax  ;rax * rax = 10 * 10
    mul   rbx ;rax * rbx = 100 *14

    ;division
    mov   rax, 10
    mov   rbx, 2
    div   rbx ; rax / rbx = 10 / 2 = 5

    mov   rsp, rbp
    pop   rbp
    ret

section .data

    var1: dw 2
    var2: dw 3
