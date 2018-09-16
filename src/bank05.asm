.SEGMENT "BANK05"
.INCLUDE "common.asm"
.ORG $C50000

SRE_POINTER_TABLE: ;$C50000
	.INCBIN "bin/unknowns/C50000.bin"

TEXT_DATA_BANK_1: ;$C51B12
	.INCBIN "bin/text_data/0.bin"
