.SEGMENT "BANK24"
.ORG $E40000

AUDIO_PACK_64: ;$E40000
	.INCBIN "src/bin/audiopacks/64.bin"

AUDIO_PACK_42: ;$E4514A
	.INCBIN "src/bin/audiopacks/42.bin"

AUDIO_PACK_126: ;$E4A232
	.INCBIN "src/bin/audiopacks/126.bin"

AUDIO_PACK_125: ;$E4EED0
	.INCBIN "src/bin/audiopacks/125.bin"

AUDIO_PACK_155: ;$E4FD92
	.INCBIN "src/bin/audiopacks/155.bin"
