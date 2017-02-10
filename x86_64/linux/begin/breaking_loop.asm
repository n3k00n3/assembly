;-----------------------------------------
;		Simple break in asm
;-----------------------------------------

section .text
	global main

main:
	push rbp
	mov rbp, rsp

	mov rax, 0x0
	mov rcx, 0x0

for_loop:
	add rax, rcx
	cmp rax, 1000d
	jae end_for_loop
	
	inc rcx
	cmp rax, 300d
	jbe for_loop

end_for_loop:
	mov rsp, rbp
	pop rsp
	ret 
