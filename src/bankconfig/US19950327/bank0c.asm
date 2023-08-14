.SEGMENT "BANK0C"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

ANIMATIONDATA_CARPAINTER_LIGHTNING_REFLECT: ;$CC0000
	BINARY "graphics/animations/lightning_reflect.anim.lzhal"

ANIMATIONDATA_CARPAINTER_LIGHTNING_STRIKE: ;$CC17CB
	BINARY "graphics/animations/lightning_strike.anim.lzhal"

ANIMATIONDATA_STARMAN_JR_TELEPORT: ;$CC1F5C
	BINARY "graphics/animations/starman_jr_teleport.anim.lzhal"

ANIMATIONDATA_BOOM: ;$CC22D8
	BINARY "graphics/animations/boom.anim.lzhal"

ANIMATIONDATA_ZOMBIES: ;$CC2C89
	BINARY "graphics/animations/zombies.anim.lzhal"

ANIMATIONDATA_THE_END: ;$CC2CE1
	BINARY "graphics/animations/the_end.anim.lzhal"

.INCLUDE "data/animation_sequence_pointers.asm"

PSI_ARRANGEMENT_20: ;$CC2E19
	BINARY "psianims/arrangements/20.arr.lzhal"

PSI_ARRANGEMENT_31: ;$CC4057
	BINARY "psianims/arrangements/31.arr.lzhal"

PSI_ARRANGEMENT_19: ;$CC4D53
	BINARY "psianims/arrangements/19.arr.lzhal"

PSI_ARRANGEMENT_21: ;$CC597B
	BINARY "psianims/arrangements/21.arr.lzhal"

PSI_ARRANGEMENT_13: ;$CC6390
	BINARY "psianims/arrangements/13.arr.lzhal"

PSI_ARRANGEMENT_23: ;$CC6D77
	BINARY "psianims/arrangements/23.arr.lzhal"

PSI_ARRANGEMENT_18: ;$CC760B
	BINARY "psianims/arrangements/18.arr.lzhal"

PSI_ARRANGEMENT_8: ;$CC7E9E
	BINARY "psianims/arrangements/8.arr.lzhal"

PSI_ARRANGEMENT_30: ;$CC8629
	BINARY "psianims/arrangements/30.arr.lzhal"

PSI_ARRANGEMENT_29: ;$CC8D86
	BINARY "psianims/arrangements/29.arr.lzhal"

PSI_ARRANGEMENT_28: ;$CC94DF
	BINARY "psianims/arrangements/28.arr.lzhal"

PSI_ARRANGEMENT_25: ;$CC9B45
	BINARY "psianims/arrangements/25.arr.lzhal"

PSI_ARRANGEMENT_26: ;$CCA12C
	BINARY "psianims/arrangements/26.arr.lzhal"

PSI_ARRANGEMENT_9: ;$CCA6B9
	BINARY "psianims/arrangements/9.arr.lzhal"

PSI_ANIM_GFX_SET_1: ;$CCAC25
	BINARY "psianims/gfx/0.gfx.lzhal"

PSI_ARRANGEMENT_5: ;$CCB12F
	BINARY "psianims/arrangements/5.arr.lzhal"

PSI_ANIM_GFX_SET_2: ;$CCB613
	BINARY "psianims/gfx/1.gfx.lzhal"

PSI_ARRANGEMENT_3: ;$CCBAC7
	BINARY "psianims/arrangements/3.arr.lzhal"

PSI_ARRANGEMENT_7: ;$CCBF2D
	BINARY "psianims/arrangements/7.arr.lzhal"

PSI_ARRANGEMENT_0: ;$CCC32F
	BINARY "psianims/arrangements/0.arr.lzhal"

PSI_ARRANGEMENT_6: ;$CCC701
	BINARY "psianims/arrangements/6.arr.lzhal"

PSI_ARRANGEMENT_17: ;$CCCAAD
	BINARY "psianims/arrangements/17.arr.lzhal"

PSI_ARRANGEMENT_33: ;$CCCE57
	BINARY "psianims/arrangements/33.arr.lzhal"

PSI_ARRANGEMENT_22: ;$CCD1C7
	BINARY "psianims/arrangements/22.arr.lzhal"

PSI_ARRANGEMENT_12: ;$CCD4FB
	BINARY "psianims/arrangements/12.arr.lzhal"

PSI_ARRANGEMENT_2: ;$CCD820
	BINARY "psianims/arrangements/2.arr.lzhal"

PSI_ANIM_GFX_SET_3: ;$CCDB27
	BINARY "psianims/gfx/2.gfx.lzhal"

PSI_ARRANGEMENT_1: ;$CCDDF9
	BINARY "psianims/arrangements/1.arr.lzhal"

PSI_ARRANGEMENT_24: ;$CCE0A1
	BINARY "psianims/arrangements/24.arr.lzhal"

PSI_ANIM_GFX_SET_4: ;$CCE31D
	BINARY "psianims/gfx/3.gfx.lzhal"

PSI_ARRANGEMENT_16: ;$CCE56D
	BINARY "psianims/arrangements/16.arr.lzhal"

PSI_ARRANGEMENT_15: ;$CCE78B
	BINARY "psianims/arrangements/15.arr.lzhal"

PSI_ARRANGEMENT_11: ;$CCE96C
	BINARY "psianims/arrangements/11.arr.lzhal"

PSI_ARRANGEMENT_14: ;$CCEB3F
	BINARY "psianims/arrangements/14.arr.lzhal"

PSI_ARRANGEMENT_32: ;$CCED0E
	BINARY "psianims/arrangements/32.arr.lzhal"

PSI_ARRANGEMENT_27: ;$CCEEB4
	BINARY "psianims/arrangements/27.arr.lzhal"

.INCLUDE "data/psi_anim_cfg.asm"

PSI_ARRANGEMENT_4: ;$CCF1E5
	BINARY "psianims/arrangements/4.arr.lzhal"

PSI_ARRANGEMENT_10: ;$CCF358
	BINARY "psianims/arrangements/10.arr.lzhal"

PSI_ANIM_PALETTES: ;$CCF47F
	BINARY "psianims/palettes/00.pal"
	BINARY "psianims/palettes/01.pal"
	BINARY "psianims/palettes/02.pal"
	BINARY "psianims/palettes/03.pal"
	BINARY "psianims/palettes/04.pal"
	BINARY "psianims/palettes/05.pal"
	BINARY "psianims/palettes/06.pal"
	BINARY "psianims/palettes/07.pal"
	BINARY "psianims/palettes/08.pal"
	BINARY "psianims/palettes/09.pal"
	BINARY "psianims/palettes/10.pal"
	BINARY "psianims/palettes/11.pal"
	BINARY "psianims/palettes/12.pal"
	BINARY "psianims/palettes/13.pal"
	BINARY "psianims/palettes/14.pal"
	BINARY "psianims/palettes/15.pal"
	BINARY "psianims/palettes/16.pal"
	BINARY "psianims/palettes/17.pal"
	BINARY "psianims/palettes/18.pal"
	BINARY "psianims/palettes/19.pal"
	BINARY "psianims/palettes/20.pal"
	BINARY "psianims/palettes/21.pal"
	BINARY "psianims/palettes/22.pal"
	BINARY "psianims/palettes/23.pal"
	BINARY "psianims/palettes/24.pal"
	BINARY "psianims/palettes/25.pal"
	BINARY "psianims/palettes/26.pal"
	BINARY "psianims/palettes/27.pal"
	BINARY "psianims/palettes/28.pal"
	BINARY "psianims/palettes/29.pal"
	BINARY "psianims/palettes/30.pal"
	BINARY "psianims/palettes/31.pal"
	BINARY "psianims/palettes/32.pal"
	BINARY "psianims/palettes/33.pal"

.INCLUDE "data/psi_anim_pointers.asm"

AUDIO_PACK_141: ;$ED3A9C
	AUDIOPACK "audiopacks/141.ebm"
