.SEGMENT "BANK26"
.INCLUDE "common-usa.asm"

AUDIO_PACK_1: ;$E60000
	.INCBIN "bin/US/audiopacks/1.bin"

AUDIO_PACK_74: ;$E645D8
	.INCBIN "bin/US/audiopacks/74.bin"

AUDIO_PACK_76: ;$E68B9A
	.INCBIN "bin/US/audiopacks/76.bin"

AUDIO_PACK_47: ;$E6CF08
	.INCBIN "bin/US/audiopacks/47.bin"

AUDIO_PACK_73: ;$E6FF18
	.INCBIN "bin/US/audiopacks/73.bin"
