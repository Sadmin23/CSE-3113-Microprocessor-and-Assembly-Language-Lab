	    AREA task3, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 3
y DCD 7

sum PROC
	POP {r2, r3}
	LDR r4, [r2]	; loading the value of x		
	LDR r5, [r3]	; loading the value of y
	ADD r6,r4,r5	; adding the values
	PUSH {r6}		; pushing the result
	MOV PC, LR		; return to main

main
	LDR r0, = x		; loading the address of the value x
	LDR r1, = y		; loading the address of the value y
    PUSH {r0, r1}	; pushing these address values as arguments
    BL sum			; calling the function
	POP {r7}		; saving the result in r7
	
    B Stop
Stop B Stop
 END