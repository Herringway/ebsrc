
UNKNOWN_C115F4:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAY
	STY @LOCAL02
	MOVE_INT @PARAM02, @VIRTUAL0A
	MOVE_INT @PARAM01, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL01
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
.ENDIF
	JSR UNKNOWN_C113D1
	TAX
	LDY @LOCAL02
	TYA
	STA a:menu_option::userdata,X
	LDA #2
	STA a:menu_option::unknown0,X
	TXA
	END_C_FUNCTION
