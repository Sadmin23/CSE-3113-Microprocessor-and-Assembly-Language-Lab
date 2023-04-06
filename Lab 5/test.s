	    AREA task3, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, 3, 9, 1;
n DCD 5

num PROC
	POP {r2, r3}
	MOV r1, #0         ; Load the index of the element we want to access into r1
	LSL r1, r1, #2     ; Multiply the index by 4
	ADD r3, r2, r1     ; Add the base address and the index to get the memory address of the element
	LDR r3, [r3]       ; Load the value at the memory address into r3
	PUSH {r3}
	BX lr
	ENDP

main
	LDR r0, = numbers
	LDR r1, = n
    PUSH {lr} ; Save the return address
    PUSH {r0, r1} ; Push arguments onto the stack
    BL num ; Call the function
	POP {r5} ; pop return value
    POP {pc} ; Pop the return address into pc   
    ; Halt the program
    B Stop
Stop B Stop ; Infinite loop to halt the program
 END		 