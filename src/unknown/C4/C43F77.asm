
UNKNOWN_C43F77: ;$C43F77
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $02
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP #$FFFF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	CLC
	ADC #window_stats::width
	TAY
	STY $10
	LDA a:window_stats::text_x,X
	ASL
	STA $04
	LDA a:.LOWORD(RAM),Y
	TAY
	LDA a:window_stats::text_y,X
	JSL MULT16
	ASL
	ASL
	CLC
	ADC a:window_stats::tilemap_address,X
	CLC
	ADC $04
	TAX
	STX $0E
	LDA a:.LOWORD(RAM),X
	JSL UNKNOWN_C44E4D
	LDY $10
	LDA a:.LOWORD(RAM),Y
	ASL
	STA $04
	LDX $0E
	TXA
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	JSL UNKNOWN_C44E4D
	LDA $02
	CMP #$002F
	BNE @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E75)
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	JSL REDIRECT_C10BA1
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP .LOWORD(UNKNOWN_7E88E2)
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E964F)
	CMP #$0002
	BNE @UNKNOWN3
	LDX #$0001
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E964F)
	CMP #$0003
	BNE @UNKNOWN4
	LDX #$0000
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #$0000
	LDA .LOWORD(BLINKING_TRIANGLE_FLAG)
	BNE @UNKNOWN5
	LDX #$0001
@UNKNOWN5:
	CPX #$0000
	BEQ @UNKNOWN6
	LDA .LOWORD(UNKNOWN_7E9622)
	AND #$00FF
	BNE @UNKNOWN6
	LDA $02
	CMP #$0020
	BEQ @UNKNOWN6
	LDA #SFX::TEXT_PRINT
	JSL PLAY_SOUND
@UNKNOWN6:
	LDA .LOWORD(UNKNOWN_7E9622)
	AND #$00FF
	BNE @UNKNOWN9
	LDX .LOWORD(SELECTED_TEXT_SPEED)
	INX
	STX $10
	BRA @UNKNOWN8
@UNKNOWN7:
	JSL UNKNOWN_C12DD5
	LDX $10
	DEX
	STX $10
@UNKNOWN8:
	BNE @UNKNOWN7
@UNKNOWN9:
	PLD
	RTL
