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
Stop  B Stop
     END