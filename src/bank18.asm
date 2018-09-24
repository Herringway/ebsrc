.SEGMENT "BANK18"
.INCLUDE "common.asm"
.ORG $D80000

MAP_DATA_TILE_COLLISION_ARRANGEMENT_TABLE: ;$D80000
	.INCBIN "bin/unknowns/D80000.bin"

.INCLUDE "map_data/tile_collision_pointers_00.asm"
.INCLUDE "map_data/tile_collision_pointers_01.asm"
.INCLUDE "map_data/tile_collision_pointers_02.asm"
.INCLUDE "map_data/tile_collision_pointers_03.asm"
.INCLUDE "map_data/tile_collision_pointers_04.asm"
.INCLUDE "map_data/tile_collision_pointers_05.asm"
.INCLUDE "map_data/tile_collision_pointers_06.asm"
.INCLUDE "map_data/tile_collision_pointers_07.asm"
.INCLUDE "map_data/tile_collision_pointers_08.asm"
.INCLUDE "map_data/tile_collision_pointers_09.asm"
.INCLUDE "map_data/tile_collision_pointers_10.asm"
.INCLUDE "map_data/tile_collision_pointers_11.asm"
.INCLUDE "map_data/tile_collision_pointers_12.asm"
.INCLUDE "map_data/tile_collision_pointers_13.asm"
.INCLUDE "map_data/tile_collision_pointers_14.asm"
.INCLUDE "map_data/tile_collision_pointers_15.asm"
.INCLUDE "map_data/tile_collision_pointers_16.asm"
.INCLUDE "map_data/tile_collision_pointers_17.asm"
.INCLUDE "map_data/tile_collision_pointers_18.asm"
.INCLUDE "map_data/tile_collision_pointers_19.asm"

ANTI_PIRACY_NOTICE_ARRANGEMENT: ;$D8F05E
	.INCBIN "bin/unknowns/D8F05E.bin"

ANTI_PIRACY_NOTICE_GRAPHICS: ;$D8F20D
	.INCBIN "bin/unknowns/D8F20D.bin"

WARNING_PALETTE: ;$D8F3BE
	.INCBIN "bin/unknowns/D8F3BE.bin"

FAULTY_GAME_PAK_ARRANGEMENT: ;$D8F3C6
	.INCBIN "bin/unknowns/D8F3C6.bin"

FAULTY_GAME_PAK_GRAPHICS: ;$D8F5C4
	.INCBIN "bin/unknowns/D8F5C4.bin"

AUDIO_PACK_61: ;$D8F6B7
	.INCBIN "bin/audiopacks/61.bin"
