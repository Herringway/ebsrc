
UNKNOWN_C08456: ;$C08456
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDA $7B
	AND #$8000
	BEQ @UNKNOWN1
	LDA $77
	ORA $79
	TAX
	CMP $8B
	BNE @UNKNOWN0
	INC $89
	LDA $89
	CMP #$00FF
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA $89
	STA [$85]
	INC $85
	LDA $8B
	STA [$85]
	INC $85
	INC $85
	STX $8B
	STZ $89
	INC $89
	LDA #$0000
	STA [$85]
	LDA $85
	BPL @UNKNOWN1
	LDA $7B
	AND #$7FFF
	STA $7B
@UNKNOWN1:
	RTS
