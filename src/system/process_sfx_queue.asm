
PROCESS_SFX_QUEUE: ;$C08501
	SEP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDX <SOUND_EFFECT_QUEUE_INDEX + 0
	CPX <SOUND_EFFECT_QUEUE_END_INDEX + 0
	BEQ @UNKNOWN0
	LDA SOUND_EFFECT_QUEUE,X
	STA APUIO3
	TXA
	INC
	AND #$0007
	STA <SOUND_EFFECT_QUEUE_INDEX
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTS
