
UNKNOWN_C20B65:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	STX @LOCAL06
	STA @LOCAL05
	LDX @PARAM04
	STX @LOCAL04
	LDY @PARAM03
	STY @LOCAL03
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	STA @LOCAL02
	LDA @LOCAL05
	STA @VIRTUAL02
	STA @LOCAL01
	LDY @LOCAL06
	STY @LOCAL00
	LDA @VIRTUAL04
	BEQL @UNKNOWN14
	TYA
	CLC
	ADC @VIRTUAL04
	TAY
	STY @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN1:
	TYX
	LDA @LOCAL01
	STA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDY @LOCAL00
	TYA
	CLC
	ADC @VIRTUAL04
	TAY
	STY @LOCAL00
@UNKNOWN3:
	LDY #window_stats::height
	LDA (@LOCAL02),Y
	LSR
	STA @VIRTUAL02
	LDY @LOCAL00
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN1
	LDA @VIRTUAL04
	CLC
	ADC @LOCAL06
	TAY
	STY @LOCAL00
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA @LOCAL01
	STA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	BRA @UNKNOWN7
@UNKNOWN5:
	LDY @LOCAL00
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
@UNKNOWN7:
	LDY #window_stats::width
	LDA @VIRTUAL02
	CMP (@LOCAL02),Y
	BCC @UNKNOWN5
	LDA @LOCAL05
	STA @VIRTUAL02
	STA @LOCAL01
	LDY @LOCAL00
	TYA
	CLC
	ADC @VIRTUAL04
	TAY
	STY @LOCAL00
@UNKNOWN8:
	LDY #window_stats::height
	LDA (@LOCAL02),Y
	LSR
	STA @VIRTUAL02
	LDY @LOCAL00
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN4
	LDX @LOCAL05
	LDA @VIRTUAL04
	CLC
	ADC @LOCAL06
	TAY
	STY @LOCAL00
	BRA @UNKNOWN13
@UNKNOWN9:
	STX @VIRTUAL02
	INC @VIRTUAL02
	BRA @UNKNOWN12
@UNKNOWN10:
	LDY @LOCAL00
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	INC @VIRTUAL02
@UNKNOWN12:
	LDY #window_stats::width
	LDA @VIRTUAL02
	CMP (@LOCAL02),Y
	BCC @UNKNOWN10
	LDX @LOCAL05
	LDY @LOCAL00
	TYA
	CLC
	ADC @VIRTUAL04
	TAY
	STY @LOCAL00
@UNKNOWN13:
	LDY #window_stats::height
	LDA (@LOCAL02),Y
	LSR
	STA @VIRTUAL02
	LDY @LOCAL00
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN9
	JMP @UNKNOWN26
@UNKNOWN14:
	LDA @VIRTUAL02
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
	BRA @UNKNOWN17
@UNKNOWN15:
	LDY @LOCAL00
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQL @UNKNOWN27
	LDA @VIRTUAL02
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
@UNKNOWN17:
	LDY #window_stats::width
	LDA @VIRTUAL02
	CMP (@LOCAL02),Y
	BCC @UNKNOWN15
	LDA @LOCAL05
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
	BRA @UNKNOWN21
@UNKNOWN18:
	LDY @LOCAL00
	DEY
	STY @LOCAL00
	BRA @UNKNOWN20
@UNKNOWN19:
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQ @UNKNOWN27
	LDY @LOCAL00
	DEY
	STY @LOCAL00
@UNKNOWN20:
	LDY #window_stats::height
	LDA (@LOCAL02),Y
	LSR
	STA @VIRTUAL04
	LDY @LOCAL00
	TYA
	CMP @VIRTUAL04
	BCC @UNKNOWN19
	LDY @LOCAL06
	STY @LOCAL00
	LDA @VIRTUAL02
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
@UNKNOWN21:
	LDY #window_stats::width
	LDA @VIRTUAL02
	CMP (@LOCAL02),Y
	BCC @UNKNOWN18
	LDX @LOCAL06
	LDA @LOCAL05
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
	BRA @UNKNOWN25
@UNKNOWN22:
	TXY
	INY
	STY @LOCAL00
	BRA @UNKNOWN24
@UNKNOWN23:
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C208B8
	CMP #$002F
	BEQ @UNKNOWN27
	LDY @LOCAL00
	INY
	STY @LOCAL00
@UNKNOWN24:
	LDY #window_stats::height
	LDA (@LOCAL02),Y
	LSR
	STA @VIRTUAL04
	LDY @LOCAL00
	TYA
	CMP @VIRTUAL04
	BCC @UNKNOWN23
	LDX @LOCAL06
	LDA @VIRTUAL02
	CLC
	ADC @LOCAL03
	STA @VIRTUAL02
@UNKNOWN25:
	LDY #window_stats::width
	LDA @VIRTUAL02
	CMP (@LOCAL02),Y
	BCC @UNKNOWN22
@UNKNOWN26:
	LDA #$FFFF
	BRA @UNKNOWN29
@UNKNOWN27:
	LDA @LOCAL04
	CMP #$FFFF
	BEQ @UNKNOWN28
	LDA @LOCAL04
	JSL PLAY_SOUND
@UNKNOWN28:
	LDY @LOCAL00
	TYA
	XBA
	AND #$FF00
	CLC
	ADC @VIRTUAL02
@UNKNOWN29:
	END_C_FUNCTION
