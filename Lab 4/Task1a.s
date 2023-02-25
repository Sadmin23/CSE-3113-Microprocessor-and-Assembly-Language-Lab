	    AREA task1a, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r0, #0x1234
	MOV r1, #0xA0A0
	ORR r2,r0,r1
	AND r3, r0, r1
	MVN r4, r2
	MVN r5, r3
	EOR r6, r0, r1
	MVN r7, r6
	
Stop  B Stop
     END
