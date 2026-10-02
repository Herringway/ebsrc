.SEGMENT "BANK05"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

LOCALEINCLUDE "text_data/ESHOP0.ebtxt"

LOCALEINCLUDE "text_data/EDEBUG.ebtxt"

LOCALEINCLUDE "text_data/E13SKRB.ebtxt"

LOCALEINCLUDE "text_data/E04GRFD.ebtxt"

.SEGMENT "BANK05B"

LOCALEINCLUDE "text_data/ESHOP1.ebtxt"

LOCALEINCLUDE "text_data/EEXPLGDS.ebtxt"

.INCLUDE "data/text/compressed_text_data-proto.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

LOCALEINCLUDE "text_data/EGOODS4.ebtxt"
