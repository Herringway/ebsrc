
UNKNOWN_C120D6: ;$C120D6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STX $14
	TAY
	STY $12
	JSL SET_9622_ONE
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN31
	LOADPTR BATTLE_TO_TEXT, $0E
	LDA #$0003
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDX $14
	CPX #$FFFF
	BEQ @UNKNOWN3
	STX $02
	LDY $12
	TYA
	LDY .LOWORD(UNKNOWN_7EAD56)
	JSL MULT16
	CLC
	ADC $02
	INC
	JSL UNKNOWN_C23E8A
	LDA #$0000
	JSL UNKNOWN_C3E75D
	JSR a:.LOWORD(RETURN_BATTLE_ATTACKER_ADDRESS)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$00FF
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDX #$0000
	LDA #$000A
	JSL UNKNOWN_C438A5
	BRA @UNKNOWN6
@UNKNOWN3:
	LDY $12
	BEQ @UNKNOWN4
	LOADPTR BATTLE_BACK_ROW_TEXT, $06
	BRA @UNKNOWN5
@UNKNOWN4:
	LOADPTR BATTLE_FRONT_ROW_TEXT, $06
@UNKNOWN5:
	MOVE_INT $06, $0E
	LDA #$000D
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
@UNKNOWN6:
	JSL CLEAR_9622
	PLD
	RTS