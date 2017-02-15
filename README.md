# asm-study

This is a simple repo with my asm codes.

I am saving some pieces of codes to understand how its works, some programs and shellcods

I am not a nASM Guru. I am a beginner yet, so if you find mistakes, please show me that.

## how to compile the codes

I am using nasm and gcc to compile my codes

```
nasm -f elf64 file.asm

```

```
gcc file.o -o file

```
## Adding intel syntax in GDB

```
echo "set dis intel" > ~/.gdbinit
```

## To see how instruction works i am using GDB

```
gdb file -q

```
To see the registers use this

```
layout regs
```
## Conventions

###syscall numbers: /usr/src/linux/include/asm-x86_64/unistd.h
 1. kernel parameters:
 2. r9; 6th param
 3. r8; 5th param
 4. r10; 4th param
 5. rdx; 3rd param
 6. rsi; 2nd param
 7. rdi; 1st param
 8. rax; syscall_number
 9. syscall

###return register:

 1. rax; 1st 
 2. rdx; 2nd

### preserved accross function call: RBX RBP ESP R12 R13 R14 R15

### function parameter (when linked with external libraries):
 
 1. r9; 6th param
 2. r8; 5th param
 3. rcx; 4th param
 4. rdx; 3rd param
 5. rsi; 2nd param
 6. rdi; 1st param
 7. call library
