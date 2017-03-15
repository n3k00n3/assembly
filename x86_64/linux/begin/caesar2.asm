;---------------------------------------------------
; Second version
; usage: ./caesar message key
;---------------------------------------------------

[BITS 64]

section .data
  usageMessage: db 'usage: ./caesar <message> <key>', 0x0a, 0x00
  lenMessage: equ $-usageMessage

section .text
  global main

main:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20 

  mov [rbp-0x04], edi
  mov [rbp-0x10], rsi
  cmp edi, 0x03
  jl usage

strtoint:
  mov rax, [rsi+0x10]
  mov rax, [rax]
  sub al, 0x30
  mov [rbp-0x4], al
    
  mov rdi, [rsi+0x08]
  call stringlen 
  jmp caesar

  ;print message
  mov rax, 0x01
  mov rdi, 0x01
  mov rsi, [rsi]
  mov rdx, 0x04
  syscall

  jmp exit

usage:
  mov rax, 0x01
  mov rdi, 0x01
  mov rsi, usageMessage
  mov rdx, lenMessage
  syscall

  jmp exit

stringlen:
  push rbp
  mov  rbp, rsp
  sub  rsp, 0x8
  xor rcx, rcx

  .nextchar:
    cmp byte [rdi+rcx], 0x00
    je .exitstrlen
    inc ecx
    jmp .nextchar

  .exitstrlen:
    mov rax, rcx
    mov rsp, rbp
    pop rbp
    ret
         
caesar:
  xor rcx, rcx
  mov rsi, rdi
  dec rax
  mov rdx, [rbp-0x4]
  
  .addkey:
    cmp byte [rsi+rcx], 0x41
    jb .nextelement
    cmp byte [rsi+rcx], 0x7a
    ja .nextelement
    add byte [rsi+rcx], dl
  .nextelement:
    cmp rcx, rax
    je printmessage
    inc rcx
    jmp .addkey

printmessage:
  inc rcx
  mov rax, 0x1
  mov rdi, 0x1
  mov rdx, rcx
  syscall 

exit:
  mov rsp, rbp
  pop rbp
  ret

