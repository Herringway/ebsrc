.SEGMENT "BANK2B"
.ORG $EB0000

AUDIO_PACK_44: ;$EB0000
	.INCBIN "src/bin/audiopacks/44.bin"

AUDIO_PACK_21: ;$EB29E8
	.INCBIN "src/bin/audiopacks/21.bin"

AUDIO_PACK_5: ;$EB520C
	.INCBIN "src/bin/audiopacks/5.bin"

AUDIO_PACK_40: ;$EB78D6
	.INCBIN "src/bin/audiopacks/40.bin"

AUDIO_PACK_33: ;$EB9F8E
	.INCBIN "src/bin/audiopacks/33.bin"

AUDIO_PACK_105: ;$EBC4E8
	.INCBIN "src/bin/audiopacks/105.bin"

AUDIO_PACK_154: ;$EBE9E4
	.INCBIN "src/bin/audiopacks/154.bin"

AUDIO_PACK_13: ;$EBFE22
	.INCBIN "src/bin/audiopacks/13.bin"
