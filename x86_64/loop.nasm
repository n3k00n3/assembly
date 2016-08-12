;--------------------------------------------------------
;                   :: Simple Loop ::
;nasm -f elf64 loop.nasm -o loop.o && gcc loop.o -o loop
;--------------------------------------------------------

global main

section .text

main:
    ;prologue
    push rbp
    mov rbp, rsp
    jmp starting_loop

starting_loop:
    mov rax, 0xa

printMessage:
    push rax

    ;print the message
    mov rax, 0x1
    mov rdi, 0x1
    mov rsi, hello
    mov rdx, len
    syscall

    pop rax

    ;rax -1
    dec rax
    jnz printMessage

    ;epilogue
    mov rsp, rbp
    pop rbp
    ret

section .data
    hello: db 'Hello Word', 0xa
    len:   equ $-hello
