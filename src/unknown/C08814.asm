
UNKNOWN_C08814: ;$C08814
	PHP
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0006
	TCD
	PLA
	STZ a:.LOWORD($0028)
	STA $00
	STX $02
	STY $04
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(MOSAIC_MIRROR)
	LDA a:.LOWORD(INIDISP_MIRROR)
	BMI @UNKNOWN2
	SEC
	SBC $00
	REP #PROC_FLAGS::ACCUM8
	BMI @UNKNOWN2
	JSR a:.LOWORD(UNKNOWN_C0879D)
	LDA $04
	BEQ @UNKNOWN1
	JSR a:.LOWORD(UNKNOWN_C087AB)
@UNKNOWN1:
	LDA $02
	JSL UNKNOWN_C0878B
	BRA @UNKNOWN0
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0080
	JSR a:.LOWORD(UNKNOWN_C0879D)
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(HDMAEN_MIRROR)
	STZ a:.LOWORD(UNKNOWN_7E002B)
@UNKNOWN3:
	LDA a:.LOWORD(UNKNOWN_7E002B)
	BEQ @UNKNOWN3
	LDA #$0000
	STA f:HDMAEN
	REP #PROC_FLAGS::ACCUM8
	PLD
	PLP
	RTL
