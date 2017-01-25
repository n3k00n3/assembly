;--------------------------------------------------------
;                   :: Simple Loop ::
;--------------------------------------------------------

global main

section .text

main:
    ;prologue
    push rbp
    mov rbp, rsp
	
	mov eax, 0x0
	mov ecx, 0x3

again:
	add eax, ecx
	dec ecx
	jz out
	jmp again


out:
	;epiloque
    mov rsp, rbp
    pop rbp
    ret

