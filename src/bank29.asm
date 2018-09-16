.SEGMENT "BANK29"
.INCLUDE "common.asm"
.ORG $E90000

AUDIO_PACK_27: ;$E90000
	.INCBIN "src/bin/audiopacks/27.bin"

AUDIO_PACK_80: ;$E93A74
	.INCBIN "src/bin/audiopacks/80.bin"

AUDIO_PACK_118: ;$E97356
	.INCBIN "src/bin/audiopacks/118.bin"

AUDIO_PACK_131: ;$E9AC26
	.INCBIN "src/bin/audiopacks/131.bin"

AUDIO_PACK_2: ;$E9E084
	.INCBIN "src/bin/audiopacks/2.bin"

AUDIO_PACK_149: ;$E9F8C8
	.INCBIN "src/bin/audiopacks/149.bin"
