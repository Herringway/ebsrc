
DECOMP_ITOI_PRODUCTION: ;$C4DD28
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR PRODUCED_ITOI_ARRANGEMENT, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	JSR UNKNOWN_C4DCF6
	COPY_TO_VRAM1P $06, $7C00, $800, $00
	.A16
	LOADPTR UNKNOWN_7F0800, $06
	LOADPTR PRODUCED_ITOI_GRAPHICS, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $6000, $400, $00
	.A16
	LOADPTR NINTENDO_ITOI_PALETTE, $0E
	PROMOTENEARPTR $200, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	JSL DECOMP
	STZ CUR_TEXT_PAL
	LDA #$0018
	JSL UNKNOWN_C0856B
	PLD
	RTL
