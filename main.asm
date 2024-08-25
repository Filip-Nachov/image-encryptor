section .data
    hello db 'Hello World', 0x0A
    helloLen equ $ - hello

section .text
    global _start

start:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, helloLen
    syscall

    mov rax, 60
    mov rdi, rdi
    syscall
