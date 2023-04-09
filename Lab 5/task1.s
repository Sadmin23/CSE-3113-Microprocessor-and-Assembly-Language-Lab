	    AREA task1, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 1, 2, 9, 16, 23, 25;
n DCD 6

prime
	POP {r2}
	CMP r2, #1
	BLE not_prime
	CMP r2, #2
	BEQ check_prime
	BGT mod_2

loop_prime
	MUL r7, r6, r6
	CMP r7, r2
	BGT check_prime
	SDIV r4, r2, r6
	MUL r5, r4, r6
	CMP r2, r5
	BEQ not_prime
	ADD r6, r6, #2
	B loop_prime

not_prime
	MOV r8, #1
	PUSH {r8}
	MOV PC, LR
	
check_prime
	MOV r8, #2
	push {r8}
	MOV PC, LR
	
mod_2
	MOV r5, #2
	SDIV r3, r2, r5
	MUL r4, r3, r5
	CMP r2, r4
	BEQ not_prime
	BNE loop_prime

main
	MOV r9, #0
	LDR r10, = numbers 
	LDR r11, = n
	LDR r11, [r11]
	
loop	
	LDR r0, [r10, r9, LSL #2]
	MOV r6, #3
	PUSH {r0}
	BL prime
	ADD r9, r9, #1
	CMP r9, r11
	BLT loop

    B Stop
Stop B Stop
 END		 