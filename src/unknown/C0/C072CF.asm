
UNKNOWN_C072CF: ;$C072CF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	STX $1C
	STA $1A
	MOVE_INT $2C, $0A
	LOADPTR MAP_HOTSPOTS, $06
	LDA $1C
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	LDA $1A
	DEC
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$5E3C
	TAY
	STY $14
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $12
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA [$06]
	ASL
	ASL
	ASL
	STA $10
	MOVE_INT $16, $06
	LDY #$0002
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA $0E
	LDY #$0004
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA $02
	LDY #$0006
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA $04
	LDA $12
	CMP $10
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	CMP $02
	BCS @UNKNOWN0
	CPX $0E
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	TXA
	CMP $04
	BCS @UNKNOWN0
	LDX #$0001
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$0002
@UNKNOWN1:
	TXA
	LDY $14
	STA a:.LOWORD(RAM),Y
	LDA $10
	STA a:.LOWORD(RAM)+2,Y
	LDA $02
	STA a:.LOWORD(RAM)+6,Y
	LDA $0E
	STA a:.LOWORD(RAM)+4,Y
	LDA $04
	STA a:.LOWORD(RAM)+8,Y
	TYA
	CLC
	ADC #$000A
	TAY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDA $1A
	DEC
	STA $12
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAY
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(RAM) + game_state::unknownC8,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $1C
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM)+game_state::unknownC8 + 2,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $12
	ASL
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::unknownC8 + 4
	TAY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	PLD
	RTL
