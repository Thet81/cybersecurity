.intel_syntax noprefix

mov rdi,1
mov rsi,[rsp+16]
mov rdx,4
mov rax,1
syscall
mov rdi,42
mov rax,60
syscall
