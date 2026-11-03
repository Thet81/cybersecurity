
What are the differences between these twos?

mov rax,[0x1123afg]
mov rax,0x1123afg

mov rax,[0x1123afg] is called **Memory Dereference**. It looks at the memory address 0x1123afg, reads the 8-bytes value stored inside that address, and loads that into rax

mov rax,0x1123afg is called **Immediate Value**. It copies number 0x1123af directly into the rax register.

• mov rax, 0x1123af is like writing the box number "1123af" on a piece of paper and putting it in your pocket (rax).
• mov rax, [0x1123af] is like walking over to box number 1123af, opening it up, taking out whatever letters are hiding inside, and putting those letters in your pocket (rax).
