
UNKNOWN_C01D38: ;$C01D38
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STY $18
	STX $04
	TAX
	MOVE_INT $28, $06
	LDA [$06]
	AND #$00FF
	STA $02
	STA $16
	INC $06
	INC $06
	LDY #$0000
	STY $14
	JMP @UNKNOWN3
@UNKNOWN0:
	LDA #$0000
	STA $12
	BRA @UNKNOWN2
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA SPRITE_TABLE_7E467E,X
	INX
	STX $10
	REP #PROC_FLAGS::ACCUM8
	LDA $12
	STA $02
	LDA $04
	CLC
	ADC $02
	ASL
	TAX
	LDA f:UNKNOWN_C4303C,X
	STA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDX $10
	STA SPRITE_TABLE_7E467E,X
	INX
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	XBA
	AND #$00FF
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $18
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	LDY #$0002
	LDA [$06],Y
	AND #$00FE
	ORA $01
	ORA $00
	STA SPRITE_TABLE_7E467E,X
	INX
	LDY #$0003
	LDA [$06],Y
	STA SPRITE_TABLE_7E467E,X
	INX
	LDY #$0004
	LDA [$06],Y
	STA SPRITE_TABLE_7E467E,X
	INX
	REP #PROC_FLAGS::ACCUM8
	LDA #$0005
	CLC
	ADC $06
	STA $06
	LDA $12
	INC
	STA $12
@UNKNOWN2:
	LDY $16
	STY $02
	CMP $02
	BCC @UNKNOWN1
	LDY $14
	INY
	STY $14
@UNKNOWN3:
	CPY #$0002
	BCCL @UNKNOWN0
	PLD
	RTS
