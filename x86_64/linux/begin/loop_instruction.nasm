;-------------------------------------------------------------------------------
;                        :: Using the instruction loop ::
;-------------------------------------------------------------------------------

global main

section .text

main:
    ;prologue
    push rbp
    mov  rbp, rsp
    mov  rcx, 0xa

printMessage:
    push rcx

    ;print the message
    mov rax, 0x1
    mov rdi, 0x1
    mov rsi, hello
    mov rdx, len
    syscall

    pop   rcx
    loop  printMessage

    ;epilogue
    mov rsp, rbp
    pop rbp
    ret

section .data
    hello: db 'Hello Word!', 0xa
    len:   equ $-hello
