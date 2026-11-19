.intel_syntax noprefix

.global _start

_start:
 mov rax,[rsp+16]
 mov rdi, [rax]
 mov rax,60 
 syscall
