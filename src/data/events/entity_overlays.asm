
.INCLUDE "spriteoverlaymacros.asm"

.ENUM ORIENTATION
	VERTICAL = $8000
	HORIZONTAL = $4000
.ENDENUM

ENTITY_OVERLAY_DATA:
ENTITY_OVERLAY_COUNT:
	.BYTE $04

ENTITY_OVERLAY_SPRITES:
	;Sweating
	.WORD OVERWORLD_SPRITE::SWEAT
	.BYTE $00
	.BYTE $01

	;Mushroomized
	.WORD OVERWORLD_SPRITE::LITTLE_MUSHROOM
	.BYTE $00
	.BYTE $FF

	;Small water ripple
	.WORD OVERWORLD_SPRITE::WATER_RIPPLE
	.BYTE $00
	.BYTE $FF

	;Big water ripple
	.WORD OVERWORLD_SPRITE::BIG_WATER_RIPPLE
	.BYTE $00
	.BYTE $FF

ENTITY_OVERLAY_SWEATING_FRAME_1:
	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $3360 | ORIENTATION::HORIZONTAL
	.BYTE $EA ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $2360 | ORIENTATION::HORIZONTAL
	.BYTE $EA ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_SWEATING_FRAME_2:
	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $3362 | ORIENTATION::HORIZONTAL
	.BYTE $EA ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $2362 | ORIENTATION::HORIZONTAL
	.BYTE $EA ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_SWEATING_FRAME_3:
	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $3360
	.BYTE $04 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $2360
	.BYTE $04 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_SWEATING_FRAME_4:
	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $3362
	.BYTE $04 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F0 ;Y Position, relative to sprite
	.WORD $2362
	.BYTE $04 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_MUSHROOMIZED_FRAME_1:
	.BYTE $E8 ;Y Position, relative to sprite
	.WORD $3364
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $E8 ;Y Position, relative to sprite
	.WORD $2364
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_RIPPLE_FRAME_1:
	.BYTE $FE ;Y Position, relative to sprite
	.WORD $3366
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $FE ;Y Position, relative to sprite
	.WORD $2366
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_RIPPLE_FRAME_2:
	.BYTE $FE ;Y Position, relative to sprite
	.WORD $3366 | ORIENTATION::HORIZONTAL
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $FE ;Y Position, relative to sprite
	.WORD $2366 | ORIENTATION::HORIZONTAL
	.BYTE $F8 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_BIG_RIPPLE_FRAME_1:
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $3368
	.BYTE $F0 ;X Position, relative to sprite
	.BYTE $00
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $336A
	.BYTE $00 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $2368
	.BYTE $F0 ;X Position, relative to sprite
	.BYTE $00
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $236A
	.BYTE $00 ;X Position, relative to sprite
	.BYTE $80

ENTITY_OVERLAY_BIG_RIPPLE_FRAME_2:
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $336A | ORIENTATION::HORIZONTAL
	.BYTE $F0 ;X Position, relative to sprite
	.BYTE $00
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $3368 | ORIENTATION::HORIZONTAL
	.BYTE $00 ;X Position, relative to sprite
	.BYTE $80

	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $236A | ORIENTATION::HORIZONTAL
	.BYTE $F0 ;X Position, relative to sprite
	.BYTE $00
	.BYTE $F8 ;Y Position, relative to sprite
	.WORD $2368 | ORIENTATION::HORIZONTAL
	.BYTE $00 ;X Position, relative to sprite
	.BYTE $80

; Format:
; 00XX YYYY
; Valid XX:
;   01 = Show frame described at $YYYY ($0000 for nothing)
;   02 = Wait YYYY frames
;   03 = Jump to $YYYY
ENTITY_OVERLAY_SWEATING:
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_SWEATING_FRAME_1)
	DELAYNEXTFRAME $0008
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_SWEATING_FRAME_2)
	DELAYNEXTFRAME $0008
	SHOWFRAME $0000
	DELAYNEXTFRAME $0010
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_SWEATING_FRAME_3)
	DELAYNEXTFRAME $0008
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_SWEATING_FRAME_4)
	DELAYNEXTFRAME $0008
	SHOWFRAME $0000
	DELAYNEXTFRAME $0010
	JUMPTO .LOWORD(ENTITY_OVERLAY_SWEATING)

ENTITY_OVERLAY_MUSHROOMIZED:
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_MUSHROOMIZED_FRAME_1)
	DELAYNEXTFRAME $00FF
	JUMPTO .LOWORD(ENTITY_OVERLAY_MUSHROOMIZED)

ENTITY_OVERLAY_RIPPLE:
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_RIPPLE_FRAME_1)
	DELAYNEXTFRAME $000C
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_RIPPLE_FRAME_2)
	DELAYNEXTFRAME $000C
	JUMPTO .LOWORD(ENTITY_OVERLAY_RIPPLE)

ENTITY_OVERLAY_BIG_RIPPLE:
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_BIG_RIPPLE_FRAME_1)
	DELAYNEXTFRAME $000C
	SHOWFRAME .LOWORD(ENTITY_OVERLAY_BIG_RIPPLE_FRAME_2)
	DELAYNEXTFRAME $000C
	JUMPTO .LOWORD(ENTITY_OVERLAY_BIG_RIPPLE)
