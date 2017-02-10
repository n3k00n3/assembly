;-------------------------------------------------------
;       Code to see how works bit operations
;       I am analysing my codes using GDB
;        You can use another debugger
;-------------------------------------------------------

global main

section .text

main:

    push rbp
    mov rbp, rsp

    xor rax, rax
    mov dl, 01001100b
	mov cl, 1
	shr dl, cl ;You can use cl or small numbers
	;dl = 00100110b
	;CF = 0

	shr dl, 2
	;dl = 00001001b
	;CF = 1 

	shl dl, 3
	;dl = 01001000. You lose the last bit shifted
	;CF == 0

	mov al, 11001100b
	sar al, 2
	;al = 11110011b
	;CF = 1
	;used for signed numbers
	;sal is another name to shl instruction
	
    ;rotate shifts
    mov ax, 0xa
    rol ax, 0x1
    rol ax, 0x1
    ror ax, 0x2

    mov rsp, rbp
    pop rbp
    ret
