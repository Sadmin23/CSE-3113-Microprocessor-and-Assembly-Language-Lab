	    AREA task1b, CODE, READONLY
		ENTRY
		EXPORT main
main
    LDR r0, =0x12345678
    LDR r1, =0x87654321
	ORR r2,r0,r1
	AND r3, r0, r1
	MVN r4, r2
	MVN r5, r3
	EOR r6, r0, r1
	MVN r7, r6
	
Stop  B Stop
     END
