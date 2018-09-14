.SEGMENT "BANK28"
.ORG $E80000

AUDIO_PACK_84: ;$E80000
	.INCBIN "src/bin/audiopacks/84.bin"

AUDIO_PACK_60: ;$E84066
	.INCBIN "src/bin/audiopacks/60.bin"

AUDIO_PACK_153: ;$E87EA6
	.INCBIN "src/bin/audiopacks/153.bin"

AUDIO_PACK_124: ;$E8BC88
	.INCBIN "src/bin/audiopacks/124.bin"

AUDIO_PACK_46: ;$E8F872
	.INCBIN "src/bin/audiopacks/46.bin"

AUDIO_PACK_7: ;$E8FF1B
	.INCBIN "src/bin/audiopacks/7.bin"
