	    AREA task5, CODE, READONLY
		ENTRY
		EXPORT main

add1
	PUSH {lr}
	ADD r0, r0, #1
	POP {PC}
	
add2
	PUSH {lr}
	BL add1
	BL add1
	POP {PC}

main
	MOV r0, #3
    BL add2
	MOV r6, r0
	
    B Stop
Stop B Stop
 END