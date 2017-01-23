;-------------------------------------------------------------------
;                      Mul and DiV(unsigned number)
;--------------------------------------------------------------------

global main

section .text

main:
    push  rbp
    mov   rbp, rsp

    mov   eax, 0x00000003
    mov   edx, 0xAB1E2FFF
    mov   rcx, 0x00000002

    mul   ecx
    mul   ecx
    mov   ax, 0xEEEE
    mul   ax
    mul   cl

    mov   rsp, rbp
    pop   rbp
    ret
