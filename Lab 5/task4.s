	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, 3, 9, 8;
n DCD 5

prime PROC
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
	ENDP

not_prime
	MOV r8, #1
	push {r8}
	BX lr
	ENDP
	
check_prime
	MOV r8, #2
	push {r8}
	BX lr
	ENDP
	
mod_2
	MOV r5, #2
	SDIV r3, r2, r5
	MUL r4, r3, r5
	CMP r2, r4
	BEQ not_prime
	BNE loop_prime

main
    MOV r0, #25
	MOV r6, #3
	PUSH {lr}
    PUSH {r0}
    BL prime
	POP {r9}
    POP {pc}

    B Stop
Stop B Stop
 END		 