	    AREA task5, CODE, READONLY
		ENTRY
		EXPORT main

sum1 PROC
	POP {lr}
	POP {r5, r6}
	PUSH {lr}
	MUL r6, r5, r6
	PUSH {r5, r6}
	BX lr
	ENDP

sum2 PROC
	PUSH {lr}
	BL mult
	POP {r2, r3} 
	ADD r4,r2,r3
	PUSH {r4}
	POP {lr}
	BX lr
	ENDP

main
	MOV r0, #3
    BL sum
	
    B Stop
Stop B Stop
 END