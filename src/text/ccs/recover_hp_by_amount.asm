
CC_1E_02: ;$C14A50
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STX $02
	LDA #$0001
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1E_02)
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	TAX
	BEQ @UNKNOWN3
	TXA
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR GET_ARGUMENT_MEMORY
	LDA $06
@UNKNOWN4:
	LDY #$0001
	LDX $02
	JSR RECOVER_HP_AMTPERCENT
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
