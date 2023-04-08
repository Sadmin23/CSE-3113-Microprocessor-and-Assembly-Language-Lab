	    AREA task5, CODE, READONLY
		ENTRY
		EXPORT main

sum1 PROC
	PUSH {lr}
	ADD r0, r0, #1
	POP {lr}
	BX lr

sum2 PROC
	PUSH {lr}
	BL sum1
	BL sum1
	POP {lr}
	BX lr
main
	MOV r0, #3
    BL sum2
	MOV r6, r0
	
    B Stop
Stop B Stop
 END