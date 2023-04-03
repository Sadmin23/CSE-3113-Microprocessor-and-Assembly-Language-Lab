	    AREA task1, CODE, READONLY
		ENTRY
		EXPORT main
			
sum
; Push return address
	STR LR, [SP, #-4]!

; Push registers (including stack frame)
	STR IP, [SP, #-4]!
	STR R0, [SP, #-4]!
	STR R1, [SP, #-4]!

; Reserve space for local variables
	SUB SP, SP, #4

; Get first argument from stack
	LDR R0, [SP, #16]

; Get second argument from stack
	LDR R1, [SP, #12]

; Add the two values and store in R0
	ADD R0, R0, R1

; Discard local variables
	ADD SP, SP, #4

; Pop registers
	LDR R1, [SP], #4
	LDR R0, [SP], #4
	LDR IP, [SP], #4

; Pop return address and return
	LDR LR, [SP], #4
	BX LR

main
; Push arguments onto stack
	MOV R0, #5
	MOV R1, #7
	STR R1, [SP, #-4]!
	STR R0, [SP, #-4]!

; Call add_two_values
	BL sum

; Get result from R0
	MOV R0, R0
	
Stop  B Stop
     END