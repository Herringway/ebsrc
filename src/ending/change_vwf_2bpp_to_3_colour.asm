
CHANGE_VWF_2BPP_TO_3_COLOUR:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	LDX #.LOWORD(VWF_BUFFER)
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL02
	JMP @UNKNOWN10
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA @LOCAL01
	STA @VIRTUAL00
	LDA __BSS_START__,X
	STA @LOCAL00
	LDA __BSS_START__+1,X
	STA @VIRTUAL01
	LDY #0
	JMP @UNKNOWN8
@UNKNOWN1:
	LDA @VIRTUAL00
	ASL
	STA @VIRTUAL00
	LDA @LOCAL01
	ASL
	STA @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN2
	LDA @VIRTUAL01
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FE
	STA @VIRTUAL00
	LDA @LOCAL01
	AND #$00FE
	STA @LOCAL01
	BRA @UNKNOWN7
@UNKNOWN2:
	.A16
	LDA @LOCAL00
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN3
	LDA #1
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #0
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	PHA
	LDA @VIRTUAL00
	STA TEMP_REGISTER
	PLA
	STA @VIRTUAL00
	LDA TEMP_REGISTER
	ORA @VIRTUAL00
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN5
	LDA #1
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA #0
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	ORA @LOCAL01
	STA @LOCAL01
@UNKNOWN7:
	LDA @LOCAL00
	ASL
	STA @LOCAL00
	LDA @VIRTUAL01
	ASL
	STA @VIRTUAL01
	INY
@UNKNOWN8:
	CPY #8
	BCCL @UNKNOWN1
	LDA @LOCAL01
	STA __BSS_START__+1,X
	LDA @VIRTUAL00
	STA __BSS_START__,X
	INX
	INX
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL02
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL02
@UNKNOWN10:
	LDA @VIRTUAL04
	ASL
	ASL
	ASL
	ASL
	PHA
	LDA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CMP @VIRTUAL02
	BCCL @UNKNOWN0
	PLD
	RTL