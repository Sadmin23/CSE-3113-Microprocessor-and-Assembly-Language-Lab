X EQU 9
Y EQU 8
Z EQU 5
		AREA task5, CODE, READONLY
		ENTRY
		EXPORT main
main
	MOV r4, #X
	MOV r3, #Y
	MOV r2, #Z
	ADD r0,r4,r3
	ADD r0, r2
Stop  B Stop
     END

