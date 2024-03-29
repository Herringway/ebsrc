
UNKNOWN_C1952F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	DEC
	STA @VIRTUAL02
	JSR SET_INSTANT_PRINTING




	DISPLAY_TEXT_PTR STATUS_WINDOW_TEXT

	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BEQ @UNKNOWN0
	LDA #8
	STA PAGINATION_WINDOW
@UNKNOWN0:
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	STY @LOCAL02
	TYA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #.SIZEOF(char_struct::name)
	LDA #8
	JSL SET_WINDOW_TITLE
	LDA #1

	JSR UNKNOWN_C10EB4
	LDX #0
	LDA #5
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::level,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDA #2
	JSR UNKNOWN_C10EB4
	LDX #3
	LDA #9
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::current_hp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #3
	LDA #13
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::max_hp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #4
	LDA #9
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::current_pp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #4
	LDA #13
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::max_pp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #0
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::offense,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #1
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::defense,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #2
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::speed,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #3
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::guts,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #4
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::vitality,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #5
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::iq,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #6
	LDA #25
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::luck,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDA #6
	JSR UNKNOWN_C10EB4
	LDX #5
	LDA #9
	JSR UNKNOWN_C438A5
	LDY @LOCAL02
	TYA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::exp
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT_CONSTANT EXP_LIMIT, @VIRTUAL0A
	CLC
	LDA @VIRTUAL06
	SBC @VIRTUAL0A
	LDA @VIRTUAL06+2
	SBC @VIRTUAL0A+2
	BRANCHLTEQS @UNKNOWN3
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
@UNKNOWN3:
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #6
	LDA #9
	JSR UNKNOWN_C438A5
	LDA @VIRTUAL02
	INC
	JSL GET_REQUIRED_EXP
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER

	LDX #0
	STX @LOCAL02
	JMP @UNKNOWN10
@UNKNOWN4:
	STX @VIRTUAL04
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::afflictions
	CLC
	ADC @VIRTUAL04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN9
	LDX @LOCAL02
	TXA
	BEQ @UNKNOWN5
	CMP #1
	BEQ @UNKNOWN6
	CMP #5
	BEQ @UNKNOWN7
	BRA @UNKNOWN11
@UNKNOWN5:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, @VIRTUAL06
	LDA @LOCAL01
	AND #$00FF
	DEC
	OPTIMIZED_MULT @VIRTUAL04, 10
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	BRA @UNKNOWN8
@UNKNOWN6:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, @VIRTUAL06
	LDA @LOCAL01
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, 10
	CLC
	ADC #60
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	BRA @UNKNOWN8
@UNKNOWN7:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_6, @VIRTUAL06
@UNKNOWN8:
	LDX #1
	TXA
	JSR UNKNOWN_C438A5
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #256
	JSR PRINT_STRING
	BRA @UNKNOWN11
@UNKNOWN9:
	LDX @LOCAL02
	INX
	STX @LOCAL02
@UNKNOWN10:
	CPX #7
	BCCL @UNKNOWN4
@UNKNOWN11:
	LDX #1
	LDA #10
	JSR UNKNOWN_C438A5
	LDX #0
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::afflictions
	JSL UNKNOWN_C223D9
	JSR PRINT_LETTER
	LDA @VIRTUAL02
	CMP #2
	BEQ @UNKNOWN12
	LDX #7
	LDA #1
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_4, @LOCAL00
	LDA #27
	JSR PRINT_STRING
@UNKNOWN12:
	JSR CLEAR_INSTANT_PRINTING
	END_C_FUNCTION
