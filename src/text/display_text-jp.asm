
DISPLAY_TEXT:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT32 ;const char* script
	STACK_RESERVE_RETURN_INT32 ;const char*
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL06
	LDY #0
	STY @LOCAL03
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @UNKNOWN1
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN74
@UNKNOWN1:
	JSR UNKNOWN_C14012
	STA @LOCAL02
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL02
	JSR UNKNOWN_C1866D
	STA @VIRTUAL02
	STA @LOCAL02
	LDA @VIRTUAL02
	BNE @UNKNOWN2
	MOVE_INT @VIRTUAL0A, @RETURNVAL
	JMP @UNKNOWN74
@UNKNOWN2:
	LDA @LOCAL02
	STA @VIRTUAL02
	LDX @VIRTUAL02
	TXY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	STA @LOCAL01
	INC @VIRTUAL06
	TXY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
@UNKNOWN6:
	LDY @LOCAL03
	BEQ @UNKNOWN7
	LDA @LOCAL01
	TAX
	LDA @VIRTUAL02
	STY @VIRTUAL02
	STA TEMP_REGISTER
	PEA .LOWORD(@UNK)
	LDA @VIRTUAL02
	DEC
	PHA
	LDA TEMP_REGISTER
@UNK:
	RTS
	TAY
	STY @LOCAL03
	BRA @UNKNOWN2
@UNKNOWN7:
	LDA @LOCAL01
	CMP #$20
	BCC @UNKNOWN13
	JMP @UNKNOWN72
@UNKNOWN13:
	STZ CC_ARGUMENT_GATHERING_LOOP_COUNTER
	CMP #$00
	BEQL @CC_00
	CMP #$01
	BEQL @CC_01
	CMP #$02
	BEQL @UNKNOWN73
	CMP #$03
	BEQL @UNKNOWN46
	CMP #$04
	BEQL @UNKNOWN47
	CMP #$05
	BEQL @UNKNOWN48
	CMP #$06
	BEQL @UNKNOWN49
	CMP #$07
	BEQL @UNKNOWN50
	CMP #$08
	BEQL @UNKNOWN51
	CMP #$09
	BEQL @UNKNOWN52
	CMP #$0A
	BEQL @UNKNOWN53
	CMP #$0B
	BEQL @UNKNOWN54
	CMP #$0C
	BEQL @UNKNOWN55
	CMP #$0D
	BEQL @UNKNOWN56
	CMP #$0E
	BEQL @UNKNOWN57
	CMP #$0F
	BEQL @UNKNOWN58
	CMP #$10
	BEQL @UNKNOWN59
	CMP #$11
	BEQL @UNKNOWN60
	CMP #$12
	BEQL @UNKNOWN61
	CMP #$13
	BEQL @UNKNOWN62
	CMP #$14
	BEQL @UNKNOWN63
	CMP #$18
	BEQL @UNKNOWN64
	CMP #$19
	BEQL @UNKNOWN65
	CMP #$1A
	BEQL @UNKNOWN66
	CMP #$1B
	BEQL @UNKNOWN67
	CMP #$1C
	BEQL @UNKNOWN68
	CMP #$1D
	BEQL @UNKNOWN69
	CMP #$1E
	BEQL @UNKNOWN70
	CMP #$1F
	BEQL @UNKNOWN71
	JMP @UNKNOWN2
@CC_00:
	JSR PRINT_NEWLINE
	JMP @UNKNOWN2
@CC_01:
	JSR GET_TEXT_X
	CMP #0
	BEQL @UNKNOWN2
	JSR PRINT_NEWLINE
	JMP @UNKNOWN2
@UNKNOWN46:
	LDX #0
	LDA #1
	JSR CC_13_14
	JMP @UNKNOWN2
@UNKNOWN47:
	LDY #.LOWORD(CC_04)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN48:
	LDY #.LOWORD(CC_05)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN49:
	LDY #.LOWORD(CC_06)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN50:
	LDY #.LOWORD(CC_07)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN51:
	LDY #.LOWORD(CC_08)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN52:
	LDY #.LOWORD(CC_09)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN53:
	LDY #.LOWORD(CC_0A)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN54:
	LDY #.LOWORD(CC_0B)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN55:
	LDY #.LOWORD(CC_0C)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN56:
	LDY #.LOWORD(CC_0D)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN57:
	LDY #.LOWORD(CC_0E)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN58:
	JSR INCREMENT_SECONDARY_MEMORY
	JMP @UNKNOWN2
@UNKNOWN59:
	LDY #.LOWORD(CC_10)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN60:
	LDA #1
	JSR SELECTION_MENU
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	JSR UNKNOWN_C11383
	JMP @UNKNOWN2
@UNKNOWN61:
	JSR CC_12
	JMP @UNKNOWN2
@UNKNOWN62:
	LDX #0
	TXA
	JSR CC_13_14
	JMP @UNKNOWN2
@UNKNOWN63:
	LDX #1
	TXA
	JSR CC_13_14
	JMP @UNKNOWN2
@UNKNOWN64:
	LDY #.LOWORD(CC_18_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN65:
	LDY #.LOWORD(CC_19_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN66:
	LDY #.LOWORD(CC_1A_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN67:
	LDY #.LOWORD(CC_1B_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN68:
	LDY #.LOWORD(CC_1C_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN69:
	LDY #.LOWORD(CC_1D_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN70:
	LDY #.LOWORD(CC_1E_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN71:
	LDY #.LOWORD(CC_1F_TREE)
	STY @LOCAL03
	JMP @UNKNOWN2
@UNKNOWN72:
	JSR PRINT_LETTER
	JMP @UNKNOWN2
@UNKNOWN73:
	LDY @VIRTUAL02
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA @VIRTUAL02
	JSR UNKNOWN_C1869D
	JSR UNKNOWN_C14049
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN74:
	END_C_FUNCTION
