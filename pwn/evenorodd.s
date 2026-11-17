
.intel_syntax noprefix

.global solve
.global _start

_start:
    mov rdi,2
    call solve
    mov rdi,rax
    mov rax,60
    syscall

solve:
    mov rdx,rdi
    and rdx,0x00000001
    cmp rdx,0x00000001
    jne even
    mov rax,0
    ret

even:
    mov rax,1
    ret
