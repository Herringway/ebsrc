
UNKNOWN_C4E7AE: ;$C4E7AE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 54
	LDA #$0000
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$0010
	REP #PROC_FLAGS::ACCUM8
	TDC
	CLC
	ADC #$0016
	JSL MEMSET16
	TDC
	CLC
	ADC #$0016
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #$0005
	JSL MEMCPY24
	LDA $02
	ASL
	TAX
	LDA UNKNOWN_C3FDB5,X
	TAY
	LDX #UNK_SIZE
	TDC
	CLC
	ADC #$0016
	JSR UNKNOWN_C4E583
	INC $02
@UNKNOWN1:
	LDA $02
	CMP #$0004
	BCC @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$0010
	REP #PROC_FLAGS::ACCUM8
	TDC
	CLC
	ADC #$0016
	JSL MEMSET16
	TDC
	CLC
	ADC #$0016
	PROMOTENEARPTRA $0A
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	PROMOTENEARPTR GAME_STATE + game_state::pet_name, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #$0006
	JSL MEMCPY24
	LDY #$01C0
	LDX #$0006
	TDC
	CLC
	ADC #$0016
	JSR UNKNOWN_C4E583
	LOADPTR CAST_SEQUENCE_FORMATTING, $32
	MOVE_INT $32, $06
	LDA #$0027
	CLC
	ADC $06
	STA $06
	STA $2E
	LDA $08
	STA $30
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDX #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	.A16
	PROMOTENEARPTR CHAR_STRUCT + (.SIZEOF(char_struct) * 1) + char_struct::name, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $2A
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT $2A, $06
	MOVE_INT $06, $12
	LDA #$0005
	JSL MEMCPY24
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LOADPTR CHARACTER_GUARDIAN_TEXT_1, $12
	JSL STRCAT
	MOVE_INT $2E, $06
	LDA [$06]
	TAY
	STY $28
	MOVE_INT $2E, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #$0016
	LDY $28
	JSR UNKNOWN_C4E583
	MOVE_INT $32, $06
	LDA #$0024
	CLC
	ADC $06
	STA $06
	STA $2E
	LDA $08
	STA $30
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDX #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	.A16
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT $2A, $06
	MOVE_INT $06, $12
	LDA #$0005
	JSL MEMCPY24
	.A16
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LOADPTR CHARACTER_GUARDIAN_TEXT_2, $12
	JSL STRCAT
	MOVE_INT $2E, $06
	LDA [$06]
	TAY
	STY $28
	MOVE_INT $2E, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #$0016
	LDY $28
	JSR UNKNOWN_C4E583
	MOVE_INT $32, $06
	LDA #$006C
	CLC
	ADC $06
	STA $06
	STA $2E
	LDA $08
	STA $30
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDX #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	.A16
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	PROMOTENEARPTR CHAR_STRUCT + (.SIZEOF(char_struct) * (PARTY_MEMBER::POO - 1)), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #$0005
	JSL MEMCPY24
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LOADPTR CHARACTER_GUARDIAN_TEXT_3, $12
	JSL STRCAT
	MOVE_INT $2E, $06
	MOVE_INT $06, $0A
	LDA [$0A]
	TAY
	STY $26
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #$0016
	LDY $26
	JSR UNKNOWN_C4E583
	PLD
	RTL
