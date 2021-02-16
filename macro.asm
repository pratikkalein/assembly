%macro write 2
mov rax,1
mov rdi,1
mov rsi,%1
mov rdx,%2
syscall
%endmacro
%macro read 2
mov rax,0
mov rdi,0
mov rsi,%1
mov rdx,%2
syscall
%endmacro
section .data
msg db "Enter no",10
len equ $-msg
section .bss
num resb 2
section .text
global _start
_start:
write msg,len
read num,6
write num,6
mov rax,60
mov rdi,0
syscall
