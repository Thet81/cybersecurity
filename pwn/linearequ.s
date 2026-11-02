.intel_syntax noprefix

# f(x) = mx +b
# m = rdi
# x = rsi
# b = rdx
# place the result into rax

imul rsi,rdi
add rsi,rdx
mov rax, rsi
