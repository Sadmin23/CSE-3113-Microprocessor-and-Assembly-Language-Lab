	    AREA task3b, CODE, READONLY
		ENTRY
		EXPORT main
			
x DCD 100
y DCD 50		
			
main
    LDR r0, = x
    LDR r0, [r0]
    LDR r1, = y
    LDR r1, [r1]
	
	ADDS r2, r0, r1
	BCC  Stop
	MOV  r2, #0x7FFFFFFF

	SUBS r3, r1, r0
    BVS overflow

overflow
     MOV r3,#0 

Stop  B Stop
     END