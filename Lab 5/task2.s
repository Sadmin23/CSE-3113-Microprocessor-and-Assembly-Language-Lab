	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 6
y DCD 7

sum
	POP {r2, r3}
	ADD r4,r2,r3
	PUSH {r4}
	MOV PC, LR

main
	LDR r0, =x
	LDR r0, [r0]
	LDR r1, =y
	LDR r1, [r1]
    PUSH {r0, r1}
    BL sum
	POP {r5}
	
    B Stop
Stop B Stop
 END		 