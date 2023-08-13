
UNKNOWN_C06267: ;$C06267
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STY $1E
	TXY
	TAX
	STX $1C
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA $1A
	LDA $1E
	ASL
	STA $04
	LDX $04
	LDA UNKNOWN_7E332A,X
	BEQL @UNKNOWN26
	LDX $04
	LDA ENTITY_DIRECTIONS,X
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN1
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN2
@UNKNOWN1:
	LDA $1E
	ASL
	STA $18
	TAX
	LDA UNKNOWN_7E33DE,X
	STA $02
	LDA $18
	TAX
	LDA UNKNOWN_7E1A4A,X
	STA $16
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX $04
	LDA UNKNOWN_7E3366,X
	STA $02
	LDX $04
	LDA UNKNOWN_7E33A2,X
	STA $16
@UNKNOWN3:
	LDX $1C
	TXA
	SEC
	SBC $02
	STA $04
	LDA $02
	ASL
	STA $18
	TYA
	SEC
	SBC $16
	STA $02
	STA $14
	LDA UNKNOWN_7E5D58
	BNEL @UNKNOWN14
	LDX #$0018
	JMP @UNKNOWN13
@UNKNOWN5:
	TXA
	ASL
	TAY
	LDA ENTITY_SCRIPT_TABLE,Y
	CMP #$FFFF
	BEQL @UNKNOWN12
	LDA ENTITY_COLLIDED_OBJECTS,Y
	CMP #ENTITY_COLLISION_DISABLED
	BEQL @UNKNOWN12
	LDA UNKNOWN_7E332A,Y
	BEQL @UNKNOWN12
	LDA ENTITY_DIRECTIONS,Y
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN9
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN10
@UNKNOWN9:
	TXA
	ASL
	TAY
	LDA UNKNOWN_7E33DE,Y
	STA $12
	LDA UNKNOWN_7E1A4A,Y
	STA $10
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA UNKNOWN_7E3366,Y
	STA $12
	LDA UNKNOWN_7E33A2,Y
	STA $10
@UNKNOWN11:
	TXA
	ASL
	STA $0E
	LDY #.LOWORD(ENTITY_ABS_Y_TABLE)
	LDA ($0E),Y
	SEC
	SBC $10
	TAY
	SEC
	SBC $16
	PHA
	LDA $14
	STA $02
	STA UNKNOWN_7E00C0
	PLA
	STA $02
	LDA UNKNOWN_7E00C0
	CMP $02
	BLTEQ @UNKNOWN12
	TYA
	CLC
	ADC $10
	PHA
	LDA $14
	STA $02
	PLY
	STY $02
	CMP $02
	BCS @UNKNOWN12
	LDA $12
	STA $02
	LDY #.LOWORD(ENTITY_ABS_X_TABLE)
	LDA ($0E),Y
	SEC
	SBC $02
	TAY
	LDA $12
	ASL
	STA $12
	TYA
	SEC
	SBC $18
	STA $02
	LDA $04
	CMP $02
	BLTEQ @UNKNOWN12
	LDA $12
	STA $02
	TYA
	CLC
	ADC $02
	STA $02
	LDA $04
	CMP $02
	BCS @UNKNOWN12
	STX $1A
	JMP @UNKNOWN26
@UNKNOWN12:
	INX
@UNKNOWN13:
	CPX #MAX_ENTITIES
	BNEL @UNKNOWN5
@UNKNOWN14:
	LDX #$0000
	JMP @UNKNOWN25
@UNKNOWN15:
	CPX $1E
	BEQL @UNKNOWN24
	TXA
	ASL
	TAY
	LDA ENTITY_SCRIPT_TABLE,Y
	CMP #$FFFF
	BEQL @UNKNOWN24
	LDA ENTITY_TPT_ENTRIES,Y
	CMP #$1000
	BCC @UNKNOWN18
	JMP @UNKNOWN24
@UNKNOWN18:
	LDA ENTITY_COLLIDED_OBJECTS,Y
	CMP #ENTITY_COLLISION_DISABLED
	BEQL @UNKNOWN24
	LDA UNKNOWN_7E332A,Y
	BEQL @UNKNOWN24
	LDA ENTITY_DIRECTIONS,Y
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN21
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN22
@UNKNOWN21:
	TXA
	ASL
	TAY
	LDA UNKNOWN_7E33DE,Y
	STA $12
	LDA UNKNOWN_7E1A4A,Y
	STA $10
	BRA @UNKNOWN23
@UNKNOWN22:
	LDA UNKNOWN_7E3366,Y
	STA $12
	LDA UNKNOWN_7E33A2,Y
	STA $10
@UNKNOWN23:
	TXA
	ASL
	STA $0E
	LDY #.LOWORD(ENTITY_ABS_Y_TABLE)
	LDA ($0E),Y
	SEC
	SBC $10
	TAY
	SEC
	SBC $16
	PHA
	LDA $14
	STA $02
	STA UNKNOWN_7E00C0
	PLA
	STA $02
	LDA UNKNOWN_7E00C0
	CMP $02
	BLTEQ @UNKNOWN24
	TYA
	CLC
	ADC $10
	DEC
	PHA
	LDA $14
	STA $02
	PLY
	STY $02
	CMP $02
	BCS @UNKNOWN24
	LDA $12
	STA $02
	LDY #.LOWORD(ENTITY_ABS_X_TABLE)
	LDA ($0E),Y
	SEC
	SBC $02
	TAY
	LDA $12
	ASL
	STA $12
	TYA
	SEC
	SBC $18
	STA $02
	LDA $04
	CMP $02
	BLTEQ @UNKNOWN24
	LDA $12
	STA $02
	TYA
	CLC
	ADC $02
	DEC
	STA $02
	LDA $04
	CMP $02
	BCS @UNKNOWN24
	STX $1A
	BRA @UNKNOWN26
@UNKNOWN24:
	INX
@UNKNOWN25:
	CPX #$0017
	BNEL @UNKNOWN15
@UNKNOWN26:
	LDA $1E
	ASL
	TAX
	LDA $1A
	STA ENTITY_COLLIDED_OBJECTS,X
	LDA $1A
	PLD
	RTL
