; How to run assembler code on Linux
; nasm -f elf64 helloworld.asm -o helloworld.o
; ld helloworld.o -o helloworld
; ./helloworld

section .data
	msg db "Hello, World!", 10

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 14
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall
