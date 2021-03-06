
UNKNOWN_C48FC4: ;$C48FC4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA .LOWORD(UNKNOWN_7E4DBA)
	CLC
	ADC .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7EB4B6)
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE) + game_state::unknownB0
	CMP #$0002
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E9F2C)
	DEC
	STA .LOWORD(UNKNOWN_7E9F2C)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$003C
	STA .LOWORD(UNKNOWN_7E9F2C)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9F1A)
	STA $02
	LDA #$0001
	STA $14
	LDA #$0000
	STA $04
	STA $12
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN4:
	LDA $14
	BEQ @UNKNOWN5
	LDY $02
	INY
	STY $10
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	BEQ @UNKNOWN5
	LDX $02
	INX
	INX
	STX $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	DEC
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN5
	LDA #$0002
	JSL RAND_MOD
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDY $10
	LDA a:.LOWORD(RAM),Y
	CLC
	ADC $00
	DEC
	LDX $0E
	STA a:.LOWORD(RAM),X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	JSL PLAY_SOUND
	STZ $14
@UNKNOWN5:
	LDX $02
	INX
	INX
	INX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @UNKNOWN6
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN6
	LOADPTR TIMED_ITEM_TRANSFORMATION_TABLE, $06
	LDA $04
	OPTIMIZED_MULT $04, 5
	TAY
	STY $0E
	TYA
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAX
	LDA #$00FF
	JSL TAKE_ITEM_FROM_CHARACTER
	STA $10
	LDY $0E
	TYA
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	TAX
	LDA $10
	JSL GIVE_ITEM_TO_CHARACTER
@UNKNOWN6:
	INC $02
	INC $02
	INC $02
	INC $02
	LDA $12
	STA $04
	INC $04
	LDA $04
	STA $12
@UNKNOWN7:
	LDA $04
	CMP #$0004
	BCS @UNKNOWN8
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN8:
	PLD
	RTL
