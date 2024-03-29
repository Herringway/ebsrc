
FILL_HP_PP_TILE_BUFFER:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	STX @VIRTUAL02
	TAX
	CPY #$3000
	BCS @UNKNOWN0
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	SEC
	SBC #$3000
	STA @LOCAL04
@UNKNOWN1:
	MOVE_INT_CONSTANT $3400, @VIRTUAL0A ;13312/65536 is close to 1/5. 13107/65536 is closer, but more expensive
	MOVE_INT1632 @LOCAL04, @VIRTUAL06
	JSL DIVISION32
	LDA @VIRTUAL06
	TAY
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
	STA @VIRTUAL02
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 24
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HPPP_WINDOW_BUFFER) + .SIZEOF(hp_pp_window_buffer::hp1) - (1 * 2)
	TAX
	LDA HPPP_WINDOW_DIGIT_BUFFER + 2
	AND #$00FF
	STA @LOCAL03
	LDA HPPP_WINDOW_DIGIT_BUFFER + 1
	AND #$00FF
	STA @VIRTUAL04
	LDA HPPP_WINDOW_DIGIT_BUFFER
	AND #$00FF
	STA @LOCAL02
	LDA @LOCAL03
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDA @LOCAL03
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #$2600
	STA @VIRTUAL02
	STA __BSS_START__ + hp_pp_window_buffer::hp1,X
	LDA @VIRTUAL02
	CLC
	ADC #$0010
	STA __BSS_START__ + hp_pp_window_buffer::hp2,X
	TXA
	DEC
	DEC
	STA @VIRTUAL02
	STA @LOCAL01
	LDA @VIRTUAL04
	BNE @UNKNOWN2
	LDA @LOCAL02
	BNE @UNKNOWN2
	LDX #$0248
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #$0200
@UNKNOWN3:
	LDA @LOCAL03
	CMP #9
	BNE @UNKNOWN4
	CPY #0
	BNE @UNKNOWN5
@UNKNOWN4:
	LDY #0
@UNKNOWN5:
	LDA @VIRTUAL04
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDA @VIRTUAL04
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	STX @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #$2400
	LDX @LOCAL01
	STX @VIRTUAL02
	STA __BSS_START__,X
	CLC
	ADC #$0010
	LDX @VIRTUAL02
	STA __BSS_START__ + hp_pp_window_buffer::hp2,X
	LDA @VIRTUAL02
	DEC
	DEC
	STA @LOCAL00
	LDA @LOCAL02
	BNE @UNKNOWN6
	LDX #$0248
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX #$0200
@UNKNOWN7:
	LDA @VIRTUAL04
	CMP #9
	BNE @UNKNOWN8
	CPY #0
	BNE @UNKNOWN9
@UNKNOWN8:
	LDY #0
@UNKNOWN9:
	STY @VIRTUAL04
	LDA @LOCAL02
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDA @LOCAL02
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC @VIRTUAL04
	STX @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #$2400
	TAX
	STX @LOCAL02
	PHX
	LDA @LOCAL00
	TAX
	PLA
	STA __BSS_START__ + hp_pp_window_buffer::hp1,X
	LDA @LOCAL00
	PHA
	LDX @LOCAL02
	TXA
	CLC
	ADC #$0010
	PLX
	STA __BSS_START__ + hp_pp_window_buffer::hp2,X
	END_C_FUNCTION
