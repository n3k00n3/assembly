;----------------------------------------------
; This is simple bitwise to see how this works
-----------------------------------------------
section .data
section .bss

section .text
    global main

main:

    push rbp
    mov  rbp, rsp

    ;using not
    ;pay attention not != neg
    ;neg instruction also adds 1 after the bit flip!
    ;neg makes two's complement
    mov al, 10011101b
    not al              ;al = 01100010b

    ;using and
    mov al, 11110000b
    mov dh, 11001100b
    and al, dh          ;al = 11000000b

    ;using or
    mov al, 11110000b
    mov dh, 11001100b
    or al, dh           ;al = 11111100b

    ;using xor
    mov al, 11110000b
    mov dh, 11001100b
    xor al, dh          ;al = 00111100b
    mov al, 11111111b
    xor al, al ;al = 0 | Has shorter enconding than mov eax, 0

    mov rsp, rbp
    pop rbp
    ret

