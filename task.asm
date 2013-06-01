.386
.model flat, stdcall
option casemap:none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
NUM equ 8
.data
dil db 'divided',0
ndil db 'not divided',0
.code
start:
mov eax,NUM
mov edx,0
mov ebx,4
div ebx
cmp edx,0 ; check remnant
jz y
invoke StdOut,addr ndil
jmp exit
y:
invoke StdOut,addr dil
exit:
invoke ExitProcess,0
end start