.SEGMENT "BANK2C"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"

INSERT_AUDIO_PACK 114
INSERT_AUDIO_PACK 109
INSERT_AUDIO_PACK 107
INSERT_AUDIO_PACK 98
.IF .DEFINED(JPN)
	INSERT_AUDIO_PACK 139
	INSERT_AUDIO_PACK 156
	INSERT_AUDIO_PACK 2
	INSERT_AUDIO_PACK 4
	INSERT_AUDIO_PACK 165
.ELSEIF .DEFINED(PROTOTYPE19950327)
	INSERT_AUDIO_PACK 4
	INSERT_AUDIO_PACK 58
	INSERT_AUDIO_PACK 133
	INSERT_AUDIO_PACK 97
	INSERT_AUDIO_PACK 55
	INSERT_AUDIO_PACK 106
	INSERT_AUDIO_PACK 123
	INSERT_AUDIO_PACK 25
	INSERT_AUDIO_PACK 15
	INSERT_AUDIO_PACK 157
	INSERT_AUDIO_PACK 159
.ELSE
	INSERT_AUDIO_PACK 165
	INSERT_AUDIO_PACK 62
	INSERT_AUDIO_PACK 58
	INSERT_AUDIO_PACK 133
	INSERT_AUDIO_PACK 97
	INSERT_AUDIO_PACK 55
	INSERT_AUDIO_PACK 106
	INSERT_AUDIO_PACK 25
	INSERT_AUDIO_PACK 15
	INSERT_AUDIO_PACK 157
.ENDIF