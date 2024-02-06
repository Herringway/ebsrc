
;returns channel 2 if channel 1 == channel 2
;returns channel 1 if channel2 > channel1 and channel2 - channel1 <= 6
;returns (channel 2) + 6 if channel2 > channel1 and channel2 - channel1 > 6
;returns (channel 2) - 6 if channel2 < channel1 and channel1 - channel2 <= 6
;returns channel 1 if channel2 < channel1 and channel1 - channel2 > 6
UNKNOWN_C00434:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 "COLOUR" ;int
	STACK_RESERVE_PARAM_INT16 "COLOUR2" ;int
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	STA @LOCAL00
	CMP @VIRTUAL02
	BNE @UNKNOWN0 ;channel 1 != channel 2
	LDA @VIRTUAL02
	BRA @UNKNOWN4
@UNKNOWN0:
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN2 ;channel1 <= channel 2
	SEC
	SBC @VIRTUAL02
	CMP #6
	BLTEQ @UNKNOWN1 ;channel1 - channel2 <= 6
	LDA @LOCAL00
	SEC
	SBC #6
	STA @VIRTUAL02
@UNKNOWN1:
	LDA @VIRTUAL02
	BRA @UNKNOWN4
@UNKNOWN2:
	STA @VIRTUAL04
	LDA @VIRTUAL02
	SEC
	SBC @VIRTUAL04
	CMP #6
	BLTEQ @UNKNOWN3 ;channel2 - channel1 <= 6
	LDA @LOCAL00
	CLC
	ADC #6
	STA @VIRTUAL02
@UNKNOWN3:
	LDA @VIRTUAL02
@UNKNOWN4:
	END_C_FUNCTION
