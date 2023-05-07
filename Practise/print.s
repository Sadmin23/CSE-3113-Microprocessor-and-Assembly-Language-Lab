	    AREA task2, CODE, READONLY
		ENTRY
		EXPORT main

s DCB "Hello World!", 0

main
	LDR r0, =s
	LDR r1, [r0]
	
    B Stop
Stop B Stop
 END