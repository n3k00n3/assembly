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

## To see how instruction works i am using GDB

```
gdb file -q

```
To see the registers use this

```
layout regs
```

