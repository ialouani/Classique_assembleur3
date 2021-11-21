        section .text
	global bulle
bulle:
	push rbp
	mov r8,rsi
	;demarrer la boucle FOR direct.
boucle:

				;comparaison des elements 2 a 2 de 0 à r8(<)
	mov r9,0 		;compteur de boucle
			;on va faire une comparaison entre t[r9] et t[r9+1]
  ;pour r9 allant de 0 à r8-2
	dec r8
	dec r8
	mov r10,r8
	inc r8
	inc r8
				
boucle1:
	;demarrer la comparaison entre [rdi+r9*8] et [rdi+(r9+1)*8]			;(rdi + r9*8 +8 et rdi +r9*8 avec r9 comme ceci conne pq.//)
	lea r11,[rdi+r9*8]
	inc r9
	lea r12,[rdi+r9*8]
	dec r9
	mov r13,[r11]
	mov r14,[r12]
	cmp r13,r14
	jg faire
	jng suite1
	
suite1:
        inc r9
	;la boucle démarre de r9 à r10 (inclus)
	cmp r9,r10
	jg suite2
        jle boucle1
faire:
	xchg [r11],r14
	xchg [r12],r13
	inc r9
	cmp r9,r10
	jg suite2
        jle boucle1
suite2:
	;ici c'est la fin de la boucle on a parcouru tous les elements
	;de r9 à r10==r8-2.

				;où s'arretera la comparaison
	dec r8
	cmp r8,2
	jl fin
        jge boucle

fin:
	pop rbp
	ret
