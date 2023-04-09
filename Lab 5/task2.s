	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 6
y DCD 7

sum
	POP {r2, r3}
	ADD r4,r2,r3	; adding the arguments
	PUSH {r4}		; pushing the result
	MOV PC, LR		; returning to the main

main
	LDR r0, =x
	LDR r0, [r0]	; loading the value of x
	LDR r1, =y		
	LDR r1, [r1]	; loading the value of y
    PUSH {r0, r1}	; pushing the values as arguments
    BL sum			; calling the function
	POP {r5}		; saving the result in r5
	
    B Stop
Stop B Stop
 END		 