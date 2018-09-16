.SEGMENT "BANK06"
.INCLUDE "common.asm"
.ORG $C60000

TEXT_DATA_BANK_2: ;$C60000
	.INCBIN "bin/text_data/1.bin"
