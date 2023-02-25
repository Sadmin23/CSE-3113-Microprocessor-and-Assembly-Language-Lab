	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main
main
    LDR r0, =0xB
	LSR r1, r0, 2
    LSL r2, r0, 2
    ASR r3, r0, 2 
	
Stop  B Stop
     END
