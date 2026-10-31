.intel_syntax noprefix

mov rax,[rax+16]
cmp BYTE PTR [rax], 42
setz dil
mov rax,60
syscall
