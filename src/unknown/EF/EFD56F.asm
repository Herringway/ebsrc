
UNKNOWN_EFD56F: ;$EFD56F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STY $14
	STX $04
	STA $02
	LDA #$0004
	JSL SBRK
	TAX
	LDY $14
	TYA
	LSR
	LSR
	LSR
	LSR
	CMP #$000A
	BCC @UNKNOWN0
	CLC
	ADC #$0007
@UNKNOWN0:
	CLC
	ADC #$2030
	STA a:.LOWORD(RAM),X
	TYA
	AND #$000F
	CMP #$000A
	BCC @UNKNOWN1
	CLC
	ADC #$0007
@UNKNOWN1:
	CLC
	ADC #$2030
	STA a:.LOWORD(RAM)+2,X
	LDA $04
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #$7C00
	STA $12
	LDA #$007E
	STA $0E
	LDA $12
	STA $10
	TXY
	LDX #$0004
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY_ENTRY_B
	PLD
	RTS
