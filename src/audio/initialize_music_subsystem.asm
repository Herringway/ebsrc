
INITIALIZE_MUSIC_SUBSYSTEM:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #$FFFF
	STA CURRENT_SEQUENCE_PACK
	STA CURRENT_PRIMARY_SAMPLE_PACK
	LDA f:MUSIC_DATASET_TABLE + (0 * .SIZEOF(pack_table_entry)) + pack_table_entry::sequence_pack
	AND #$00FF
	STA @LOCAL01
	STA UNKNOWN_7EB543
	STA CURRENT_SECONDARY_SAMPLE_PACK
	LOADPTR MUSIC_PACK_POINTER_TABLE, @VIRTUAL06
	LDA @LOCAL01
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(music_pack_pointer)
	TAY
	STY @LOCAL00
	TYA
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A] ;music_pack_pointer::bank
	AND #$00FF
	JSR GET_AUDIO_BANK
	TAX
	LDY @LOCAL00
	TYA
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06] ;music_pack_pointer::addr
	AND SEQUENCE_PACK_MASK
	JSL LOAD_SPC700_DATA
	LDA #$0001
	STA ENABLE_AUTO_SECTOR_MUSIC_CHANGES
	END_C_FUNCTION