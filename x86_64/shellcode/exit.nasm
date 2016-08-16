;-------------------------------------------------------------
;                    First Shellcode
;-------------------------------------------------------------

global _start

section .text

_start:
    
    xor rax, rax
    mov ax, 60
    mov di, 11
    syscall
    
