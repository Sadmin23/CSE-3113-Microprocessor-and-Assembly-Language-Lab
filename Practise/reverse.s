	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

s DCB "World", 0

main
	LDR r0, =s
	LDRB r1, [r0, #0]
	STRB r1, [r0, #2]
	
    B Stop
Stop B Stop
 END