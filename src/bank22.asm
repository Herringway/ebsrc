.SEGMENT "BANK22"
.ORG $E20000

AUDIO_PACK_108: ;$E20000
	.INCBIN "src/bin/audiopacks/108.bin"

AUDIO_PACK_0: ;$E277F0
	.INCBIN "src/bin/audiopacks/0.bin"

AUDIO_PACK_36: ;$E2ED2C
	.INCBIN "src/bin/audiopacks/36.bin"

AUDIO_PACK_18: ;$E2FC88
	.INCBIN "src/bin/audiopacks/18.bin"
