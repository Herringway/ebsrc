.SEGMENT "BANK08"
.INCLUDE "common.asm"

TEXT_DATA_BANK_4: ;$C80000
	.INCLUDE "bin/text_data/3.ebtxt"

COMPRESSED_TEXT_DATA: ;$C8BC2D
	.INCBIN "bin/unknowns/C8BC2D.bin"

COMPRESSED_TEXT_PTRS: ;$C8CDED
	.INCBIN "bin/unknowns/C8CDED.bin"

TEXT_DATA_BANK_5: ;$C8D9ED
	.INCLUDE "bin/text_data/4.ebtxt"
