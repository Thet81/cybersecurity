.intel_syntax noprefix
.global _start
start:
 lea rax,[rax]
 mov rdi,rax
 mov rax,60
 syscall
