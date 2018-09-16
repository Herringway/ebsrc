.SEGMENT "BANK07"
.INCLUDE "common.asm"
.ORG $C70000

TEXT_DATA_BANK_3: ;$C70000
	.INCBIN "bin/text_data/2.bin"
