# PLT trampoline for lazy binding
    .text
    .globl trampoline
    .hidden trampoline
    .type trampoline, @function
    .align 16

trampoline:

# Your code here
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    movq %rdi, (%rsp)
    movq %rsi, 8(%rsp)

    movq 24(%rsp), %rdi
    movq 32(%rsp), %rsi

    call runtimeResolve
    movq (%rsp), %rdi
    movq 8(%rsp), %rsi
    addq $16, %rsp

    call *%rax

    pop %rbp
    pop %rdi
    pop %rsi
    ret

# Your code here
