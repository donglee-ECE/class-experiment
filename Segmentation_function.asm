		ORG 0000H
		LJMP START

		ORG 2000H
START:  MOV SP,#40H
		MOV 50H,#64H
		MOV 40H,#10H

		MOV DPTR,#0000H
		MOVX @DPTR,A

		CLR C

		JB ACC.7,NEG//�ж�������Ϊ����ת��ȡ��

		CJNE A,40H,COMP10 //a-10;�Ƿ�Ϊ10
		CPL	 A
		SJMP MOVY

NEG:	CPL A		  //ȡ��
		SJMP  MOVY

COMP10:	JC	NEG		  //��X<10,����ȡ��

		CLR C
	    CJNE A,50H,COMP64
		MOV B,A
		MUL AB
		SJMP MOVY
COMP64:	JC HALF		  //X<64,��
		MOV B,A
		MUL AB
		SJMP MOVY
HALF:	MOV B,#2H
		DIV AB
		SJMP MOVY

//ת��Ƭ��ram
MOVY:	INC DPTR
		MOVX @DPTR,A
		INC DPTR
		MOV A,B
		MOVX @DPTR,A 
END