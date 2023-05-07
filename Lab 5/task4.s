	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, -3, 9, 8;
n DCD 5

min
	POP {r2, r3}
	CMP r3, #0	; checking for base case
	BEQ base	; if so go to base
	
	SUB r3, r3, #1				; decrement array size by 1
	LDR r4, [r2, r3, LSL #2]	; loading the current value from the array
	CMP r5, r4					
	BGE push_r5					; if the value is less than r5 go to  push r_5
	PUSH {r2, r3}
	B min						; if not we simply call the function recursively

push_r5
	MOV r5, r4					; we move the new value to r5
	PUSH {r2, r3}				
	B min						; then we simply call the function recursively

base
	MOV PC, lr	; returning to the main

main
	LDR r0, = numbers	; loading the base address of the array
	LDR r1, = n
	LDR r1, [r1]		; loading the array size
	MOV r5, #100		; we are keeping the value 100(a high value that will be essential in computing the min value)
    PUSH {r0, r1}		; pushing the arguments
    BL min				; calling function
	
    B Stop
Stop B Stop
 END