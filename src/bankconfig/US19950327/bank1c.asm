.SEGMENT "BANK1C"
.INCLUDE "common-usa19950327.asm"

MAP_DATA_TILE_ARRANGEMENT_12:;$DC0000
	.INCBIN "bin/US19950327/maps/arrangements/12.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_13:;$DC1FCA
	.INCBIN "bin/US19950327/maps/arrangements/13.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_14:;$DC593C
	.INCBIN "bin/US19950327/maps/arrangements/14.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_15:;$DC687B
	.INCBIN "bin/US19950327/maps/arrangements/15.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_18:;$DC72C0
	.INCBIN "bin/US19950327/maps/arrangements/18.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_19:;$DC8E4A
	.INCBIN "bin/US19950327/maps/arrangements/19.bin.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_14: ;$DCB023
	.INCBIN "bin/US19950327/maps/gfx/14.gfx.lzhal"

.INCLUDE "data/map/per-sector_music.asm"

AUDIO_PACK_156: ;$DCE037
	.INCBIN "bin/US19950327/audiopacks/156.bin"

AUDIO_PACK_79: ;$DCF8BF
	.INCBIN "bin/US19950327/audiopacks/79.bin"
