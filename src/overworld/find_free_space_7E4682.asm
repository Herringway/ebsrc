
FIND_FREE_7E4682:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STA @VIRTUAL02
	LDX #0
	STX @LOCAL01
	LDA @VIRTUAL02
	STA UNREAD_7E4A6A
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA OVERWORLD_SPRITEMAPS + spritemap::special_flags,X
	AND #$00FF
	CMP #<-1
	BEQ @UNKNOWN2
	TXA
	CLC
	ADC #.SIZEOF(spritemap)
	TAX
	STX @LOCAL01
@UNKNOWN1:
	CPX #$0380
	BCC @UNKNOWN0
	LDA #.LOWORD(-255)
	BRA @UNKNOWN7
@UNKNOWN2:
	TXA
	CLC
	ADC @VIRTUAL02
	CMP #$0380
	BCS @UNKNOWN6
	TXA
	STA @LOCAL00
	BRA @UNKNOWN5
@UNKNOWN3:
	TAX
	LDA OVERWORLD_SPRITEMAPS + spritemap::special_flags,X
	AND #$00FF
	CMP #<-1
	BEQ @UNKNOWN4
	LDA @LOCAL00
	CLC
	ADC #.SIZEOF(spritemap)
	TAX
	STX @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN4:
	LDA @LOCAL00
	CLC
	ADC #.SIZEOF(spritemap)
	STA @LOCAL00
@UNKNOWN5:
	LDX @LOCAL01
	TXA
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL04
	LDA @LOCAL00
	CMP @VIRTUAL04
	BCC @UNKNOWN3
	TXA
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA #.LOWORD(-254)
@UNKNOWN7:
	END_C_FUNCTION
