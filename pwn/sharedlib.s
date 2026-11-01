.intel_syntax noprefix
.global solve

solve:
    # --- 1. Prepare standard sys_write(1, flag_buffer, length) ---
    # The harness passed: rdi = flag_buffer, rsi = length
    
    mov rdx, rsi        # Move the length into RDX (3rd argument for write)
    mov rsi, rdi        # Move the flag buffer pointer into RSI (2nd argument for write)
    mov rdi, 1          # Set RDI to 1 for stdout (1st argument for write)
    mov rax, 1          # System call number 1 is sys_write
    syscall             # Execute the write system call

    # --- 2. Prepare sys_exit(0) ---
    mov rdi, 0          # Exit code 0 (clean exit)
    mov rax, 60         # System call number 60 is sys_exit
    syscall             # Execute the exit system call
