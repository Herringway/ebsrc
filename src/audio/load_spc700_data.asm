
LOAD_SPC700_DATA: ;$C0AB06
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STA a:.LOWORD(SPC_DATA_PTR)
	STX a:.LOWORD(UNKNOWN_7E00C8)
	PHB
	PEA $0000
	PLB
	PLB
	PHD
	PEA $0000
	PLD
	LDY #$0000
	LDA APUIO0
	CMP #$BBAA
	BEQ @UNKNOWN0
	JSR a:.LOWORD(WAIT_FOR_SPC700)
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(UNKNOWN_7E001E)
	AND #$007F
	STA a:.LOWORD(UNKNOWN_7E001E)
	STA f:NMITIMEN
	LDA #$00CC
	BRA @UNKNOWN7
@UNKNOWN1:
	LDA [<SPC_DATA_PTR],Y
	INY
	XBA
	LDA #$0000
	BRA @UNKNOWN4
@UNKNOWN2:
	XBA
	LDA [<SPC_DATA_PTR],Y
	INY
	XBA
@UNKNOWN3:
	CMP APUIO0
	BNE @UNKNOWN3
	INC
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	STA APUIO0
	SEP #PROC_FLAGS::ACCUM8
	DEX
	BNE @UNKNOWN2
@UNKNOWN5:
	CMP APUIO0
	BNE @UNKNOWN5
@UNKNOWN6:
	ADC #$0003
	BEQ @UNKNOWN6
@UNKNOWN7:
	PHA
	REP #PROC_FLAGS::ACCUM8
	LDA [<SPC_DATA_PTR],Y
	BNE @UNKNOWN8
	TAX
	LDA #$0500
	BRA @UNKNOWN9
@UNKNOWN8:
	TAX
	INY
	INY
	LDA [<SPC_DATA_PTR],Y
	INY
	INY
@UNKNOWN9:
	STA APUIO2
	SEP #PROC_FLAGS::ACCUM8
	CPX #$0001
	LDA #$0000
	ROL
	STA APUIO1
	ADC #$007F
	PLA
	STA APUIO0
@UNKNOWN10:
	CMP APUIO0
	BNE @UNKNOWN10
	BVS @UNKNOWN1
	REP #PROC_FLAGS::ACCUM8
@UNKNOWN11:
	LDA APUIO0
	BNE @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(UNKNOWN_7E001E)
	ORA #$0080
	STA a:.LOWORD(UNKNOWN_7E001E)
	STA f:NMITIMEN
	REP #PROC_FLAGS::ACCUM8
	PLD
	PLB
	RTL
