	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r1, #14
	MOV r2, #5
	SUB r0,r1,r2
Stop  B Stop
     END
