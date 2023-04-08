	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

sum
	POP {r2, r3}
	PUSH {lr}
	ADD r0,r2,r3
	POP {lr}
	PUSH {r0}
	BX lr

main
    MOV r0, #6 
	MOV r1, #7
    PUSH {r0, r1}
    BL sum
	POP {r5}
	
    B Stop
Stop B Stop
 END		 