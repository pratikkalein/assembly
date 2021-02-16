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
msg db "enter first no",10
len equ $-msg
msg1 db "enter second no",10
len1 equ $-msg1
msg2 db "the subtraction is",10
len2 equ $-msg2

section .bss
num1 resb 2
num2 resb 2
sum resb 1

section .text
global _start
_start:
write msg,len
read num1,2
write msg1,len1
read num2,2

mov rax,[num1]
sub rax,30h
mov rbx,[num2]
sub rbx,30h
sub rax,rbx
add rax,30h
mov [sum],rax
write msg2,len2
write sum,1

mov rax, 60
mov rdi, 0
syscall