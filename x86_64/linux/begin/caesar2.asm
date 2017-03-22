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
  global caesar

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
  xor rdx, rdx
  mov dl, al
    
  mov rdi, [rsi+0x08]
  call stringlen 
  call caesar
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
  push rbp
  mov rbp, rsp 
  xor rcx, rcx
  mov rsi, rdi
  dec rax
  
  .addkey:
    cmp byte [rsi+rcx], 0x41
    jb .nextelement
    cmp byte [rsi+rcx], 0x7a
    ja .nextelement
    add byte [rsi+rcx], dl
  .nextelement:
    cmp rcx, rax
    je .printmessage
    inc rcx
    jmp .addkey

  .printmessage:
    inc rcx
    mov rax, 0x1
    mov rdi, 0x1
    mov rdx, rcx
    syscall 

    leave
    ret

exit:
  mov rsp, rbp
  pop rbp
  ret

