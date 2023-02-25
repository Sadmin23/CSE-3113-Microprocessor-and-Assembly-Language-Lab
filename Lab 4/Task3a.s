	    AREA task3a, CODE, READONLY
		ENTRY
		EXPORT main
			
x DCD 100
y DCD 50		
			
main
    LDR r0, = x
    LDR r0, [r0]
    LDR r1, = y
    LDR r1, [r1]
	
	ADD r2, r0, r1
	SUB r3, r0, r1
	MUL r4, r0, r1
	SDIV r5, r0, r1
	
Stop  B Stop
     END