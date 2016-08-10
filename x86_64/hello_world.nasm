;------------------------------------------------------
;           This is a simple Hello world!
; nasm -f elf64 -o hello.o && ld hello.o -o HelloWorld
;------------------------------------------------------

global _start

section .text

_start:

    ;prologue
    push rbp
    mov rbp, rsp
    mov rsp, 0x20

    ;print the hello_world_label
    mov al, 1
    mov rdi, 1
    mov rsi, hello_world
    mov dl, len
    syscall

    ;exit with status 0
    mov rax, 60
    xor rdi, rdi

section .data

  hello_world: db 'Hello World',0xa
  len: equ $-hello_world

