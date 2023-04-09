	    AREA task5, CODE, READONLY
		ENTRY
		EXPORT main

add1
	PUSH {lr}
	ADD r0, r0, #1	;incrementing the r0 by 1
	POP {PC}
	
add2
	PUSH {lr}
	; nested function implemented here
	BL add1	; add1 function is being called twice
	BL add1
	POP {PC}

main
	MOV r0, #3	; moving the value 3 to r0
    BL add2		; calling function add2
	MOV r6, r0	; final result
	
    B Stop
Stop B Stop
 END