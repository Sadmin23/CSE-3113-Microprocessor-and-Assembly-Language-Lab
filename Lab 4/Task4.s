	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main
			
numbers DCD 1,2,3,4,5;
n DCD 5;

main
	MOV r0, #0
	MOV r1, #0
	LDR r2, = numbers
	LDR r4, = n
	LDR r4, [r4]

loop 
	LDR r3, [r2, r1, LSL #2]
	ADD r0, r0, r3
	ADD r1, r1, #1
	CMP r1, r4
	BLT loop
	
	SDIV r5, r0, r4
	
Stop  B Stop
     END