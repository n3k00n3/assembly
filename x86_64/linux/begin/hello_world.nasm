;-------------------------------------------------------------------------
;                     This is a simple Hello world!
;--------------------------------------------------------------------------

global main

section .text

main:

    ;prologue
    push rbp
    mov rbp, rsp

    ;print the hello_world_label
    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdx, len
    syscall

    ;epilogue
    mov rsp, rbp
    pop rbp
    ret

section .data

  hello_world: db 'Hello World',0xa
  len: equ $-hello_world

