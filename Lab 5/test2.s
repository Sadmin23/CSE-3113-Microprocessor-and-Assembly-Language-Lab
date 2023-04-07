	AREA p_two, CODE, READONLY
		ENTRY
    EXPORT main
        
fact PROC
	POP {r2}
	CMP r2,#0
	BEQ ret
 
	MUL r0, r0,r2
	SUB r2,r2,#1
	PUSH {r2}
	B fact
	ENDP
ret 
	PUSH {r0}
	BX lr
main
    MOV r1, #5 
	MOV r0, #1
    PUSH {lr} ; Save the return address
    PUSH {r1} ; Push arguments onto the stack
    BL fact ; Call the function
	POP {r5} ; pop return value
    POP {pc} ; Pop the return address into pc
    
    
    ; Halt the program
    B Stop
Stop B Stop ; Infinite loop to halt the program
 END