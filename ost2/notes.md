

### Call Procedure 

CALL's job is to transfer control to a different function; in a way that control can later be resumed where it left off.

- First it pushes the address of the next instruction onto the stack.
  For use by RET for when the procedure is done
- Then it changes RIP to the address given in the instruction.


### RET - Return from Procedure 

#### Two forms
 - Pop the top of the stack into RIP (remember, pop implicitly increments stack pointer, RSP)
   ( In this form, the instruction is just written as 'ret' )
 - Pop the top of teh stack into RIP and also add a constant number of bytes to RSP
   ( In this form, the instruction is written as 'ret 0x08', or 'ret 0x20' ,etc)