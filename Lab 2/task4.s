	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r1, #3
	MOV r2, #5
	MUL r0,r1,r2
Stop  B Stop
     END
