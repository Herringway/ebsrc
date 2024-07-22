.SEGMENT "BANK08"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

LOCALEINCLUDE "text_data/E02TWSN0.ebtxt"

LOCALEINCLUDE "text_data/E10FOUR1.ebtxt"

LOCALEINCLUDE "text_data/ENEWS.ebtxt"

LOCALEINCLUDE "text_data/EBGMESS.ebtxt"

.SEGMENT "BANK08B"

LOCALEINCLUDE "text_data/EEVENT2.ebtxt"

LOCALEINCLUDE "text_data/E11SUMS.ebtxt"

.INCLUDE "data/text/compressed_text_data.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

LOCALEINCLUDE "text_data/E05THRK.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE6.ebtxt"
