
UNKNOWN_C0B149: ;$C0B149
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$000E
	TCD
	PLA
	STA $00
	STX $02
	STY $04
	LDA $1C
	STA $06
	TXA
	BMI @UNKNOWN0
	CMP #$0070
	BCS @UNKNOWN1
@UNKNOWN0:
	JMP a:.LOWORD(@UNKNOWN16)
@UNKNOWN1:
	LDY #$0000
	LDA $02
	SEC
	SBC $06
	BMI @UNKNOWN3
	BEQ @UNKNOWN3
	TAX
	LDA #$00FF
@UNKNOWN2:
	STA $3FD0,Y
	INY
	INY
	DEX
	BNE @UNKNOWN2
	LDA #$0000
@UNKNOWN3:
	CLC
	ADC $06
	STA $0A
	LDA $04
	STA f:WRMPYA
@UNKNOWN4:
	LDA $0A
	BNE @UNKNOWN5
	LDA $04
	BRA @UNKNOWN6
@UNKNOWN5:
	XBA
	STA f:WRDIVL
	SEP #PROC_FLAGS::ACCUM8
	LDA $06
	STA f:WRDIVB
	REP #PROC_FLAGS::ACCUM8
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA f:RDDIVL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_C0B2FF,X
	STA f:WRMPYB
	REP #PROC_FLAGS::ACCUM8
	LDA #$0080
	CLC
	ADC f:RDMPYL
	XBA
	AND #$00FF
@UNKNOWN6:
	STA $08
	CLC
	ADC $00
	BMI @UNKNOWN10
	CMP #$0100
	BCC @UNKNOWN7
	LDA #$00FF
@UNKNOWN7:
	STA $0C
	LDA $00
	SEC
	SBC $08
	BMI @UNKNOWN8
	CMP #$0100
	BCS @UNKNOWN10
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #$0000
@UNKNOWN9:
	SEP #PROC_FLAGS::ACCUM8
	XBA
	LDA $0C
	XBA
	REP #PROC_FLAGS::ACCUM8
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA #$00FF
@UNKNOWN11:
	STA $3FD0,Y
	PHA
	LDA $0A
	ASL
	ASL
	STA $0C
	TYA
	CLC
	ADC $0C
	TAX
	PLA
	CPX #$01C0
	BCS @UNKNOWN12
	STA $3FD0,X
@UNKNOWN12:
	INY
	INY
	DEC $0A
	BMI @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN13:
	TYA
	CLC
	ADC $06
	ADC $06
	TAY
	CPY #$01C0
	BCS @UNKNOWN15
	LDA #$00FF
@UNKNOWN14:
	STA $3FD0,Y
	INY
	INY
	CPY #$01C0
	BCC @UNKNOWN14
@UNKNOWN15:
	PLD
	RTL
@UNKNOWN16:
	LDY #$01BE
	LDA #$00E0
	SEC
	SBC $02
	SEC
	SBC $06
	BMI @UNKNOWN18
	BEQ @UNKNOWN18
	TAX
	LDA #$00FF
@UNKNOWN17:
	STA $3FD0,Y
	DEY
	DEY
	DEX
	BNE @UNKNOWN17
	LDA #$0000
@UNKNOWN18:
	CLC
	ADC $06
	STA $0A
	LDA $04
	STA f:WRMPYA
@UNKNOWN19:
	LDA $0A
	BNE @UNKNOWN20
	LDA $04
	BRA @UNKNOWN21
@UNKNOWN20:
	XBA
	STA f:WRDIVL
	SEP #PROC_FLAGS::ACCUM8
	LDA $06
	STA f:WRDIVB
	REP #PROC_FLAGS::ACCUM8
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA f:RDDIVL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_C0B2FF,X
	STA f:WRMPYB
	REP #PROC_FLAGS::ACCUM8
	LDA #$0080
	CLC
	ADC f:RDMPYL
	XBA
	AND #$00FF
@UNKNOWN21:
	STA $08
	CLC
	ADC $00
	BMI @UNKNOWN25
	CMP #$0100
	BCC @UNKNOWN22
	LDA #$00FF
@UNKNOWN22:
	STA $0C
	LDA $00
	SEC
	SBC $08
	BMI @UNKNOWN23
	CMP #$0100
	BCS @UNKNOWN25
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA #$0000
@UNKNOWN24:
	SEP #PROC_FLAGS::ACCUM8
	XBA
	LDA $0C
	XBA
	REP #PROC_FLAGS::ACCUM8
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA #$00FF
@UNKNOWN26:
	STA $3FD0,Y
	PHA
	LDA $0A
	ASL
	ASL
	STA $0C
	TYA
	SEC
	SBC $0C
	TAX
	PLA
	CPX #$0000
	BMI @UNKNOWN27
	STA $3FD0,X
@UNKNOWN27:
	DEY
	DEY
	DEC $0A
	BMI @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN28:
	TYA
	SEC
	SBC $06
	SEC
	SBC $06
	TAY
	CPY #$0000
	BMI @UNKNOWN30
	LDA #$00FF
@UNKNOWN29:
	STA $3FD0,Y
	DEY
	DEY
	BPL @UNKNOWN29
@UNKNOWN30:
	PLD
	RTL