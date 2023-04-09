	    AREA task1, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 1, 2, 9, 16, 23, 25;
n DCD 6

prime
	POP {r2}
	CMP r2, #1	
	BLE not_prime	; if value is 1, it is not a prime
	CMP r2, #2
	BEQ check_prime	; if the value is 2, it is a prime
	BGT mod_2	; other wise we check if the value is divisible by 2

loop_prime
	;	here we are squaring the index r6 and checking if the value exceeds the arguement value
	MUL r7, r6, r6 
	CMP r7, r2
	BGT check_prime	; if so then it is a prime and the loop is broken
	
	; if not we check if the argument value is divisible by the index r6
	
	SDIV r4, r2, r6
	MUL r5, r4, r6
	CMP r2, r5
	BEQ not_prime	; if so we then it is not a prime and the loop is broken 
	ADD r6, r6, #2	; if not we increment the index r6 by 2 and continue the loop
	B loop_prime

not_prime
	MOV r8, #1	; value 1 at r8 indicates that the value is not a prime
	PUSH {r8}
	MOV PC, LR
	
check_prime
	MOV r8, #2	; value 2 at r8 indicates that the value is a prime
	push {r8}
	MOV PC, LR
	
mod_2
	; here we check if the value is divisible by 2
	MOV r5, #2
	SDIV r3, r2, r5
	MUL r4, r3, r5
	CMP r2, r4
	BEQ not_prime	; if so it is not a prime
	BNE loop_prime	; if not we need further checking

main
	MOV r9, #0	; for index of the loop
	LDR r10, = numbers 	;loading the base address of the array
	LDR r11, = n
	LDR r11, [r11]	; loading the array size
	
loop	
	LDR r0, [r10, r9, LSL #2]	;loading the current value of the array
	MOV r6, #3	; this wiil be required in the loop_prime branch
	PUSH {r0}	; passing the current value of the array as the arguement
	BL prime	; calling function prime
	ADD r9, r9, #1
	CMP r9, r11
	BLT loop

    B Stop
Stop B Stop
 END		 