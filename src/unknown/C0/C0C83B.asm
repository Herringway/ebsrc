
UNKNOWN_C0C83B: ;$C0C83B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	STA $1C
	LDY CURRENT_ENTITY_SLOT
	STY $1A
	TYA
	ASL
	TAX
	LDA $1C
	STA UNKNOWN_7E1A86,X
	AND #$0001
	BEQ @UNKNOWN1
	MOVE_INT_CONSTANT $B505, $0A
	LDA UNKNOWN_30X2_TABLE_35,X
	STORE_INT1632 $06
	JSL MULT32
	ASR8_INT $06
	MOVE_INT $06, $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	MOVE_INT_CONSTANT $10000, $0A
	LDA UNKNOWN_30X2_TABLE_35,X
	STORE_INT1632 $06
	JSL MULT32
	ASR8_INT $06
	MOVE_INT $06, $0E
@UNKNOWN3:
	LDA $1C
	BEQ @UNKNOWN10
	CMP #$0001
	BEQ @UNKNOWN11
	CMP #$0002
	BEQL @UNKNOWN12
	CMP #$0003
	BEQL @UNKNOWN13
	CMP #$0004
	BEQL @UNKNOWN14
	CMP #$0005
	BEQL @UNKNOWN15
	CMP #$0006
	BEQL @UNKNOWN16
	CMP #$0007
	BEQL @UNKNOWN17
	JMP @UNKNOWN18
@UNKNOWN10:
	MOVE_INT_CONSTANT NULL, $12
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN11:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN12:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT_CONSTANT NULL, $16
	JMP @UNKNOWN18
@UNKNOWN13:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN14:
	MOVE_INT_CONSTANT NULL, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN15:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	BRA @UNKNOWN18
@UNKNOWN16:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT_CONSTANT NULL, $16
	BRA @UNKNOWN18
@UNKNOWN17:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT $06, $16
@UNKNOWN18:
	LDY $1A
	TYA
	ASL
	TAX
	LDA $14
	STA ENTITY_DELTA_X_TABLE,X
	LDA $12
	STA ENTITY_DELTA_X_FRACTION_TABLE,X
	LDA $18
	STA ENTITY_DELTA_Y_TABLE,X
	LDA $16
	STA ENTITY_DELTA_Y_FRACTION_TABLE,X
	PLD
	RTL
