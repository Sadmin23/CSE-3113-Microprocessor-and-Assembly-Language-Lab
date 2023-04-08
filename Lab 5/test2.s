	    AREA task1, CODE, READONLY
		ENTRY
		EXPORT main

sum PROC
	POP {r2, r3}
 
	ADD r0,r2,r3
	PUSH {r0}
	BX lr
	ENDP

main
    MOV r1, #6 
	MOV r0, #7
    PUSH {lr} ; Save the return address
    PUSH {r0, r1} ; Push arguments onto the stack
    BL sum ; Call the function
	POP {r5} ; pop return value
    POP {pc} ; Pop the return address into pc   
    ; Halt the program
    B Stop
Stop B Stop ; Infinite loop to halt the program
 END		 