	    AREA task3b, CODE, READONLY
		ENTRY
		EXPORT main
			
x DCD 4294967294
y DCD 12349875
z DCD 3
a DCD 0
			
main
    LDR r0, = x
    LDR r0, [r0]
    LDR r1, = y
    LDR r1, [r1]
	
	ADD r2, r0, r1
	SUB r3, r1, r0
	
	LDR r4, = z
	LDR r4, [r4]

	MUL r5, r0, r4
	
	LDR r6, = a
	LDR r6, [r6]
	
	CMP r6, #0
	BEQ Stop
	SDIV r7, r0, r6

Stop  B Stop
     END