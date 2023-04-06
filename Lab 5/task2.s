	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 3
y DCD 7

sum PROC
	POP {r2, r3}
	LDR r2, [r2]
	LDR r3, [r3]
	ADD r4,r2,r3
	PUSH {r4}
	BX lr
	ENDP

main
	LDR r0, = x
	LDR r1, = y
	PUSH {lr}
    PUSH {r0, r1}
    BL sum
	POP {r5}
    POP {pc}
	
    B Stop
Stop B Stop
 END