.intel_syntax noprefix

.global _start

_start:
 mov rdi,40
 mov rsi,5
 call sum
 mov rdi,rax
 mov rax,60
 syscall

sum:
 mov rax,rdi
 add rax,rsi
 ret
