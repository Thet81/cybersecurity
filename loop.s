.intel_syntax noprefix
.global _start

_start:

mov rsi,[rsp+16]
mov rcx,0

loop:
    mov al, BYTE PTR[rsi]
    cmp al, 0x0
    je success
    inc rsi
    inc rcx
    jmp loop

success:
    mov rdi,rcx
    mov rax,60
    syscall

