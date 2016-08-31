;---------------------------------------------------------------
; challenge from Book Asm Language step by step(Jeff Duntemann)
; This code follows the convention used in into asm codes
;---------------------------------------------------------------

section .bss

    buffer resb 1

section .text

    global main

main:

    push rbp
    mov rbp, rsp

    read: mov rax, 0x3
          mov rbx, 0x0          ;stdin
          mov rcx, buffer
          mov rdx, 0x1          ;Only one chr
          int 80h

          cmp rax, 0x0
          je exit

    scan: cmp byte [buffer], 0x61 ; 61h represents 'a' in ascii code
          jb write
          cmp byte [buffer], 0x7a ;7Ah represents 'z' in ascii code
          ja write

          sub byte [buffer], 0x20

    write: mov rax, 0x4
           mov rbx, 0x1
           mov ecx, buffer
           mov edx, 0x1
           int 80h
           jmp read

    exit:
          mov rsp, rbp
          pop rbp
          ret
