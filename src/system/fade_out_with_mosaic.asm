
FADE_OUT_WITH_MOSAIC: ;$C08814
	PHP
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0006
	TCD
	PLA
	STZ UNKNOWN_7E0028
	STA $00
	STX $02
	STY $04
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ MOSAIC_MIRROR
	LDA INIDISP_MIRROR
.IF .DEFINED(PROTOTYPE19950327) || .DEFINED(JPN)
.ELSE
	BMI @UNKNOWN2
.ENDIF
	SEC
	SBC $00
	REP #PROC_FLAGS::ACCUM8
	BMI @UNKNOWN2
	JSR SET_INIDISP
	LDA $04
	BEQ @UNKNOWN1
	JSR UNKNOWN_C087AB
@UNKNOWN1:
	LDA $02
	JSL UNKNOWN_C0878B
	BRA @UNKNOWN0
@UNKNOWN2:
.IF .DEFINED(PROTOTYPE19950327) || .DEFINED(JPN)
.ELSE
	REP #PROC_FLAGS::ACCUM8
.ENDIF
	LDA #$0080
	JSR SET_INIDISP
	SEP #PROC_FLAGS::ACCUM8
	STZ HDMAEN_MIRROR
	STZ UNKNOWN_7E002B
@UNKNOWN3:
	LDA UNKNOWN_7E002B
	BEQ @UNKNOWN3
	LDA #$0000
	STA f:HDMAEN
	REP #PROC_FLAGS::ACCUM8
	PLD
	PLP
	RTL
