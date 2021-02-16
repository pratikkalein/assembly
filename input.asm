section.data
msg db "Enter no",10
len equ $-msg

section.bss
num resb 2

section.text
global _start
_start:
mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,len
syscall

mov rax,0
mov rdi,0
mov rsi,num
mov rdx,2
syscall

mov rax,60
mov rdi,0
syscall
