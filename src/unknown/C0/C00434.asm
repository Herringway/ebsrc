
;A = colour channel 1 (5 bits), X = colour channel 2 (5 bits)
;returns channel 2 if channel 1 == channel 2
;returns channel 1 if channel2 > channel1 and channel2 - channel1 <= 6
;returns (channel 2) + 6 if channel2 > channel1 and channel2 - channel1 > 6
;returns (channel 2) - 6 if channel2 < channel1 and channel1 - channel2 <= 6
;returns channel 1 if channel2 < channel1 and channel1 - channel2 > 6
UNKNOWN_C00434: ;$C00434
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	STA $0E
	CMP $02
	BNE @UNKNOWN0 ;channel 1 != channel 2
	LDA $02
	BRA @UNKNOWN4
@UNKNOWN0:
	CMP $02
	BLTEQ @UNKNOWN2 ;channel1 <= channel 2
	SEC
	SBC $02
	CMP #$0006
	BLTEQ @UNKNOWN1 ;channel1 - channel2 <= 6
	LDA $0E
	SEC
	SBC #$0006
	STA $02
@UNKNOWN1:
	LDA $02
	BRA @UNKNOWN4
@UNKNOWN2:
	STA $04
	LDA $02
	SEC
	SBC $04
	CMP #$0006
	BLTEQ @UNKNOWN3 ;channel2 - channel1 <= 6
	LDA $0E
	CLC
	ADC #$0006
	STA $02
@UNKNOWN3:
	LDA $02
@UNKNOWN4:
	PLD
	RTS
