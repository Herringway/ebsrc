
WINDOW_TICK: ;$C12DD5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL RAND
	.A16
	LDA UNKNOWN_7E9622
	AND #$00FF
	BNE @UNKNOWN4
	LDA UNKNOWN_7E9623
	AND #$00FF
	BNE @UNKNOWN1
	LDA WINDOW_HEAD
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDA WINDOW_TAIL
	JSL UNKNOWN_C107AF
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL UNKNOWN_C2087C
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9623
@UNKNOWN2:
	JSL HP_PP_ROLLER
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E9624
	JSL UPDATE_HPPP_METER_TILES
	LDA UNKNOWN_7EB4B6
	BNE @UNKNOWN3
	JSR UNKNOWN_C1FF2C
	CMP #$0000
	BRK
	BEQ @UNKNOWN3
	JSL UNKNOWN_C47F87
@UNKNOWN3:
	STZ UNKNOWN_7E9649
	JSL UNKNOWN_C2038B
	JSL UNKNOWN_C1004E
@UNKNOWN4:
	RTL
