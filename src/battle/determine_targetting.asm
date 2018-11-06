
DETERMINE_TARGETTING: ;$C1ADB4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE7
	TCD
	PLA
	TXY
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $01
	REP #PROC_FLAGS::ACCUM8
	LOADPTR BATTLE_ACTION_TABLE, $06
	TXA
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	STA $17
	PHA
	LDA $06
	STA $0A
	LDA $08
	STA $0C
	PLA
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BEQ @ENEMY_TARGETTING_PSI
	CMP #$0001
	BNE @OTHER_PSI
	JMP a:.LOWORD(@ALLY_TARGETTING_PSI)
@OTHER_PSI:
	JMP a:.LOWORD(@RETURN)
@ENEMY_TARGETTING_PSI:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $17
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BEQ @ENEMY_NONE
	CMP #$0001
	BEQ @ENEMY_SINGLE
	CMP #$0002
	BEQ @ENEMY_SINGLE_RANDOM
	CMP #$0003
	BEQ @ENEMY_ROW
	CMP #$0004
	BEQ @ENEMY_ALL
	BRA @ENEMY_ALL
@ENEMY_NONE:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA $00
	STA $16
	SEP #PROC_FLAGS::INDEX8
	STY $01
	JMP a:.LOWORD(@RETURN)
@ENEMY_SINGLE:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA $00
	STA $16
	TXY
	LDX #$0001
	BRK
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C1242E)
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	JMP a:.LOWORD(@RETURN)
@ENEMY_SINGLE_RANDOM:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA $00
	STA $16
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	JSL COUNT_CHARS
	DEC
	JSL RAND_MOD
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	INC $01
	JMP a:.LOWORD(@RETURN)
@ENEMY_ROW:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0012
	STA $00
	STA $16
	TXY
	LDX #$0001
	BRK
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSR a:.LOWORD(UNKNOWN_C1242E)
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	JMP a:.LOWORD(@RETURN)
@ENEMY_ALL:
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	ORA #$0004
	STA $00
	STA $16
	JMP a:.LOWORD(@RETURN)
@ALLY_TARGETTING_PSI:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $17
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BEQ @ALLY_NONE
	CMP #$0001
	BEQ @ALLY_SINGLE
	CMP #$0002
	BEQ @ALLY_SINGLE_RANDOM
	CMP #$0003
	BNE @ALLY_UNKNOWNVALUE_CHECK1
	JMP a:.LOWORD(@ALLY_ALL)
@ALLY_UNKNOWNVALUE_CHECK1:
	CMP #$0004
	BNE @ALLY_UNKNOWNVALUE_CHECK2
	JMP a:.LOWORD(@ALLY_ALL)
@ALLY_UNKNOWNVALUE_CHECK2:
	JMP a:.LOWORD(@ALLY_ALL)
@ALLY_NONE:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
	STA $16
	SEP #PROC_FLAGS::INDEX8
	STY $01
	BRA @RETURN
@ALLY_SINGLE:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
	STA $16
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @ONLY_ONE_ALLY
	LDA #$0003
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #$0000
	STA $06
	LDA #$0000
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDX #$0001
	BRK
	TXA
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	JSR a:.LOWORD(UNKNOWN_C19437)
	BRA @RETURN
@ONLY_ONE_ALLY:
	SEP #PROC_FLAGS::INDEX8
	STY $01
	BRA @RETURN
@ALLY_SINGLE_RANDOM:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
	STA $16
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL COUNT_CHARS
	DEC
	JSL RAND_MOD
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+150,X
	STA $01
	BRA @RETURN
@ALLY_ALL:
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	ORA #$0004
	STA $00
	STA $16
@RETURN:
	REP #PROC_FLAGS::ACCUM8
	LDA $01
	AND #$00FF
	STA $02
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	JSL ASL16_ENTRY2
	ORA $02
	REP #PROC_FLAGS::INDEX8
	PLD
	RTS