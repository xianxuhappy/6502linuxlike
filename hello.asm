	.ORG $2000		;�������ʼ��ַΪ $2000

	LDA	$00
	
	LDX #00
L1:	LDA T_STRRRING,X
	STA $100,X		;����L1���Ǳ��,����ǰָ��ĵ�ַ
	CMP #$FF
	BEQ L2
	INX
	JMP L1
L2:	
	NOP
	JMP L2			;����L2Ҳ�Ǳ��,����ǰָ��ĵ�ַ

T_STRRRING:
	.DB "HELLO WORLD"	;�����ַ�
	.DB $FF
