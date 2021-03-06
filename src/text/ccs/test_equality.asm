
CC_18_07: ;$C1528D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	CMP #$0004
	BCS @UNKNOWN0
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_18_07)
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0008
	SEP #PROC_FLAGS::INDEX8
	TAY
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $0A
	STZ $0B
	STZ $0C
	STZ $0D
	REP #PROC_FLAGS::ACCUM8
	LDA $0A
	ORA $06
	STA $0A
	LDA $0C
	ORA $08
	STA $0C
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	TAY
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $0A
	ORA $06
	STA $0A
	LDA $0C
	ORA $08
	STA $0C
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	TAY
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+3
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $0A
	ORA $06
	STA $0A
	LDA $0C
	ORA $08
	STA $0C
	REP #PROC_FLAGS::INDEX8
	LDX $12
	BNE @UNKNOWN1
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	BRA @UNKNOWN3
@UNKNOWN1:
	CPX #$0001
	BNE @UNKNOWN2
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	BRA @UNKNOWN3
@UNKNOWN2:
	JSR a:.LOWORD(GET_SECONDARY_MEMORY)
	STA $06
	STZ $08
@UNKNOWN3:
	LDA $06
	CMP $0A
	LDA $08
	SBC $0C
	BCS @UNKNOWN4
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA $0C
	CMP $08
	BNE @UNKNOWN5
	LDA $0A
	CMP $06
@UNKNOWN5:
	BNE @UNKNOWN6
	LDX #$0001
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX #$0002
@UNKNOWN7:
	TXA
@UNKNOWN8:
	STA $06
	STZ $08
	BPL @UNKNOWN9
	DEC $08
@UNKNOWN9:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN10:
	PLD
	RTS
