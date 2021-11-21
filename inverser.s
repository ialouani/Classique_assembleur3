	section .text
	global inverse
inverse:
	push rbp
	mov r8,rsi
	shr r8,1
	mov r9,r8
boucle:
	sub r9,r8
	lea r10,[rdi+r9*8]
	add r9,r8
	mov r11,[r10]
	inc r9
	sub r8,r9
	add r8,rsi
	lea r13,[rdi+r8*8]
	sub r8,rsi
	add r8,r9
	dec r9
	mov r12,[r13]
	mov [r13],r11
	mov [r10],r12
	dec r8
	cmp r8,1
	jge boucle
fin:
	pop rbp
	ret
