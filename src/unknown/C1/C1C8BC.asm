
UNKNOWN_C1C8BC: ;$C1C8BC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAY
	STY $14
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN04
	JSL CALL_C12DD5_WITH_ZERO_9622
	STZ .LOWORD(UNKNOWN_7E5E6E)
	LOADPTR PSI_ABILITY_TABLE, $06
	LDY $14
	TYA
	OPTIMIZED_MULT $04, 15
	STA $12
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CMP #$0004
	BNE @UNKNOWN0
	LOADPTR PSI_TARGET_TEXT, $06
	BRA @UNKNOWN1
@UNKNOWN0:
	LOADPTR BATTLE_ACTION_TABLE, $0A
	LDA $12
	INC
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	OPTIMIZED_MULT $04, 12
	STA $12
	INC
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	OPTIMIZED_MULT $04, 20
	STA $02
	LDA $12
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	LDY #$0064
	JSL MULT168
	CLC
	ADC $02
	PHA
	LOADPTR PSI_TARGET_TEXT, $06
	PLA
	CLC
	ADC $06
	STA $06
@UNKNOWN1:
	MOVE_INT $06, $0E
	LDA #$0014
	JSR a:.LOWORD(PRINT_STRING)
	LDA #$00FF
	STA .LOWORD(UNKNOWN_7E5E6E)
	LDX #$0001
	LDA #$0000
	JSL UNKNOWN_C438A5
	LOADPTR PP_COST_TEXT, $0E
	LDA #$0008
	JSR a:.LOWORD(PRINT_STRING)
	LDA #$0050
	JSR a:.LOWORD(PRINT_LETTER)
	LDA #$0081
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0001
	LDA #$0028
	JSL UNKNOWN_C43D75
	LDY $14
	TYA
	OPTIMIZED_MULT $04, 15
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	OPTIMIZED_MULT $04, 12
	TAX
	INX
	INX
	INX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:BATTLE_ACTION_TABLE,X
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	JSL CLEAR_9622
	PLD
	RTL
