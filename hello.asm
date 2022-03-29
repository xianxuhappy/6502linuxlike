	.ORG $2000		;定义程序开始地址为 $2000

	LDA	$00
	
	LDX #00
L1:	LDA T_STRRRING,X
	STA $100,X		;这里L1就是标号,代表当前指令的地址
	CMP #$FF
	BEQ L2
	INX
	JMP L1
L2:	
	NOP
	JMP L2			;这里L2也是标号,代表当前指令的地址

T_STRRRING:
	.DB "HELLO WORLD"	;定义字符
	.DB $FF
