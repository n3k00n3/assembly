[BITS 64]

%macro prologue 0
  push
  mov rbp, rsp
%endmacro

%macro epilogue 0
  mov rsp, rbp
  pop rbp
  ret
%endmacro
 
;allocating bytes into stack
%macro alloc 1
  sub rsp, %1
%endmacro
