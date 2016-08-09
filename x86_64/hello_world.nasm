global _start

section .text

    _start:
        ;print the hello_world_label

        mov al, 1
        mov rdi, 1
        mov rsi, hello_world
        mov dl, length
        syscall

        ;exit the binary
        mov al, 60
        mov rdi, 11
        syscall

section .data

    hello_world: db 'Hello World',0xa
    length: equ $-hello_world

