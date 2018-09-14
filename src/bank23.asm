.SEGMENT "BANK23"
.ORG $E30000

AUDIO_PACK_3: ;$E30000
	.INCBIN "src/bin/audiopacks/3.bin"

AUDIO_PACK_70: ;$E35F64
	.INCBIN "src/bin/audiopacks/70.bin"

AUDIO_PACK_37: ;$E3B0FA
	.INCBIN "src/bin/audiopacks/37.bin"

AUDIO_PACK_32: ;$E3FDCC
	.INCBIN "src/bin/audiopacks/32.bin"
