.SEGMENT "BANK25"
.INCLUDE "common-usa.asm"

AUDIO_PACK_50: ;$E50000
	.INCBIN "bin/audiopacks/50.bin"

AUDIO_PACK_92: ;$E54C4A
	.INCBIN "bin/audiopacks/92.bin"

AUDIO_PACK_56: ;$E5954E
	.INCBIN "bin/audiopacks/56.bin"

AUDIO_PACK_122: ;$E5DD32
	.INCBIN "bin/audiopacks/122.bin"

AUDIO_PACK_166: ;$E5FF38
	.INCBIN "bin/audiopacks/166.bin"
