	extern printf
	section .text
	global print
print:
	;; rdi vaut 149
	;; le 2ieme argument de printf vaudra l'argument d'entrée a savoir rdi
	mov rsi,rdi
	;; rdi vaudra "%d" comme on faut dans printf
	;; mov rdi,B met dans rdi l'adresse du contenu de tout B.
	mov rdi,B
        push rbp 
	call printf
        pop rbp
	ret
section .data
B:	db "%d",10 		;10 signifie "%d\n"
	
