	    AREA task1, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r1, #2
	MOV r2, #4
	MOV r3, #5
	ADD r0,r1,r2
	ADD r0, r3
Stop  B Stop
     END
