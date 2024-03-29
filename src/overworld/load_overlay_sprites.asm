
LOAD_OVERLAY_SPRITES:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #VRAM::OVERLAY_BASE
	STA @LOCAL02
	LOADPTR ENTITY_OVERLAY_SPRITES, @VIRTUAL0A
	LDA #0
	STA @VIRTUAL02
	BRA @FIRSTLOOPSTART
@LOADNEXTOVERLAYSPRITE:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #2
	LDA [@VIRTUAL0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	LDA [@VIRTUAL06]
	TAX
	LDA @LOCAL02
	JSR UNKNOWN_C4B1B8
	STA @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	LDY #3
	LDA [@VIRTUAL0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	LDA [@VIRTUAL06]
	TAX
	LDA @LOCAL01
	JSR UNKNOWN_C4B1B8
	STA @LOCAL02
	LDA #4
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	INC @VIRTUAL02
@FIRSTLOOPSTART:
	LDA f:ENTITY_OVERLAY_COUNT
	AND #$00FF
	STA @VIRTUAL04
	LDA @VIRTUAL02
	CMP @VIRTUAL04
	BCC @LOADNEXTOVERLAYSPRITE
	LDA #0
	STA @LOCAL00
	BRA @SECONDLOOPSTART
@FILLNEXTENTRY:
	ASL
	TAX
	LOADPTR ENTITY_OVERLAY_MUSHROOMIZED, @VIRTUAL06
	LDA @VIRTUAL06
	STA ENTITY_MUSHROOMIZED_OVERLAY_PTRS,X
	LOADPTR ENTITY_OVERLAY_SWEATING, @VIRTUAL06
	LDA @VIRTUAL06
	STA ENTITY_SWEATING_OVERLAY_PTRS,X
	LOADPTR ENTITY_OVERLAY_RIPPLE, @VIRTUAL06
	LDA @VIRTUAL06
	STA ENTITY_RIPPLE_OVERLAY_PTRS,X
	LOADPTR ENTITY_OVERLAY_BIG_RIPPLE, @VIRTUAL06
	LDA @VIRTUAL06
	STA ENTITY_BIG_RIPPLE_OVERLAY_PTRS,X
	LDA @LOCAL00
	INC
	STA @LOCAL00
@SECONDLOOPSTART:
	CMP #MAX_ENTITIES
	BCC @FILLNEXTENTRY
	END_C_FUNCTION
