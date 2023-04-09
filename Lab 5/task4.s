	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, 3, 9, 8;
n DCD 5

min
	POP {r2, r3}
	CMP r3, #0
	BEQ base
	
	SUB r3, r3, #1
	LDR r4, [r2, r3, LSL #2]
	CMP r5, r4
	BGE push_r5
	PUSH {r2, r3}
	B min

push_r5
	MOV r5, r4
	PUSH {r2, r3}
	B min

base
	MOV PC, lr

main
	LDR r0, = numbers
	LDR r1, = n
	LDR r1, [r1]
	MOV r5, #100
    PUSH {r0, r1}
    BL min
	
    B Stop
Stop B Stop
 END