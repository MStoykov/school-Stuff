data segment para public 'data'
message db 'Hello World!$'
data ends
stk	segment	stack
	db	256 dup('?')
stk	ends
code	segment	para public 'code'
	assume cs:code,ds:data,ss:stk
main:	mov ax,data
	mov ds,ax
	mov ah,9
	mov dx, offset message
	int 21h
	mov ax,4c00h
	int 21h
code	ends
end 	main

