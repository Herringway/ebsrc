.SEGMENT "BANK25"
.ORG $E50000

AUDIO_PACK_50: ;$E50000
	.INCBIN "src/bin/audiopacks/50.bin"

AUDIO_PACK_92: ;$E54C4A
	.INCBIN "src/bin/audiopacks/92.bin"

AUDIO_PACK_56: ;$E5954E
	.INCBIN "src/bin/audiopacks/56.bin"

AUDIO_PACK_122: ;$E5DD32
	.INCBIN "src/bin/audiopacks/122.bin"

AUDIO_PACK_166: ;$E5FF38
	.INCBIN "src/bin/audiopacks/166.bin"
