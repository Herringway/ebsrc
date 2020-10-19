.SEGMENT "BANK0C"
.INCLUDE "common-usa.asm"

ANIMATIONDATA_CARPAINTER_LIGHTNING_REFLECT: ;$CC0000
	BINARY "graphics/animations/lightning_reflect.bin"

ANIMATIONDATA_CARPAINTER_LIGHTNING_STRIKE: ;$CC17CB
	BINARY "graphics/animations/lightning_strike.bin"

ANIMATIONDATA_STARMAN_JR_TELEPORT: ;$CC1F5C
	BINARY "graphics/animations/starman_jr_teleport.bin"

ANIMATIONDATA_BOOM: ;$CC22D8
	BINARY "graphics/animations/boom.bin"

ANIMATIONDATA_ZOMBIES: ;$CC2C89
	BINARY "graphics/animations/zombies.bin"

ANIMATIONDATA_THE_END: ;$CC2CE1
	BINARY "graphics/animations/the_end.bin"

.INCLUDE "data/animation_sequence_pointers.asm"

PSI_ARRANGEMENT_20: ;$CC2E19
	BINARY "psianims/arrangements/20.bin"

PSI_ARRANGEMENT_31: ;$CC4057
	BINARY "psianims/arrangements/31.bin"

PSI_ARRANGEMENT_19: ;$CC4D53
	BINARY "psianims/arrangements/19.bin"

PSI_ARRANGEMENT_21: ;$CC597B
	BINARY "psianims/arrangements/21.bin"

PSI_ARRANGEMENT_13: ;$CC6390
	BINARY "psianims/arrangements/13.bin"

PSI_ARRANGEMENT_23: ;$CC6D77
	BINARY "psianims/arrangements/23.bin"

PSI_ARRANGEMENT_18: ;$CC760B
	BINARY "psianims/arrangements/18.bin"

PSI_ARRANGEMENT_8: ;$CC7E9E
	BINARY "psianims/arrangements/8.bin"

PSI_ARRANGEMENT_30: ;$CC8629
	BINARY "psianims/arrangements/30.bin"

PSI_ARRANGEMENT_29: ;$CC8D86
	BINARY "psianims/arrangements/29.bin"

PSI_ARRANGEMENT_28: ;$CC94DF
	BINARY "psianims/arrangements/28.bin"

PSI_ARRANGEMENT_25: ;$CC9B45
	BINARY "psianims/arrangements/25.bin"

PSI_ARRANGEMENT_26: ;$CCA12C
	BINARY "psianims/arrangements/26.bin"

PSI_ARRANGEMENT_9: ;$CCA6B9
	BINARY "psianims/arrangements/9.bin"

PSI_ANIM_GFX_SET_1: ;$CCAC25
	BINARY "psianims/gfx/0.bin"

PSI_ARRANGEMENT_5: ;$CCB12F
	BINARY "psianims/arrangements/5.bin"

PSI_ANIM_GFX_SET_2: ;$CCB613
	BINARY "psianims/gfx/1.bin"

PSI_ARRANGEMENT_3: ;$CCBAC7
	BINARY "psianims/arrangements/3.bin"

PSI_ARRANGEMENT_7: ;$CCBF2D
	BINARY "psianims/arrangements/7.bin"

PSI_ARRANGEMENT_0: ;$CCC32F
	BINARY "psianims/arrangements/0.bin"

PSI_ARRANGEMENT_6: ;$CCC701
	BINARY "psianims/arrangements/6.bin"

PSI_ARRANGEMENT_17: ;$CCCAAD
	BINARY "psianims/arrangements/17.bin"

PSI_ARRANGEMENT_33: ;$CCCE57
	BINARY "psianims/arrangements/33.bin"

PSI_ARRANGEMENT_22: ;$CCD1C7
	BINARY "psianims/arrangements/22.bin"

PSI_ARRANGEMENT_12: ;$CCD4FB
	BINARY "psianims/arrangements/12.bin"

PSI_ARRANGEMENT_2: ;$CCD820
	BINARY "psianims/arrangements/2.bin"

PSI_ANIM_GFX_SET_3: ;$CCDB27
	BINARY "psianims/gfx/2.bin"

PSI_ARRANGEMENT_1: ;$CCDDF9
	BINARY "psianims/arrangements/1.bin"

PSI_ARRANGEMENT_24: ;$CCE0A1
	BINARY "psianims/arrangements/24.bin"

PSI_ANIM_GFX_SET_4: ;$CCE31D
	BINARY "psianims/gfx/3.bin"

PSI_ARRANGEMENT_16: ;$CCE56D
	BINARY "psianims/arrangements/16.bin"

PSI_ARRANGEMENT_15: ;$CCE78B
	BINARY "psianims/arrangements/15.bin"

PSI_ARRANGEMENT_11: ;$CCE96C
	BINARY "psianims/arrangements/11.bin"

PSI_ARRANGEMENT_14: ;$CCEB3F
	BINARY "psianims/arrangements/14.bin"

PSI_ARRANGEMENT_32: ;$CCED0E
	BINARY "psianims/arrangements/32.bin"

PSI_ARRANGEMENT_27: ;$CCEEB4
	BINARY "psianims/arrangements/27.bin"

.INCLUDE "data/psi_anim_cfg.asm"

PSI_ARRANGEMENT_4: ;$CCF1E5
	BINARY "psianims/arrangements/4.bin"

PSI_ARRANGEMENT_10: ;$CCF358
	BINARY "psianims/arrangements/10.bin"

PSI_ANIM_PALETTES: ;$CCF47F
	BINARY "psianims/palettes/00.bin"
	BINARY "psianims/palettes/01.bin"
	BINARY "psianims/palettes/02.bin"
	BINARY "psianims/palettes/03.bin"
	BINARY "psianims/palettes/04.bin"
	BINARY "psianims/palettes/05.bin"
	BINARY "psianims/palettes/06.bin"
	BINARY "psianims/palettes/07.bin"
	BINARY "psianims/palettes/08.bin"
	BINARY "psianims/palettes/09.bin"
	BINARY "psianims/palettes/10.bin"
	BINARY "psianims/palettes/11.bin"
	BINARY "psianims/palettes/12.bin"
	BINARY "psianims/palettes/13.bin"
	BINARY "psianims/palettes/14.bin"
	BINARY "psianims/palettes/15.bin"
	BINARY "psianims/palettes/16.bin"
	BINARY "psianims/palettes/17.bin"
	BINARY "psianims/palettes/18.bin"
	BINARY "psianims/palettes/19.bin"
	BINARY "psianims/palettes/20.bin"
	BINARY "psianims/palettes/21.bin"
	BINARY "psianims/palettes/22.bin"
	BINARY "psianims/palettes/23.bin"
	BINARY "psianims/palettes/24.bin"
	BINARY "psianims/palettes/25.bin"
	BINARY "psianims/palettes/26.bin"
	BINARY "psianims/palettes/27.bin"
	BINARY "psianims/palettes/28.bin"
	BINARY "psianims/palettes/29.bin"
	BINARY "psianims/palettes/30.bin"
	BINARY "psianims/palettes/31.bin"
	BINARY "psianims/palettes/32.bin"
	BINARY "psianims/palettes/33.bin"

.INCLUDE "data/psi_anim_pointers.asm"

AUDIO_PACK_71: ;$CCF617
	AUDIOPACKBIN $9BE, $5800, "audiopacks/71.bin"
	AUDIOPACK 0
