
UNKNOWN_C08529: ;$C08529
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0004
	TCD
	PLA
	LDY #$0002
	LDA [$0E],Y
	STA $00
	INY
	INY
	LDA [$0E],Y
	STA $02
	INY
	INY
	LDA [$0E],Y
	TAX
	LDA [$0E]
	AND #$01FF
	TAY
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$00],Y
	STA RAM,X
	INX
	INX
@UNKNOWN1:
	DEY
	DEY
	BPL @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$0E],Y
	LSR
	ORA UNKNOWN_7E0030
	STA UNKNOWN_7E0030
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
