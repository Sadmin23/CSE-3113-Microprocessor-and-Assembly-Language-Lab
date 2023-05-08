 AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

x DCD 24
y DCD 18

gcd
	POP {r2, r3}
	CMP r3, #0
	BEQ base
	SDIV r4, r2, r3
	MUL r4, r4, r3
	SUB r4, r2, r4
	PUSH {r3, r4}
	BL gcd
	
base	
	PUSH {r2}
	POP {r5}
	B Stop

main
	LDR r0, =x
	LDR r0, [r0]
	LDR r1, =y		
	LDR r1, [r1]
    PUSH {r0, r1}
    BL gcd

	
    B Stop
Stop B Stop
 END