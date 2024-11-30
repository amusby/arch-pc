%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
fx: db 'f(x)= 2(x - 1)',0

SECTION .text
global _start
_start:
mov eax, fx
call sprintLF
pop ecx 
pop edx
sub ecx,1
mov esi, 0

next:
cmp ecx,0h
jz _end 
pop eax
call atoi
call _proc
add esi,eax

loop next

_end:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit

_proc:
sub eax,1
mov ebx,2
mul ebx
ret