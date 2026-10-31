# %edi - Holds the index of the data item being examined
# %ebx - Largest data item found
# %eax - Current data item

.section .data

data_items:
  .long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

  .section .text

.globl _start

 _start:
  # assign 0 to edi register
  movl $0, %edi
  # grab one number at a time and assign that number to eax
  movl data_items(,%edi,4), %eax
  # assign current the current value from eax to ebx
  movl %eax, %ebx
  
  start_loop: 
    # compare the value within eax with 0
    cmpl $0, %eax
    # if the value is equal to 0 exit (jump equal) 
    je loop_exit
    # increment the value of edi
    incl %edi
    # update the current value within eax
    movl data_items(,%edi,4), %eax
    # compare the value from ebx to the value from eax
    cmpl %ebx, %eax
    # start the loop from the beginning if the comparison is less than or equal
    jle start_loop
    movl %eax, %ebx
    jmp start_loop

  loop_exit:
    movl $1, %eax
    int $0x80















