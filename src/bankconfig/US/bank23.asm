.SEGMENT "BANK23"
.INCLUDE "common-usa.asm"

AUDIO_PACK_3: ;$E30000
	.INCBIN "bin/audiopacks/3.bin"

AUDIO_PACK_70: ;$E35F64
	.INCBIN "bin/audiopacks/70.bin"

AUDIO_PACK_37: ;$E3B0FA
	.INCBIN "bin/audiopacks/37.bin"

AUDIO_PACK_32: ;$E3FDCC
	.INCBIN "bin/audiopacks/32.bin"
