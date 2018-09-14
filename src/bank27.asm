.SEGMENT "BANK27"
.ORG $E70000

AUDIO_PACK_78: ;$E70000
	.INCBIN "src/bin/audiopacks/78.bin"

AUDIO_PACK_82: ;$E74314
	.INCBIN "src/bin/audiopacks/82.bin"

AUDIO_PACK_8: ;$E7849C
	.INCBIN "src/bin/audiopacks/8.bin"

AUDIO_PACK_24: ;$E7C5C8
	.INCBIN "src/bin/audiopacks/24.bin"
