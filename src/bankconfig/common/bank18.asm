.SEGMENT "BANK18"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

.INCLUDE "data/map/tile_collision_data.asm"

.INCLUDE "data/map/tile_collision_pointers_00.asm"
.INCLUDE "data/map/tile_collision_pointers_01.asm"
.INCLUDE "data/map/tile_collision_pointers_02.asm"
.INCLUDE "data/map/tile_collision_pointers_03.asm"
.INCLUDE "data/map/tile_collision_pointers_04.asm"
.INCLUDE "data/map/tile_collision_pointers_05.asm"
.INCLUDE "data/map/tile_collision_pointers_06.asm"
.INCLUDE "data/map/tile_collision_pointers_07.asm"
.INCLUDE "data/map/tile_collision_pointers_08.asm"
.INCLUDE "data/map/tile_collision_pointers_09.asm"
.INCLUDE "data/map/tile_collision_pointers_10.asm"
.INCLUDE "data/map/tile_collision_pointers_11.asm"
.INCLUDE "data/map/tile_collision_pointers_12.asm"
.INCLUDE "data/map/tile_collision_pointers_13.asm"
.INCLUDE "data/map/tile_collision_pointers_14.asm"
.INCLUDE "data/map/tile_collision_pointers_15.asm"
.INCLUDE "data/map/tile_collision_pointers_16.asm"
.INCLUDE "data/map/tile_collision_pointers_17.asm"
.INCLUDE "data/map/tile_collision_pointers_18.asm"
.INCLUDE "data/map/tile_collision_pointers_19.asm"

ANTI_PIRACY_NOTICE_ARRANGEMENT:
	LOCALEBINARY "errors/antipiracy.arr.lzhal"

ANTI_PIRACY_NOTICE_GRAPHICS:
	LOCALEBINARY "errors/antipiracy.gfx.lzhal"

WARNING_PALETTE:
	BINARY "errors/shared.pal"

FAULTY_GAME_PAK_ARRANGEMENT:
	BINARY "errors/faulty.arr.lzhal"

FAULTY_GAME_PAK_GRAPHICS:
	BINARY "errors/faulty.gfx.lzhal"

.IF .DEFINED(USA)
	.IF .DEFINED(PROTOTYPE19950327)
		INSERT_AUDIO_PACK 127
	.ELSE
		INSERT_AUDIO_PACK 61
	.ENDIF
.ENDIF
