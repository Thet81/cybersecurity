.intel_syntax noprefix

mov rdi,1
mov rsi,[rsp+16]
mov rdi,rsi
mov rax,60
syscall
