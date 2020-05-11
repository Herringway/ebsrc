.SEGMENT "BANK0C"
.INCLUDE "common-usa.asm"

ANIMATIONDATA_CARPAINTER_LIGHTNING_REFLECT: ;$CC0000
	.INCBIN "bin/graphics/animations/lightning_reflect.bin"

ANIMATIONDATA_CARPAINTER_LIGHTNING_STRIKE: ;$CC17CB
	.INCBIN "bin/graphics/animations/lightning_strike.bin"

ANIMATIONDATA_STARMAN_JR_TELEPORT: ;$CC1F5C
	.INCBIN "bin/graphics/animations/starman_jr_teleport.bin"

ANIMATIONDATA_BOOM: ;$CC22D8
	.INCBIN "bin/graphics/animations/boom.bin"

ANIMATIONDATA_ZOMBIES: ;$CC2C89
	.INCBIN "bin/graphics/animations/zombies.bin"

ANIMATIONDATA_THE_END: ;$CC2CE1
	.INCBIN "bin/graphics/animations/the_end.bin"

.INCLUDE "data/animation_sequence_pointers.asm"

PSI_ARRANGEMENT_20: ;$CC2E19
	.INCBIN "bin/psianims/arrangements/20.bin"

PSI_ARRANGEMENT_31: ;$CC4057
	.INCBIN "bin/psianims/arrangements/31.bin"

PSI_ARRANGEMENT_19: ;$CC4D53
	.INCBIN "bin/psianims/arrangements/19.bin"

PSI_ARRANGEMENT_21: ;$CC597B
	.INCBIN "bin/psianims/arrangements/21.bin"

PSI_ARRANGEMENT_13: ;$CC6390
	.INCBIN "bin/psianims/arrangements/13.bin"

PSI_ARRANGEMENT_23: ;$CC6D77
	.INCBIN "bin/psianims/arrangements/23.bin"

PSI_ARRANGEMENT_18: ;$CC760B
	.INCBIN "bin/psianims/arrangements/18.bin"

PSI_ARRANGEMENT_8: ;$CC7E9E
	.INCBIN "bin/psianims/arrangements/8.bin"

PSI_ARRANGEMENT_30: ;$CC8629
	.INCBIN "bin/psianims/arrangements/30.bin"

PSI_ARRANGEMENT_29: ;$CC8D86
	.INCBIN "bin/psianims/arrangements/29.bin"

PSI_ARRANGEMENT_28: ;$CC94DF
	.INCBIN "bin/psianims/arrangements/28.bin"

PSI_ARRANGEMENT_25: ;$CC9B45
	.INCBIN "bin/psianims/arrangements/25.bin"

PSI_ARRANGEMENT_26: ;$CCA12C
	.INCBIN "bin/psianims/arrangements/26.bin"

PSI_ARRANGEMENT_9: ;$CCA6B9
	.INCBIN "bin/psianims/arrangements/9.bin"

PSI_ANIM_GFX_SET_1: ;$CCAC25
	.INCBIN "bin/psianims/gfx/0.bin"

PSI_ARRANGEMENT_5: ;$CCB12F
	.INCBIN "bin/psianims/arrangements/5.bin"

PSI_ANIM_GFX_SET_2: ;$CCB613
	.INCBIN "bin/psianims/gfx/1.bin"

PSI_ARRANGEMENT_3: ;$CCBAC7
	.INCBIN "bin/psianims/arrangements/3.bin"

PSI_ARRANGEMENT_7: ;$CCBF2D
	.INCBIN "bin/psianims/arrangements/7.bin"

PSI_ARRANGEMENT_0: ;$CCC32F
	.INCBIN "bin/psianims/arrangements/0.bin"

PSI_ARRANGEMENT_6: ;$CCC701
	.INCBIN "bin/psianims/arrangements/6.bin"

PSI_ARRANGEMENT_17: ;$CCCAAD
	.INCBIN "bin/psianims/arrangements/17.bin"

PSI_ARRANGEMENT_33: ;$CCCE57
	.INCBIN "bin/psianims/arrangements/33.bin"

PSI_ARRANGEMENT_22: ;$CCD1C7
	.INCBIN "bin/psianims/arrangements/22.bin"

PSI_ARRANGEMENT_12: ;$CCD4FB
	.INCBIN "bin/psianims/arrangements/12.bin"

PSI_ARRANGEMENT_2: ;$CCD820
	.INCBIN "bin/psianims/arrangements/2.bin"

PSI_ANIM_GFX_SET_3: ;$CCDB27
	.INCBIN "bin/psianims/gfx/2.bin"

PSI_ARRANGEMENT_1: ;$CCDDF9
	.INCBIN "bin/psianims/arrangements/1.bin"

PSI_ARRANGEMENT_24: ;$CCE0A1
	.INCBIN "bin/psianims/arrangements/24.bin"

PSI_ANIM_GFX_SET_4: ;$CCE31D
	.INCBIN "bin/psianims/gfx/3.bin"

PSI_ARRANGEMENT_16: ;$CCE56D
	.INCBIN "bin/psianims/arrangements/16.bin"

PSI_ARRANGEMENT_15: ;$CCE78B
	.INCBIN "bin/psianims/arrangements/15.bin"

PSI_ARRANGEMENT_11: ;$CCE96C
	.INCBIN "bin/psianims/arrangements/11.bin"

PSI_ARRANGEMENT_14: ;$CCEB3F
	.INCBIN "bin/psianims/arrangements/14.bin"

PSI_ARRANGEMENT_32: ;$CCED0E
	.INCBIN "bin/psianims/arrangements/32.bin"

PSI_ARRANGEMENT_27: ;$CCEEB4
	.INCBIN "bin/psianims/arrangements/27.bin"

.INCLUDE "data/psi_anim_cfg.asm"

PSI_ARRANGEMENT_4: ;$CCF1E5
	.INCBIN "bin/psianims/arrangements/4.bin"

PSI_ARRANGEMENT_10: ;$CCF358
	.INCBIN "bin/psianims/arrangements/10.bin"

PSI_ANIM_PALETTES: ;$CCF47F
	.INCBIN "bin/psianims/palettes/00.bin"
	.INCBIN "bin/psianims/palettes/01.bin"
	.INCBIN "bin/psianims/palettes/02.bin"
	.INCBIN "bin/psianims/palettes/03.bin"
	.INCBIN "bin/psianims/palettes/04.bin"
	.INCBIN "bin/psianims/palettes/05.bin"
	.INCBIN "bin/psianims/palettes/06.bin"
	.INCBIN "bin/psianims/palettes/07.bin"
	.INCBIN "bin/psianims/palettes/08.bin"
	.INCBIN "bin/psianims/palettes/09.bin"
	.INCBIN "bin/psianims/palettes/10.bin"
	.INCBIN "bin/psianims/palettes/11.bin"
	.INCBIN "bin/psianims/palettes/12.bin"
	.INCBIN "bin/psianims/palettes/13.bin"
	.INCBIN "bin/psianims/palettes/14.bin"
	.INCBIN "bin/psianims/palettes/15.bin"
	.INCBIN "bin/psianims/palettes/16.bin"
	.INCBIN "bin/psianims/palettes/17.bin"
	.INCBIN "bin/psianims/palettes/18.bin"
	.INCBIN "bin/psianims/palettes/19.bin"
	.INCBIN "bin/psianims/palettes/20.bin"
	.INCBIN "bin/psianims/palettes/21.bin"
	.INCBIN "bin/psianims/palettes/22.bin"
	.INCBIN "bin/psianims/palettes/23.bin"
	.INCBIN "bin/psianims/palettes/24.bin"
	.INCBIN "bin/psianims/palettes/25.bin"
	.INCBIN "bin/psianims/palettes/26.bin"
	.INCBIN "bin/psianims/palettes/27.bin"
	.INCBIN "bin/psianims/palettes/28.bin"
	.INCBIN "bin/psianims/palettes/29.bin"
	.INCBIN "bin/psianims/palettes/30.bin"
	.INCBIN "bin/psianims/palettes/31.bin"
	.INCBIN "bin/psianims/palettes/32.bin"
	.INCBIN "bin/psianims/palettes/33.bin"

.INCLUDE "data/psi_anim_pointers.asm"

AUDIO_PACK_71: ;$CCF617
	.INCBIN "bin/audiopacks/71.bin"

UNKNOWN_PTR_CCFFD5: ;$CCFFD5
	.DWORD $C80530
