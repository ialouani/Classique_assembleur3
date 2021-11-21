	;; implementation de void print()
	extern printf
        section .text
	global print
print:
	mov rdi,B
	call printf 
	ret
	section .data
B:	db "Hello World",10
