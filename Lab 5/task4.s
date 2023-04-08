	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main

numbers DCD 4, 7, 3, 9, 8;
n DCD 5

prime PROC
	POP {r2}
	CMP r2, #1
	BLE not_prime
	MOV r3, #2
	SDIV r6, r2, #2
	B loop_prime
	ENDP

not_prime
	MOV r3, #120
	push {r3}
	BX lr
	ENDP
	
check_prime
	push {r2}
	BX lr
		
loop_prime
	SDIV r4, r2, r3
	MUL r5, r4, r3
	CMP r2, r5
	BEQ not_prime
	
	

main
    MOV r0, #2
	PUSH {lr}
    PUSH {r0}
    BL prime
	POP {r5}
    POP {pc}

    B Stop
Stop B Stop
 END		 