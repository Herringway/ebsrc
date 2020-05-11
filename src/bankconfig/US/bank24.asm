.SEGMENT "BANK24"
.INCLUDE "common-usa.asm"

AUDIO_PACK_64: ;$E40000
	.INCBIN "bin/audiopacks/64.bin"

AUDIO_PACK_42: ;$E4514A
	.INCBIN "bin/audiopacks/42.bin"

AUDIO_PACK_126: ;$E4A232
	.INCBIN "bin/audiopacks/126.bin"

AUDIO_PACK_125: ;$E4EED0
	.INCBIN "bin/audiopacks/125.bin"

AUDIO_PACK_155: ;$E4FD92
	.INCBIN "bin/audiopacks/155.bin"
