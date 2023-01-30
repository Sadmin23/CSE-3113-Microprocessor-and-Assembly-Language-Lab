	    AREA problem3, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r1, #12
	MOV r2, #4
	MOV r3, #5
	ADD r0,r2,r3
	SUB r0, r1, r0
Stop  B Stop
     END
