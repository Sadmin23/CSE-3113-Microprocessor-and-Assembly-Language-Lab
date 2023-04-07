	    AREA task3, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, 3, 9, 8;
n DCD 5

min PROC
	POP {r2, r3}
	CMP r3, #1
	BEQ base
	
	SUB r3, r3, #1
	LDR r6, [r2, r3, LSL #2]
    PUSH {r6}
	PUSH {lr}
    PUSH {r2, r3}
	BL min
	POP {r4}
	CMP r5, r4
	BGE push_r4
	PUSH {r5}
	BX lr

push_r4
	PUSH {r4}
	BX lr
	
	ENDP

base
	LDR r4, [r2]
	PUSH {r4}
	BX lr

main
	LDR r0, = numbers
	LDR r1, = n
	LDR r1, [r1]
    PUSH {lr}
    PUSH {r0, r1}
    BL min
	POP {r6}
    POP {pc}
	
    B Stop
Stop B Stop
 END		 