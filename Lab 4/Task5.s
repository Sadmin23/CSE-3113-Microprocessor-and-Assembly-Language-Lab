	    AREA task4, CODE, READONLY
		ENTRY
		EXPORT main
			
numbers DCD 4, 7, 3, 9, 1;
n DCD 5;

main
	MOV r0, #0
	MOV r1, #0
	LDR r2, = numbers
	LDR r4, = n
	LDR r4, [r4]

loop 
	LDR r3, [r2, r1, LSL #2]

	CMP r3, r0
	BGT greater
;	BLE fewer
;	MOV r0, r3	
	ADD r1, r1, #1
	CMP r1, r4
	BLT loop
	B Stop
	
greater
	MOV r0, r3
	ADD r1, r1, #1
	CMP r1, r4
	BLT loop
	B Stop

Stop  B Stop
     END