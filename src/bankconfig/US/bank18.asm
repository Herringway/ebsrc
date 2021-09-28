.SEGMENT "BANK18"
.INCLUDE "common.asm"

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

ANTI_PIRACY_NOTICE_ARRANGEMENT: ;$D8F05E
	BINARY "errors/antipiracy.arr.lzhal"

ANTI_PIRACY_NOTICE_GRAPHICS: ;$D8F20D
	BINARY "errors/antipiracy.gfx.lzhal"

WARNING_PALETTE: ;$D8F3BE
	BINARY "errors/shared.pal"

FAULTY_GAME_PAK_ARRANGEMENT: ;$D8F3C6
	BINARY "errors/faulty.arr.lzhal"

FAULTY_GAME_PAK_GRAPHICS: ;$D8F5C4
	BINARY "errors/faulty.gfx.lzhal"

AUDIO_PACK_61: ;$D8F6B7
	AUDIOPACKBIN $92C, $5800, "audiopacks/61.bin"
	AUDIOPACKTERMINATOR
