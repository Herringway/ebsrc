
UNKNOWN_C440B5: ;$C4419F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $04
	STA $02
	LDY #$0000
	STY $10
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $00
	AND #$00FF
	SEC
	SBC #$0050
	AND #$007F
	STA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	STA UNKNOWN_7E1B86,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E1B56,Y
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT FONT_PTR_TABLE, $06
	LDA $0E
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	TAX
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC UNKNOWN_7E5E6D
	STA UNKNOWN_7E1B6E,Y
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	AND #$00FF
	TAX
	LDA #$0000
	JSL UNKNOWN_C44E61
	LDY $10
	INY
	STY $10
	INC $02
@UNKNOWN1:
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN2
	TYA
	CMP $04
	BNE @UNKNOWN0
@UNKNOWN2:
	STY UNKNOWN_7E9662
	TYA
	CMP $04
	BCS @RETURN
	SEP #PROC_FLAGS::ACCUM8
	LDA #$20
	STA UNKNOWN_7E1B56,Y
	LDX #$0070
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C44E61
	LDY $10
	TYX
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E1B86,X
	STY $02
	REP #PROC_FLAGS::ACCUM8
	INC $02
	LDA $04
	SEC
	SBC $02
	TAY
	STY $10
	TYA
	CLC
	SBC #$0000
	BRANCHLTEQS @RETURN
	BRA @UNKNOWN6
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$03
	LDX $02
	STA UNKNOWN_7E1B56,X
	LDX #$0053
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C44E61
	LDY $10
	DEY
	STY $10
	INC $02
@UNKNOWN6:
	CPY #$00
	BNE @UNKNOWN5
@RETURN:
	PLD
	RTL
