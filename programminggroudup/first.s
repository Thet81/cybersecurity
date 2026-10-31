#purpose : Simple program taht exits and returns a status code back to the linux kernel
#input : none
# output : returns a steatus code. This can be viewed by typing echo $?
# %eax holds the system call number
# %ebx holds that return status

.section .text
.global _start

_start:
movl $1, %eax
movl $153, %ebx
int $0x80
