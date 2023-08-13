
UNKNOWN_C20B65: ;$C20B65
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	STY $04
	STX $1A
	STA $18
	LDX $2C
	STX $16
	LDY $2A
	STY $14
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $12
	LDA $18
	STA $02
	STA $10
	LDY $1A
	STY $0E
	LDA $04
	BEQL @UNKNOWN14
	TYA
	CLC
	ADC $04
	TAY
	STY $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	TYX
	LDA $10
	STA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDY $0E
	TYA
	CLC
	ADC $04
	TAY
	STY $0E
@UNKNOWN3:
	LDY #window_stats::height
	LDA ($12),Y
	LSR
	STA $02
	LDY $0E
	TYA
	CMP $02
	BCC @UNKNOWN1
	LDA $04
	CLC
	ADC $1A
	TAY
	STY $0E
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA $10
	STA $02
	DEC
	STA $02
	BRA @UNKNOWN7
@UNKNOWN5:
	LDY $0E
	TYX
	LDA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDA $02
	DEC
	STA $02
@UNKNOWN7:
	LDY #window_stats::width
	LDA $02
	CMP ($12),Y
	BCC @UNKNOWN5
	LDA $18
	STA $02
	STA $10
	LDY $0E
	TYA
	CLC
	ADC $04
	TAY
	STY $0E
@UNKNOWN8:
	LDY #window_stats::height
	LDA ($12),Y
	LSR
	STA $02
	LDY $0E
	TYA
	CMP $02
	BCC @UNKNOWN4
	LDX $18
	LDA $04
	CLC
	ADC $1A
	TAY
	STY $0E
	BRA @UNKNOWN13
@UNKNOWN9:
	STX $02
	INC $02
	BRA @UNKNOWN12
@UNKNOWN10:
	LDY $0E
	TYX
	LDA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	INC $02
@UNKNOWN12:
	LDY #window_stats::width
	LDA $02
	CMP ($12),Y
	BCC @UNKNOWN10
	LDX $18
	LDY $0E
	TYA
	CLC
	ADC $04
	TAY
	STY $0E
@UNKNOWN13:
	LDY #window_stats::height
	LDA ($12),Y
	LSR
	STA $02
	LDY $0E
	TYA
	CMP $02
	BCC @UNKNOWN9
	JMP @UNKNOWN26
@UNKNOWN14:
	LDA $02
	CLC
	ADC $14
	STA $02
	BRA @UNKNOWN17
@UNKNOWN15:
	LDY $0E
	TYX
	LDA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDA $02
	CLC
	ADC $14
	STA $02
@UNKNOWN17:
	LDY #window_stats::width
	LDA $02
	CMP ($12),Y
	BCC @UNKNOWN15
	LDA $18
	CLC
	ADC $14
	STA $02
	BRA @UNKNOWN21
@UNKNOWN18:
	LDY $0E
	DEY
	STY $0E
	BRA @UNKNOWN20
@UNKNOWN19:
	TYX
	LDA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQ @UNKNOWN27
	LDY $0E
	DEY
	STY $0E
@UNKNOWN20:
	LDY #window_stats::height
	LDA ($12),Y
	LSR
	STA $04
	LDY $0E
	TYA
	CMP $04
	BCC @UNKNOWN19
	LDY $1A
	STY $0E
	LDA $02
	CLC
	ADC $14
	STA $02
@UNKNOWN21:
	LDY #window_stats::width
	LDA $02
	CMP ($12),Y
	BCC @UNKNOWN18
	LDX $1A
	LDA $18
	CLC
	ADC $14
	STA $02
	BRA @UNKNOWN25
@UNKNOWN22:
	TXY
	INY
	STY $0E
	BRA @UNKNOWN24
@UNKNOWN23:
	TYX
	LDA $02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQ @UNKNOWN27
	LDY $0E
	INY
	STY $0E
@UNKNOWN24:
	LDY #window_stats::height
	LDA ($12),Y
	LSR
	STA $04
	LDY $0E
	TYA
	CMP $04
	BCC @UNKNOWN23
	LDX $1A
	LDA $02
	CLC
	ADC $14
	STA $02
@UNKNOWN25:
	LDY #window_stats::width
	LDA $02
	CMP ($12),Y
	BCC @UNKNOWN22
@UNKNOWN26:
	LDA #$FFFF
	BRA @UNKNOWN29
@UNKNOWN27:
	LDA $16
	CMP #$FFFF
	BEQ @UNKNOWN28
	LDA $16
	JSL PLAY_SOUND
@UNKNOWN28:
	LDY $0E
	TYA
	XBA
	AND #$FF00
	CLC
	ADC $02
@UNKNOWN29:
	PLD
	RTL
