		ORG 0000H
		LJMP START

		ORG 2000H
START:  MOV SP,#40H
		MOV 50H,#64H
		MOV 40H,#10H

		MOV DPTR,#0000H
		MOVX @DPTR,A

		CLR C

		JB ACC.7,NEG//判断正负，为负跳转至取反

		CJNE A,40H,COMP10 //a-10;是否为10
		CPL	 A
		SJMP MOVY

NEG:	CPL A		  //取反
		SJMP  MOVY

COMP10:	JC	NEG		  //若X<10,跳向取反

		CLR C
	    CJNE A,50H,COMP64
		MOV B,A
		MUL AB
		SJMP MOVY
COMP64:	JC HALF		  //X<64,跳
		MOV B,A
		MUL AB
		SJMP MOVY
HALF:	MOV B,#2H
		DIV AB
		SJMP MOVY

//转移片外ram
MOVY:	INC DPTR
		MOVX @DPTR,A
		INC DPTR
		MOV A,B
		MOVX @DPTR,A 
END