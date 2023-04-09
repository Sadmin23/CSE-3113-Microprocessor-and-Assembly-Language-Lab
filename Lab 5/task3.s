	    AREA task3, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 3
y DCD 7

sum PROC
	POP {r2, r3}
	LDR r4, [r2]
	LDR r5, [r3]
	ADD r6,r4,r5
	PUSH {r6}
	BX lr
	ENDP

main
	LDR r0, = x
	LDR r1, = y
    PUSH {r0, r1}
    BL sum
	POP {r7}
	
    B Stop
Stop B Stop
 END