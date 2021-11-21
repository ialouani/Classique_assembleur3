	section .text
	global inverse
inverse:
	push rbp
	mov r8,rsi
	shr r8,1
	mov r9,r8
boucle:
	;il faut recuperer l'adresse rdi+(r9-r8)*8 (tout a gauche --element)
	sub r9,r8	;r9 devient r9-r8	
	lea r11,[rdi+r9*8]
	add r9,r8
	;il faut recuperer l'adresse rdi-r9+r8-1 (tout a droite --element)
	inc r9
	sub r8,r9 		;r8=r8-r9-1
	add r8,rsi
	;rdi-1 puis rdi-2 alors qu'on devrait avoir rdi+rsi*8-1 ..
	lea r13,[rdi+r8*8]
	sub r8,rsi
	add r8,r9		;r8=r8-1
	dec r9
	
		;dorenavent r11 a gauche et r13 a droite dont les valeurs
				; doivent etre permutees.
	mov r14,[r11]
	mov r15,[r13]
	mov [r11],r15
	mov [r13],r14
	dec r8
	cmp r8,1
	jl fin
	jnl boucle
fin:
	mov rax,1
	pop rbp
	ret
