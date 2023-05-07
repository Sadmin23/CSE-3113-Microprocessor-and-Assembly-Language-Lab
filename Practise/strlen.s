	    AREA strlen, CODE, READONLY
		ENTRY
		EXPORT main

s DCB "Hello", 0

strlength
	POP {r3, r4, r5}
	LDRB r6, [r3]
	CMP r6, r5
	BNE cont
	PUSH {r4}
	MOV PC, LR
	
cont
	ADD r3, #1
	ADD r4, #1
	PUSH {r3, r4, r5}
	B strlength

main
	LDR r0, =s
	MOV r1, #0
	MOV r2, #0
	PUSH {r0, r1, r2}
	BL strlength
	POP {r7}
	
;	LDRB r1, [r0]
;	ADD r0, #1
;	LDRB r2, [r0]
	
    B Stop
Stop B Stop
 END