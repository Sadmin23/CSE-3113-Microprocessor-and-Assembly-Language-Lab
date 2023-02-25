SWI_WriteC EQU &0
SWI_Exit EQU &11
	
	AREA task2, CODE, READONLY
		ENTRY 
		EXPORT __main
			
__main 
        ADR r1, TEXT
LOOP LDRB r0, [r1], #1
		 CMP r0, #0
		 SWINE SWI_WriteC
		 BNE LOOP
		 SWI SWI_Exit
TEXT = "Hello,World!", &0a, &0d, 0
Stop B Stop         
		 END