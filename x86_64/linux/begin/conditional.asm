
global main

section .text

main:
	push rbp
	mov rbp, rsp

	mov rax, 0x1
	dec rax
	jz	label
	add rax, 0x5

label:
	add rax, 0x2
	
	mov rsp, rbp
	pop rbp
	ret


